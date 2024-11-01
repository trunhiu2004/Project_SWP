/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pqtru
 */
public class CategorySummary {
    private String categoryName;
    private int totalCategoryQuantity;

    public CategorySummary(String categoryName, int totalCategoryQuantity) {
        this.categoryName = categoryName;
        this.totalCategoryQuantity = totalCategoryQuantity;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public int getTotalCategoryQuantity() {
        return totalCategoryQuantity;
    }
}
