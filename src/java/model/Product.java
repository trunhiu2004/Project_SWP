/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ankha
 */
public class Product {
    private int productId;
    private int categoryId;
    private String barcode;
    private String productName;
    private int productPrice;
    private double productWeight;
    private int weightUnitId;
    private int supplierId;
    private String productImage;

    public Product() {
    }

    public Product(int productId, int categoryId, String barcode, String productName, int productPrice, double productWeight, int weightUnitId, int supplierId, String productImage) {
        this.productId = productId;
        this.categoryId = categoryId;
        this.barcode = barcode;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productWeight = productWeight;
        this.weightUnitId = weightUnitId;
        this.supplierId = supplierId;
        this.productImage = productImage;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(double productWeight) {
        this.productWeight = productWeight;
    }

    public int getWeightUnitId() {
        return weightUnitId;
    }

    public void setWeightUnitId(int weightUnitId) {
        this.weightUnitId = weightUnitId;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }
    
}
