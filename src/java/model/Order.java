/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author ankha
 */
public class Order {

    private int orderId;
    private int customerId;
    private Date orderDate;
    private int orderTotalAmount;
    private String orderStatus;
    private int employeeId;
    private int customerCouponId;
    private int storeStockId;
    private String customerName;
    private String employeeName;
    private String couponCode;

    public Order() {
    }

    public Order(int orderId, int customerId, Date orderDate, int orderTotalAmount, String orderStatus, int employeeId, int customerCouponId, int storeStockId, String customerName, String employeeName, String couponCode) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.orderDate = orderDate;
        this.orderTotalAmount = orderTotalAmount;
        this.orderStatus = orderStatus;
        this.employeeId = employeeId;
        this.customerCouponId = customerCouponId;
        this.storeStockId = storeStockId;
        this.customerName = customerName;
        this.employeeName = employeeName;
        this.couponCode = couponCode;
    }

    
    
    // Getters and Setters
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getOrderTotalAmount() {
        return orderTotalAmount;
    }

    public void setOrderTotalAmount(int orderTotalAmount) {
        this.orderTotalAmount = orderTotalAmount;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public int getCustomerCouponId() {
        return customerCouponId;
    }

    public void setCustomerCouponId(int customerCouponId) {
        this.customerCouponId = customerCouponId;
    }

    public int getStoreStockId() {
        return storeStockId;
    }

    public void setStoreStockId(int storeStockId) {
        this.storeStockId = storeStockId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getCouponCode() {
        return couponCode;
    }

    public void setCouponCode(String couponCode) {
        this.couponCode = couponCode;
    }
}
