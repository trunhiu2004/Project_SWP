package model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class ShiftDetail {

    private int shiftManagerId;
    private int orderId;
    private String productName;
    private String employeeName;
    private int quantity;
    private BigDecimal unitPrice;
    private BigDecimal totalPrice;
    private String productImage;
    private String customerName;
    private Timestamp orderDate;
    private Timestamp shiftStartTime;
    private Timestamp shiftEndTime;

    // Getters and Setters
    public int getShiftManagerId() {
        return shiftManagerId;
    }

    public void setShiftManagerId(int shiftManagerId) {
        this.shiftManagerId = shiftManagerId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public Timestamp getShiftStartTime() {
        return shiftStartTime;
    }

    public void setShiftStartTime(Timestamp shiftStartTime) {
        this.shiftStartTime = shiftStartTime;
    }

    public Timestamp getShiftEndTime() {
        return shiftEndTime;
    }

    public void setShiftEndTime(Timestamp shiftEndTime) {
        this.shiftEndTime = shiftEndTime;
    }

    // Helper methods for formatted output
    public String getFormattedShiftStartTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return shiftStartTime != null ? sdf.format(shiftStartTime) : "";
    }

    public String getFormattedShiftEndTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return shiftEndTime != null ? sdf.format(shiftEndTime) : "";
    }

    public String getFormattedOrderDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return orderDate != null ? sdf.format(orderDate) : "";
    }
}
