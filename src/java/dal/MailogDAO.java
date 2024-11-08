/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Mailog;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ankha
 */
public class MailogDAO extends DBContext {

    public List<Mailog> getAllMailLogs() {
        List<Mailog> maillogs = new ArrayList<>();
        String sql = "SELECT * FROM Mailog ORDER BY mail_sent_date DESC";

        try (PreparedStatement st = connection.prepareStatement(sql); ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                Mailog mailog = new Mailog(
                        rs.getInt("mailog_id"),
                        rs.getString("recipient_email"),
                        rs.getString("mail_subject"),
                        rs.getString("mail_content"),
                        rs.getTimestamp("mail_sent_date"),
                        rs.getString("status"),
                        rs.getString("error_message"),
                        rs.getInt("template_id")
                );
                maillogs.add(mailog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return maillogs;
    }

    public Mailog getMailLogById(int id) {
        String sql = "SELECT * FROM Mailog WHERE mailog_id = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return new Mailog(
                        rs.getInt("mailog_id"),
                        rs.getString("recipient_email"),
                        rs.getString("mail_subject"),
                        rs.getString("mail_content"),
                        rs.getTimestamp("mail_sent_date"),
                        rs.getString("status"),
                        rs.getString("error_message"),
                        rs.getInt("template_id")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addMailLog(String recipientEmail, String subject, String content, String status, String errorMessage, int templateId) {
        String sql = "INSERT INTO Mailog (recipient_email, mail_subject, mail_content, mail_sent_date, status, error_message, template_id) "
                + "VALUES (?, ?, ?, GETDATE(), ?, ?, ?)";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, recipientEmail);
            st.setString(2, subject);
            st.setString(3, content);
            st.setString(4, status);
            st.setString(5, errorMessage);
            st.setInt(6, templateId);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Mailog> getMailLogsWithFilter(
            String searchKeyword, String status, String startDate,
            String endDate, int page, int pageSize) {

        List<Mailog> maillogs = new ArrayList<>();
        List<Object> params = new ArrayList<>();

        StringBuilder sql = new StringBuilder(
                "SELECT * FROM Mailog WHERE 1=1"
        );

        if (searchKeyword != null && !searchKeyword.trim().isEmpty()) {
            sql.append(" AND recipient_email LIKE ?");
            params.add("%" + searchKeyword + "%");
        }

        if (status != null && !status.trim().isEmpty()) {
            sql.append(" AND status = ?");
            params.add(status);
        }

        if (startDate != null && !startDate.trim().isEmpty()) {
            sql.append(" AND CAST(mail_sent_date AS DATE) >= ?");
            params.add(startDate);
        }

        if (endDate != null && !endDate.trim().isEmpty()) {
            sql.append(" AND CAST(mail_sent_date AS DATE) <= ?");
            params.add(endDate);
        }

        sql.append(" ORDER BY mail_sent_date DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY");
        params.add((page - 1) * pageSize);
        params.add(pageSize);

        try (PreparedStatement st = connection.prepareStatement(sql.toString())) {
            for (int i = 0; i < params.size(); i++) {
                st.setObject(i + 1, params.get(i));
            }

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                maillogs.add(new Mailog(
                        rs.getInt("mailog_id"),
                        rs.getString("recipient_email"),
                        rs.getString("mail_subject"),
                        rs.getString("mail_content"),
                        rs.getTimestamp("mail_sent_date"),
                        rs.getString("status"),
                        rs.getString("error_message"),
                        rs.getInt("template_id")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return maillogs;
    }

    public int getTotalMailLogs(String searchKeyword, String status,
            String startDate, String endDate) {

        List<Object> params = new ArrayList<>();
        StringBuilder sql = new StringBuilder(
                "SELECT COUNT(*) FROM Mailog WHERE 1=1"
        );

        if (searchKeyword != null && !searchKeyword.trim().isEmpty()) {
            sql.append(" AND recipient_email LIKE ?");
            params.add("%" + searchKeyword + "%");
        }

        if (status != null && !status.trim().isEmpty()) {
            sql.append(" AND status = ?");
            params.add(status);
        }

        if (startDate != null && !startDate.trim().isEmpty()) {
            sql.append(" AND CAST(mail_sent_date AS DATE) >= ?");
            params.add(startDate);
        }

        if (endDate != null && !endDate.trim().isEmpty()) {
            sql.append(" AND CAST(mail_sent_date AS DATE) <= ?");
            params.add(endDate);
        }

        try (PreparedStatement st = connection.prepareStatement(sql.toString())) {
            for (int i = 0; i < params.size(); i++) {
                st.setObject(i + 1, params.get(i));
            }

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<String> getAllStatuses() {
        List<String> statuses = new ArrayList<>();
        String sql = "SELECT DISTINCT status FROM Mailog";

        try (PreparedStatement st = connection.prepareStatement(sql); ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                statuses.add(rs.getString("status"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statuses;
    }
}
