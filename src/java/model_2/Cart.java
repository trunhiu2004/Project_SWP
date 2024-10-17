/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model_2;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author frien
 */
public class Cart {
    private List<CartItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public void addItem(CartItem item) {
        boolean exists = false;
        for (CartItem i : items) {
            if (i.getProduct().getId() == item.getProduct().getId()) {
                i.setQuantity(i.getQuantity() + item.getQuantity());
                exists = true;
                break;
            }
        }
        if (!exists) {
            items.add(item);
        }
    }

    public void updateItem(int productId, int quantityChange) {
        for (CartItem i : items) {
            if (i.getProduct().getId() == productId) {
                int newQuantity = i.getQuantity() + quantityChange;
                if (newQuantity <= 0) {
                    removeItem(productId);  // Xóa sản phẩm nếu số lượng <= 0
                } else {
                    i.setQuantity(newQuantity);  // Cập nhật số lượng
                }
                break;
            }
        }
    }

    public void removeItem(int productId) {
        items.removeIf(i -> i.getProduct().getId() == productId);
    }

    public List<CartItem> getItems() {
        return items;
    }

    public double getTotalPrice() {
        return items.stream().mapToDouble(CartItem::getTotalPrice).sum();
    }
}
