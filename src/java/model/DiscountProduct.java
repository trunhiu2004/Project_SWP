/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author frien
 */
public class DiscountProduct {
    private int discountPrductId;
    private int productId;
    private double priceSell;

    public DiscountProduct() {
    }

    public DiscountProduct(int productId, double priceSell) {
        this.productId = productId;
        this.priceSell = priceSell;
    }
    
    public DiscountProduct(int discountPrductId, int productId, double priceSell) {
        this.discountPrductId = discountPrductId;
        this.productId = productId;
        this.priceSell = priceSell;
    }

    public int getDiscountPrductId() {
        return discountPrductId;
    }

    public void setDiscountPrductId(int discountPrductId) {
        this.discountPrductId = discountPrductId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public double getPriceSell() {
        return priceSell;
    }

    public void setPriceSell(double priceSell) {
        this.priceSell = priceSell;
    }
    
    
    
    
    
}
