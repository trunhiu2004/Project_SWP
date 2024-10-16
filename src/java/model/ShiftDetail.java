/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 *
 * @author pqtru
 */
public class ShiftDetail {
    private int shiftManagerId;
    private LocalDateTime shiftStartTime;
    private LocalDateTime shiftEndTime;
    private BigDecimal totalHours;
    private int orderId;
    private int quantity;
    private BigDecimal orderTotalAmount;
    private BigDecimal unitPrice; 
    private BigDecimal totalPrice; 
    private int employeeId; 
    private String productName;

    public ShiftDetail() {
    }
    
    

    public ShiftDetail(int shiftManagerId, LocalDateTime shiftStartTime, LocalDateTime shiftEndTime, BigDecimal totalHours, int orderId, int quantity, BigDecimal orderTotalAmount, BigDecimal unitPrice, BigDecimal totalPrice, int employeeId, String productName) {
        this.shiftManagerId = shiftManagerId;
        this.shiftStartTime = shiftStartTime;
        this.shiftEndTime = shiftEndTime;
        this.totalHours = totalHours;
        this.orderId = orderId;
        this.quantity = quantity;
        this.orderTotalAmount = orderTotalAmount;
        this.unitPrice = unitPrice;
        this.totalPrice = totalPrice;
        this.employeeId = employeeId;
        this.productName = productName;
    }

    public int getShiftManagerId() {
        return shiftManagerId;
    }

    public void setShiftManagerId(int shiftManagerId) {
        this.shiftManagerId = shiftManagerId;
    }

    public LocalDateTime getShiftStartTime() {
        return shiftStartTime;
    }

    public void setShiftStartTime(LocalDateTime shiftStartTime) {
        this.shiftStartTime = shiftStartTime;
    }

    public LocalDateTime getShiftEndTime() {
        return shiftEndTime;
    }

    public void setShiftEndTime(LocalDateTime shiftEndTime) {
        this.shiftEndTime = shiftEndTime;
    }

    public BigDecimal getTotalHours() {
        return totalHours;
    }

    public void setTotalHours(BigDecimal totalHours) {
        this.totalHours = totalHours;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getOrderTotalAmount() {
        return orderTotalAmount;
    }

    public void setOrderTotalAmount(BigDecimal orderTotalAmount) {
        this.orderTotalAmount = orderTotalAmount;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    
    
    
    
}
