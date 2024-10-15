/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ankha
 */
public class PaymentMethod {
    private int paymentMethodId;
    private String paymentMethodName;
    private int status;

    public PaymentMethod() {
    }

    public PaymentMethod(int paymentMethodId, String paymentMethodName, int status) {
        this.paymentMethodId = paymentMethodId;
        this.paymentMethodName = paymentMethodName;
        this.status = status;
    }

    public int getPaymentMethodId() {
        return paymentMethodId;
    }

    public void setPaymentMethodId(int paymentMethodId) {
        this.paymentMethodId = paymentMethodId;
    }

    public String getPaymentMethodName() {
        return paymentMethodName;
    }

    public void setPaymentMethodName(String paymentMethodName) {
        this.paymentMethodName = paymentMethodName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    
}
