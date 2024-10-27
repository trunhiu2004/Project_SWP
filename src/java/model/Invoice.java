/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pqtru
 */
public class Invoice {
    private int invoiceId;
    private String invoiceDate;
    private double totalAmount;
    private String status;
    private String employeeName;
    private String paymentMethodName;
    private String customerName;
    private int orderId;

    public Invoice() {
    }

    public Invoice(int invoiceId, String invoiceDate, double totalAmount, String status, String employeeName, String paymentMethodName, String customerName, int orderId) {
        this.invoiceId = invoiceId;
        this.invoiceDate = invoiceDate;
        this.totalAmount = totalAmount;
        this.status = status;
        this.employeeName = employeeName;
        this.paymentMethodName = paymentMethodName;
        this.customerName = customerName;
        this.orderId = orderId;
    }

    public int getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(int invoiceId) {
        this.invoiceId = invoiceId;
    }

    public String getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(String invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getPaymentMethodName() {
        return paymentMethodName;
    }

    public void setPaymentMethodName(String paymentMethodName) {
        this.paymentMethodName = paymentMethodName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
}
