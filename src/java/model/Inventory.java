/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author PC
 */
public class Inventory {    
    private int id;
    private Products product;
    private int currentStock;
    private String inventoryStatus;
    private LocalDateTime lastRestockDate;
    private String alert; 

    public Inventory() {
    }

    public Inventory(int id, Products product, int currentStock, String inventoryStatus, LocalDateTime lastRestockDate, String alert) {
        this.id = id;
        this.product = product;
        this.currentStock = currentStock;
        this.inventoryStatus = inventoryStatus;
        this.lastRestockDate = lastRestockDate;
        this.alert = alert;
    }

    public Inventory(Products product, int currentStock, String inventoryStatus, LocalDateTime lastRestockDate, String alert) {
        this.product = product;
        this.currentStock = currentStock;
        this.inventoryStatus = inventoryStatus;
        this.lastRestockDate = lastRestockDate;
        this.alert = alert;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public int getCurrentStock() {
        return currentStock;
    }

    public void setCurrentStock(int currentStock) {
        this.currentStock = currentStock;
    }

    public String getInventoryStatus() {
        return inventoryStatus;
    }

    public void setInventoryStatus(String inventoryStatus) {
        this.inventoryStatus = inventoryStatus;
    }

    public LocalDateTime getLastRestockDate() {
        return lastRestockDate;
    }

    public void setLastRestockDate(LocalDateTime lastRestockDate) {
        this.lastRestockDate = lastRestockDate;
    }

    public String getAlert() {
        return alert;
    }

    public void setAlert(String alert) {
        this.alert = alert;
    }

    @Override
    public String toString() {
        return "Inventory{" + "id=" + id + ", product=" + product + ", currentStock=" + currentStock + ", inventoryStatus=" + inventoryStatus + ", lastRestockDate=" + lastRestockDate + ", alert=" + alert + '}';
    }
    
    
}
