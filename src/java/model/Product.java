
package model;

import java.math.BigDecimal;

/**
 *
 * @author pqtru
 */
public class Product {
    private int product_Id;
    private int category_Id;
    private String barcode;
    private String product_name;
    private BigDecimal product_Price;
    private BigDecimal product_Weight;
    private int weight_Unit_Id;
    private int supplier_Id;
    private String product_image;

    public Product() {
    }

    public Product(int product_Id, int category_Id, String barcode, String product_name, BigDecimal product_Price, BigDecimal product_Weight, int weight_Unit_Id, int supplier_Id, String product_image) {
        this.product_Id = product_Id;
        this.category_Id = category_Id;
        this.barcode = barcode;
        this.product_name = product_name;
        this.product_Price = product_Price;
        this.product_Weight = product_Weight;
        this.weight_Unit_Id = weight_Unit_Id;
        this.supplier_Id = supplier_Id;
        this.product_image = product_image;
    }

    public int getProduct_Id() {
        return product_Id;
    }

    public void setProduct_Id(int product_Id) {
        this.product_Id = product_Id;
    }

    public int getCategory_Id() {
        return category_Id;
    }

    public void setCategory_Id(int category_Id) {
        this.category_Id = category_Id;
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

    public BigDecimal getProduct_Price() {
        return product_Price;
    }

    public void setProduct_Price(BigDecimal product_Price) {
        this.product_Price = product_Price;
    }

    public BigDecimal getProduct_Weight() {
        return product_Weight;
    }

    public void setProduct_Weight(BigDecimal product_Weight) {
        this.product_Weight = product_Weight;
    }

    public int getWeight_Unit_Id() {
        return weight_Unit_Id;
    }

    public void setWeight_Unit_Id(int weight_Unit_Id) {
        this.weight_Unit_Id = weight_Unit_Id;
    }

    public int getSupplier_Id() {
        return supplier_Id;
    }

    public void setSupplier_Id(int supplier_Id) {
        this.supplier_Id = supplier_Id;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_Image) {
        this.product_image = product_Image;
    }

    @Override
    public String toString() {
        return "Product{" + "product_Id=" + product_Id + ", category_Id=" + category_Id + ", barcode=" + barcode + ", product_name=" + product_name + ", product_Price=" + product_Price + ", product_Weight=" + product_Weight + ", weight_Unit_Id=" + weight_Unit_Id + ", supplier_Id=" + supplier_Id + ", product_Image=" + product_image + '}';
    }
    
    
    
}
