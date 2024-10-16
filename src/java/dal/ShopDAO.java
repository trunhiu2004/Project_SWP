/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Shop;

/**
 *
 * @author pqtru
 */
public class ShopDAO extends DBContext{
    public List<Shop> getAll() {
        List<Shop> list = new ArrayList<>();
        String sql = "select * from ShopDetails";
        try {
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Shop shop = new Shop(rs.getInt("shop_id"), 
                        rs.getString("shop_name"), 
                        rs.getString("shop_address"),
                        rs.getString("shop_phone"), 
                        rs.getString("shop_email"), 
                        rs.getString("shop_opening_hours")
                        );
                list.add(shop);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching movies: " + e.getMessage());
        }
        return list;
    }
    
    public Shop getShopId(int shopId) {
        Shop shop = null;
        String sql = "SELECT * FROM ShopDetails WHERE shop_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, shopId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                shop = new Shop(rs.getInt("shop_id"), 
                        rs.getString("shop_name"), 
                        rs.getString("shop_address"),
                        rs.getString("shop_phone"), 
                        rs.getString("shop_email"), 
                        rs.getString("shop_opening_hours")
                        );
            }
        } catch (SQLException e) {
            System.out.println("Error fetching employee: " + e.getMessage());
        }
        return shop;
    }
    
    public void updateShop(Shop shop) {
        String sql = "UPDATE ShopDetails SET shop_name = ?, shop_address = ?, shop_phone = ?,  shop_email = ?, shop_opening_hours = ? WHERE shop_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, shop.getShopName());
            statement.setString(2, shop.getShopAddress());
            statement.setString(3, shop.getShopPhone());
            statement.setString(4, shop.getShopEmail());
            statement.setString(5, shop.getShopOpeningHours());
            statement.setInt(6, shop.getShopId());
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error updating employee: " + e.getMessage());
        }
    }
    
     public static void main(String[] args) {
        ShopDAO acc = new ShopDAO();
        List<Shop> list = acc.getAll();
        System.out.println(list.get(0).getShopEmail());
    }
}
