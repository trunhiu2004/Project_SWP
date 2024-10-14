/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.time.LocalDateTime;
/**
 *
 * @author hungt
 */
public class HistoryPrice {
    private int historyId;
    private Products product;
    private float price;
    private float priceBefore;
    private LocalDateTime updatedAt;
    private String status;

    public HistoryPrice(int historyId, Products product, float price, float priceBefore, LocalDateTime updatedAt, String status) {
        this.historyId = historyId;
        this.product = product;
        this.price = price;
        this.priceBefore = priceBefore;
        this.updatedAt = updatedAt;
        this.status = status;
    }

    public HistoryPrice() {
    }

    public HistoryPrice(Products product, float price, float priceBefore, LocalDateTime updatedAt, String status) {
        this.product = product;
        this.price = price;
        this.priceBefore = priceBefore;
        this.updatedAt = updatedAt;
        this.status = status;
    }

    public int getHistoryId() {
        return historyId;
    }

    public void setHistoryId(int historyId) {
        this.historyId = historyId;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getPriceBefore() {
        return priceBefore;
    }

    public void setPriceBefore(float priceBefore) {
        this.priceBefore = priceBefore;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
   
    
  
}
