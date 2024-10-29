/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;
import java.util.Date;

/**
 *
 * @author PC
 */
public class StoreStock {
    private int storeStockId;
    private Inventory inventory;
    private int stock;
    private LocalDate lastStockCheckDate;
    private DiscountProduct discount;
    private String alert;

    public StoreStock() {
    }

    public StoreStock(int storeStockId, Inventory inventory, int stock, LocalDate lastStockCheckDate, DiscountProduct discount, String alert) {
        this.storeStockId = storeStockId;
        this.inventory = inventory;
        this.stock = stock;
        this.lastStockCheckDate = lastStockCheckDate;
        this.discount = discount;
        this.alert = alert;
    }

    public StoreStock(Inventory inventory, int stock, LocalDate lastStockCheckDate, DiscountProduct discount, String alert) {
        this.inventory = inventory;
        this.stock = stock;
        this.lastStockCheckDate = lastStockCheckDate;
        this.discount = discount;
        this.alert = alert;
    }

    public int getStoreStockId() {
        return storeStockId;
    }

    public void setStoreStockId(int storeStockId) {
        this.storeStockId = storeStockId;
    }

    public Inventory getInventory() {
        return inventory;
    }

    public void setInventory(Inventory inventory) {
        this.inventory = inventory;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public LocalDate getLastStockCheckDate() {
        return lastStockCheckDate;
    }

    public void setLastStockCheckDate(LocalDate lastStockCheckDate) {
        this.lastStockCheckDate = lastStockCheckDate;
    }

    public DiscountProduct getDiscount() {
        return discount;
    }

    public void setDiscount(DiscountProduct discount) {
        this.discount = discount;
    }

    public String getAlert() {
        return alert;
    }

    public void setAlert(String alert) {
        this.alert = alert;
    }

    @Override
    public String toString() {
        return "StoreStock{" + "storeStockId=" + storeStockId + ", inventory=" + inventory + ", stock=" + stock + ", lastStockCheckDate=" + lastStockCheckDate + ", discount=" + discount + ", alert=" + alert + '}';
    }

    

    

    
 
}
