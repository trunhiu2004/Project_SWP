package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class SalesList {
    private int orderId;
    private String customerName;
    private LocalDateTime orderDate;
    private double orderTotalAmount;
    private String productName;
    private String productImage;
    private String orderStatus;
    private int quantity;
    private double unitPrice;
    private double totalPrice;

    public SalesList() {
    }

    public SalesList(int orderId, String customerName, LocalDateTime orderDate, double orderTotalAmount, String productName, String productImage, String orderStatus, int quantity, double unitPrice, double totalPrice) {
        this.orderId = orderId;
        this.customerName = customerName;
        this.orderDate = orderDate;
        this.orderTotalAmount = orderTotalAmount;
        this.productName = productName;
        this.productImage = productImage;
        this.orderStatus = orderStatus;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.totalPrice = totalPrice;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public double getOrderTotalAmount() {
        return orderTotalAmount;
    }

    public void setOrderTotalAmount(double orderTotalAmount) {
        this.orderTotalAmount = orderTotalAmount;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    

   
    public String getFormattedOrderDate() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        return orderDate != null ? orderDate.format(formatter) : "";
    }

    
    
    
    
}
