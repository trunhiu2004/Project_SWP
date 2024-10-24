/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author PC
 */
public class InventoryDetails {
    private int id;
    private Inventory inventory;
    private int quantity;
    private LocalDate date;
    private String status;

    public InventoryDetails() {
    }

    public InventoryDetails(int id, Inventory inventory, int quantity, LocalDate date, String status) {
        this.id = id;
        this.inventory = inventory;
        this.quantity = quantity;
        this.date = date;
        this.status = status;
    }

    public InventoryDetails(Inventory inventory, int quantity, LocalDate date, String status) {
        this.inventory = inventory;
        this.quantity = quantity;
        this.date = date;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Inventory getInventory() {
        return inventory;
    }

    public void setInventory(Inventory inventory) {
        this.inventory = inventory;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
