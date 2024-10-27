/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pqtru
 */
public class CategorySales {
    private String categoryName;
    private double categorySales;
    private int totalQuantitySold;
    private int totalOrders;

    

    public CategorySales() {
    }

    public CategorySales(String categoryName, double categorySales, int totalQuantitySold, int totalOrders) {
        this.categoryName = categoryName;
        this.categorySales = categorySales;
        this.totalQuantitySold = totalQuantitySold;
        this.totalOrders = totalOrders;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public double getCategorySales() {
        return categorySales;
    }

    public void setCategorySales(double categorySales) {
        this.categorySales = categorySales;
    }

    public int getTotalQuantitySold() {
        return totalQuantitySold;
    }

    public void setTotalQuantitySold(int totalQuantitySold) {
        this.totalQuantitySold = totalQuantitySold;
    }

    public int getTotalOrders() {
        return totalOrders;
    }

    public void setTotalOrders(int totalOrders) {
        this.totalOrders = totalOrders;
    }
    
    
}
