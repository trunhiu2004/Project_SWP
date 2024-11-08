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
                        rs.getString("shop_opening_hours"),
                        rs.getString("shop_logo")
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
                        rs.getString("shop_opening_hours"),
                        rs.getString("shop_logo")
                        );
            }
        } catch (SQLException e) {
            System.out.println("Error fetching employee: " + e.getMessage());
        }
        return shop;
    }
    
    public void updateShop(Shop shop) {
        String sql = "UPDATE ShopDetails SET shop_name = ?, shop_address = ?, shop_phone = ?,  shop_email = ?, shop_opening_hours = ?, shop_logo = ? WHERE shop_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, shop.getShopName());
            statement.setString(2, shop.getShopAddress());
            statement.setString(3, shop.getShopPhone());
            statement.setString(4, shop.getShopEmail());
            statement.setString(5, shop.getShopOpeningHours());
            statement.setString(6, shop.getShopLogo());
            statement.setInt(7, shop.getShopId());
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error updating employee: " + e.getMessage());
        }
    }
    
    public void deleteShop(String id){
        String sql = "delete from ShopDetails where shop_id = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        }catch(SQLException e){
            
        }
    }
    
    public void insertShop(String shopName, String shopPhone, String shopAddress, String shopEmail, String shopOpeningHours, String shopLogo){
        String sql = "insert into ShopDetails values(?, ?, ?, ?, ?, ?);";
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, shopName);
            statement.setString(2, shopPhone);
            statement.setString(3, shopAddress);
            statement.setString(4, shopEmail);
            statement.setString(5, shopOpeningHours);
            statement.setString(6, shopLogo);
            statement.executeUpdate();
            
        }catch(SQLException e){
            
        }
    }
    
    
   public List<Shop> searchShop(String txtSearch){
       List<Shop> list = new ArrayList<>();
       String sql = "select * from ShopDetails where shop_name like ?";
       try{
           PreparedStatement statement = connection.prepareStatement(sql);
           statement.setString(1, "%" + txtSearch + "%");
           ResultSet rs = statement.executeQuery();
           while(rs.next()){
               Shop shop = new Shop();
               shop.setShopId(rs.getInt("shop_id"));
               shop.setShopName(rs.getString("shop_name"));
               shop.setShopAddress(rs.getString("shop_address"));
               shop.setShopPhone(rs.getString("shop_phone"));
               shop.setShopEmail(rs.getString("shop_email"));
               shop.setShopOpeningHours(rs.getString("shop_opening_hours"));
               shop.setShopLogo(rs.getString("shop_logo"));

               list.add(shop);
           }
       }catch(SQLException e){
           
       }
       return list;
   }
    
   public int getTotalShopCount() {
        String sql = "SELECT COUNT(*) FROM ShopDetails";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return 0;
    }
   
   public List<Shop> getShopsByPage(int page, int recordsPerPage) {
        List<Shop> list = new ArrayList<>();
        String sql = "SELECT * FROM ShopDetails ORDER BY shop_id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            int offset = (page - 1) * recordsPerPage;
            statement.setInt(1, offset);
            statement.setInt(2, recordsPerPage);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Shop shop = new Shop(rs.getInt("shop_id"),
                        rs.getString("shop_name"),
                        rs.getString("shop_address"),
                        rs.getString("shop_phone"),
                        rs.getString("shop_email"),
                        rs.getString("shop_opening_hours"),
                        rs.getString("shop_logo"));
                list.add(shop);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

   
   
    public static void main(String[] args) {
        ShopDAO dao = new ShopDAO();
        int count = dao.getTotalShopCount();
        System.out.println(count);
    }
}
