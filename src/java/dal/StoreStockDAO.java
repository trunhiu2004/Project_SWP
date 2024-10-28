/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.StoreStock;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.DiscountProduct;
import model.Inventory;
import model.Products;

/**
 *
 * @author PC
 */
public class StoreStockDAO extends DBContext {

    public Inventory getInventoryById(int inventory_id) {
        ProductsDAO pd = new ProductsDAO();
        String sql = "SELECT * FROM [dbo].[Inventory] WHERE inventory_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, inventory_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Inventory in = new Inventory();
                in.setId(rs.getInt("inventory_id"));

                Products p = pd.getProductById(rs.getInt("product_id"));
                in.setProduct(p);
                in.setCurrentStock(rs.getInt("current_stock"));
                in.setInventoryStatus(rs.getString("inventory_status"));
                in.setLastRestockDate(rs.getTimestamp("last_restock_date").toLocalDateTime());
                in.setAlert(rs.getString("alert"));

                return in;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public DiscountProduct getDiscountProductById(int discountProductId) {
        String sql = "SELECT * FROM DiscountProduct WHERE discount_product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, discountProductId);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                int productId = rs.getInt("product_id");
                double priceSell = rs.getDouble("price_sell");
                DiscountProduct dp = new DiscountProduct(discountProductId, productId, priceSell);
                return dp;
            }
        } catch (SQLException e) {
            System.out.println("Lỗi khi truy vấn StoreStock: " + e.getMessage());
        }
        return null;
    }

    public List<StoreStock> getAllStoreStock() {
        List<StoreStock> list = new ArrayList<>();
        String sql = "SELECT * FROM StoreStock";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                StoreStock stock = new StoreStock();
                stock.setStoreStockId(rs.getInt("store_stock_id"));
                Inventory inventory = getInventoryById(rs.getInt("inventory_id"));
                stock.setInventory(inventory);
                stock.setStock(rs.getInt("quantity_in_stock"));
                stock.setLastStockCheckDate(rs.getDate("last_stock_check_date"));
                DiscountProduct dp = getDiscountProductById(rs.getInt("discount_product_id"));
                stock.setDiscount(dp);
                stock.setAlert(rs.getString("alert"));
                list.add(stock);
            }
        } catch (SQLException e) {
            System.out.println("Lỗi khi truy vấn StoreStock: " + e.getMessage());
        }

        return list;
    }

    public void updateStore() {
        String sql = "UPDATE ss\n"
                + "SET ss.discount_product_id = dp.discount_product_id\n"
                + "FROM StoreStock ss\n"
                + "JOIN Inventory i ON ss.inventory_id = i.inventory_id\n"
                + "JOIN DiscountProduct dp ON i.product_id = dp.product_id\n"
                + "WHERE ss.discount_product_id IS NULL";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        StoreStockDAO c = new StoreStockDAO();
        List<StoreStock> list = c.getAllStoreStock();
        for (StoreStock storeStock : list) {
            System.out.println(storeStock);
        }
    }
    public StoreStock getStoreStockById(int storeStockId) {
    String sql = "SELECT * FROM StoreStock WHERE store_stock_id = ?";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        st.setInt(1, storeStockId);
        ResultSet rs = st.executeQuery();

        if(rs.next()) {
            StoreStock stock = new StoreStock();
            stock.setStoreStockId(rs.getInt("store_stock_id"));
            Inventory inventory = getInventoryById(rs.getInt("inventory_id"));
            stock.setInventory(inventory);
            stock.setStock(rs.getInt("quantity_in_stock"));
            stock.setLastStockCheckDate(rs.getDate("last_stock_check_date"));
            DiscountProduct dp = getDiscountProductById(rs.getInt("discount_product_id"));
            stock.setDiscount(dp);
            stock.setAlert(rs.getString("alert"));
            return stock;
        }
    } catch (SQLException e) {
        System.out.println("Lỗi khi truy vấn StoreStock: " + e.getMessage());
    }
    return null;
}

}
