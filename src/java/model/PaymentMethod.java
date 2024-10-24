package model;

/**
 * Represents a payment method.
 * 
 * @author 
 */
public class PaymentMethod {
    private int paymentMethodId;
    private String paymentMethodName;
    private String status;

    public PaymentMethod() {
    }

    public PaymentMethod(int paymentMethodId, String paymentMethodName, String status) {
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
