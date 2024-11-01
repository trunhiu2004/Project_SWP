/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author ankha
 */
public class Cart {

    private List<CartItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<CartItem> getItems() {
        return items;
    }

    public int getQuantityById(int storeStockId) {
        return getItemById(storeStockId).getQuantity();
    }

    public CartItem getItemById(int storeStockId) {
        for (CartItem item : items) {
            if (item.getStoreStock().getStoreStockId() == storeStockId) {
                return item;
            }
        }
        return null;
    }

    public void addItem(CartItem newItem) {
        if (getItemById(newItem.getStoreStock().getStoreStockId()) != null) {
            CartItem oldItem = getItemById(newItem.getStoreStock().getStoreStockId());
            oldItem.setQuantity(oldItem.getQuantity() + newItem.getQuantity());
        } else {
            items.add(newItem);
        }
    }

//    public void removeItem(int storeStockId) {
//        items.removeIf(item -> item.getStoreStock().getStoreStockId() == storeStockId);
//    }
    public void removeItem(int storeStockId) {
        // Kiểm tra null
        if (items == null) {
            return;
        }

        // Sử dụng Iterator để tránh ConcurrentModificationException
        Iterator<CartItem> iterator = items.iterator();
        while (iterator.hasNext()) {
            CartItem item = iterator.next();
            if (item.getStoreStock().getStoreStockId() == storeStockId) {
                iterator.remove();
                break;
            }
        }
    }

    public void printCart() {
        System.out.println("Cart items: " + items.size());
        for (CartItem item : items) {
            System.out.println("StoreStockId: " + item.getStoreStock().getStoreStockId());
        }
    }

    public double getTotalMoney() {
        if (items == null || items.isEmpty()) {
            return 0;
        }
        return items.stream()
                .mapToDouble(item -> item.getQuantity() * item.getPrice())
                .sum();
    }

    public CartItem findItem(int storeStockId) {
        return items.stream()
                .filter(item -> item.getStoreStock().getStoreStockId() == storeStockId)
                .findFirst()
                .orElse(null);
    }
}
