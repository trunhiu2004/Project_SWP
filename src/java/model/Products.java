/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.time.LocalDate;
/**
 *
 * @author PC
 */
public class Products {

    private int id;
    private String name;
    private float price;
    private String image;
    private String barcode;
    private ProductCategories productCategories;
    private Suppliers suppliers;
    private WeightUnit weightUnit;
    private LocalDate manufactureDate;
    private LocalDate expirationDate;

    public Products() {
    }

    public Products(int id, String name, float price, String image, String barcode, ProductCategories productCategories, Suppliers suppliers, WeightUnit weightUnit, LocalDate manufactureDate, LocalDate expirationDate) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
        this.barcode = barcode;
        this.productCategories = productCategories;
        this.suppliers = suppliers;
        this.weightUnit = weightUnit;
        this.manufactureDate = manufactureDate;
        this.expirationDate = expirationDate;
    }

    public Products(String name, float price, String image, String barcode, ProductCategories productCategories, Suppliers suppliers, WeightUnit weightUnit, LocalDate manufactureDate, LocalDate expirationDate) {
        this.name = name;
        this.price = price;
        this.image = image;
        this.barcode = barcode;
        this.productCategories = productCategories;
        this.suppliers = suppliers;
        this.weightUnit = weightUnit;
        this.manufactureDate = manufactureDate;
        this.expirationDate = expirationDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public ProductCategories getProductCategories() {
        return productCategories;
    }

    public void setProductCategories(ProductCategories productCategories) {
        this.productCategories = productCategories;
    }

    public Suppliers getSuppliers() {
        return suppliers;
    }

    public void setSuppliers(Suppliers suppliers) {
        this.suppliers = suppliers;
    }

    public WeightUnit getWeightUnit() {
        return weightUnit;
    }

    public void setWeightUnit(WeightUnit weightUnit) {
        this.weightUnit = weightUnit;
    }

    public LocalDate getManufactureDate() {
        return manufactureDate;
    }

    public void setManufactureDate(LocalDate manufactureDate) {
        this.manufactureDate = manufactureDate;
    }

    public LocalDate getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(LocalDate expirationDate) {
        this.expirationDate = expirationDate;
    }

    @Override
    public String toString() {
        return "Products{" + "id=" + id + ", name=" + name + ", price=" + price + ", image=" + image + ", barcode=" + barcode + ", productCategories=" + productCategories + ", suppliers=" + suppliers + ", weightUnit=" + weightUnit + ", manufactureDate=" + manufactureDate + ", expirationDate=" + expirationDate + '}';
    }
    
    

    
}
