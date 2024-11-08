/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author ankha
 */
public class TokenManager {

    private static final TokenManager INSTANCE = new TokenManager();
    private final Map<String, TokenInfo> tokens = new ConcurrentHashMap<>();
    private final ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
    private static final int MAX_TOKENS = 1000; // Giới hạn số lượng token

    private TokenManager() {
        // Chạy tác vụ xóa token hết hạn mỗi giờ
        scheduler.scheduleAtFixedRate(this::removeExpiredTokens, 1, 1, TimeUnit.HOURS);
    }

    public static TokenManager getInstance() {
        return INSTANCE;
    }

    public void addToken(String email, String token) {
        long expirationTime = System.currentTimeMillis() + (24 * 60 * 60 * 1000); // 24 hours
        if (tokens.size() >= MAX_TOKENS) {
            removeOldestToken();
        }
        tokens.put(token, new TokenInfo(email, expirationTime));
    }

    public boolean isTokenValid(String token) {
        TokenInfo info = tokens.get(token);
        if (info == null) {
            return false;
        }
        if (System.currentTimeMillis() > info.expirationTime) {
            tokens.remove(token);
            return false;
        }
        return true;
    }

    public String getEmailFromToken(String token) {
        TokenInfo info = tokens.get(token);
        return info != null ? info.email : null;
    }

    public void removeToken(String token) {
        tokens.remove(token);
    }

    private void removeExpiredTokens() {
        long now = System.currentTimeMillis();
        tokens.entrySet().removeIf(entry -> now > entry.getValue().expirationTime);
    }

    private void removeOldestToken() {
        if (!tokens.isEmpty()) {
            String oldestToken = tokens.entrySet().stream()
                    .min(Map.Entry.comparingByValue((a, b) -> Long.compare(a.expirationTime, b.expirationTime)))
                    .map(Map.Entry::getKey)
                    .orElse(null);
            if (oldestToken != null) {
                tokens.remove(oldestToken);
            }
        }
    }

    // Phương thức để dừng scheduler khi ứng dụng kết thúc
    public void shutdown() {
        scheduler.shutdown();
    }

    private static class TokenInfo {

        String email;
        long expirationTime;

        TokenInfo(String email, long expirationTime) {
            this.email = email;
            this.expirationTime = expirationTime;
        }
    }
}
