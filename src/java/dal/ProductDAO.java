/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author pqtru
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt("product_Id"),
                        rs.getInt("category_Id"),
                        rs.getString("barcode"),
                        rs.getString("product_name"),
                        rs.getBigDecimal("product_Price"),
                        rs.getBigDecimal("product_Weight"),
                        rs.getInt("weight_Unit_Id"),
                        rs.getInt("supplier_Id"),
                        rs.getString("product_Image"));
                list.add(product);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching movies: " + e.getMessage());
        }
        return list;
    }

    public List<Product> searchByName(String txtSearch) {
    List<Product> list = new ArrayList<>();
    String sql = "select * from Products where product_name like ?";
    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        
        statement.setString(1, "%" + txtSearch + "%");
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            Product product = new Product(rs.getInt("product_Id"),
                    rs.getInt("category_Id"),
                    rs.getString("barcode"),
                    rs.getString("product_name"),
                    rs.getBigDecimal("product_Price"),
                    rs.getBigDecimal("product_Weight"),
                    rs.getInt("weight_Unit_Id"),
                    rs.getInt("supplier_Id"),
                    rs.getString("product_Image"));
            list.add(product);
        }
    } catch (SQLException e) {
        System.out.println("Error fetching products: " + e.getMessage());
    }
    return list;
}


    public static void main(String[] args) {
        ProductDAO acc = new ProductDAO();
        List<Product> list = acc.getAll();
        System.out.println(list.get(0).getProduct_name());
    }
}
