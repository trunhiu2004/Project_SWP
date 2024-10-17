/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author frien
 */
public class Products2 {

    private int product_id;
    private int category_id;
    private String barcode;
    private String product_name;
    private double product_price;
    private int weight_unit_id;
    private int supplier_id;
    private String product_image;
    private Date manufacture_date;
    private Date expiration_date;
    private int batch;

    public Products2() {
    }

    public Products2(int product_id, int category_id, String barcode, String product_name, double product_price, int weight_unit_id, int supplier_id, String product_image, Date manufacture_date, Date expiration_date, int batch) {
        this.product_id = product_id;
        this.category_id = category_id;
        this.barcode = barcode;
        this.product_name = product_name;
        this.product_price = product_price;
        this.weight_unit_id = weight_unit_id;
        this.supplier_id = supplier_id;
        this.product_image = product_image;
        this.manufacture_date = manufacture_date;
        this.expiration_date = expiration_date;
        this.batch = batch;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public double getProduct_price() {
        return product_price;
    }

    public void setProduct_price(double product_price) {
        this.product_price = product_price;
    }

    public int getWeight_unit_id() {
        return weight_unit_id;
    }

    public void setWeight_unit_id(int weight_unit_id) {
        this.weight_unit_id = weight_unit_id;
    }

    public int getSupplier_id() {
        return supplier_id;
    }

    public void setSupplier_id(int supplier_id) {
        this.supplier_id = supplier_id;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    public Date getManufacture_date() {
        return manufacture_date;
    }

    public void setManufacture_date(Date manufacture_date) {
        this.manufacture_date = manufacture_date;
    }

    public Date getExpiration_date() {
        return expiration_date;
    }

    public void setExpiration_date(Date expiration_date) {
        this.expiration_date = expiration_date;
    }

    public int getBatch() {
        return batch;
    }

    public void setBatch(int batch) {
        this.batch = batch;
    }
    
    @Override
    public String toString() {
        return "Products2{" + "product_id=" + product_id + ", category_id=" + category_id + ", barcode=" + barcode + ", product_name=" + product_name + ", product_price=" + product_price + ", weight_unit_id=" + weight_unit_id + ", supplier_id=" + supplier_id + ", product_image=" + product_image + ", manufacture_date=" + manufacture_date + ", expiration_date=" + expiration_date + '}';
    }

}
