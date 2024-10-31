/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pqtru
 */
public class TopSellingProduct {
    private String productName;
    private String productImage;
    private String categoryName;
    private int totalQuantitySold;
    private double productSales;
    private int totalOrders;

    public TopSellingProduct() {
    }

    public TopSellingProduct(String productName, String productImage, String categoryName, int totalQuantitySold, double productSales, int totalOrders) {
        this.productName = productName;
        this.productImage = productImage;
        this.categoryName = categoryName;
        this.totalQuantitySold = totalQuantitySold;
        this.productSales = productSales;
        this.totalOrders = totalOrders;
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

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getTotalQuantitySold() {
        return totalQuantitySold;
    }

    public void setTotalQuantitySold(int totalQuantitySold) {
        this.totalQuantitySold = totalQuantitySold;
    }

    public double getProductSales() {
        return productSales;
    }

    public void setProductSales(double productSales) {
        this.productSales = productSales;
    }

    public int getTotalOrders() {
        return totalOrders;
    }

    public void setTotalOrders(int totalOrders) {
        this.totalOrders = totalOrders;
    }

    
}
