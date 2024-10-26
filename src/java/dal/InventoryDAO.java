/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import model.Inventory;
import model.InventoryDetails;
import model.ProductCategories;
import model.Products;
import model.Suppliers;
import model.WeightUnit;

/**
 *
 * @author PC
 */
public class InventoryDAO extends DBContext {

    public WeightUnit getWUById(int weight_unit_id) {
        String sql = "select * from Weight_unit where weight_unit_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, weight_unit_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                WeightUnit wu = new WeightUnit(rs.getInt("weight_unit_id"),
                        rs.getString("unit_name"));
                return wu;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Suppliers getSupById(int supplier_id) {
        String sql = "select * from Suppliers where supplier_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, supplier_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Suppliers sup = new Suppliers(
                        rs.getInt("supplier_id"),
                        rs.getString("supplier_name"),
                        rs.getString("supplier_address"),
                        rs.getString("supplier_phone"),
                        rs.getString("supplier_email"),
                        rs.getString("supplier_contact_person"),
                        rs.getString("image")
                );
                return sup;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ProductCategories getCategoryById(int category_id) {
        String sql = "select * from Product_Categories where category_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, category_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ProductCategories pc = new ProductCategories(rs.getInt("category_id"),
                        rs.getString("category_name"));
                return pc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Products> getAllProduct() {
        List<Products> list = new ArrayList<>();

        String sql = "SELECT [product_id]\n"
                + "      ,[category_id]\n"
                + "      ,[barcode]\n"
                + "      ,[product_name]\n"
                + "      ,[product_price]\n"
                + "      ,[weight_unit_id]\n"
                + "      ,[supplier_id]\n"
                + "      ,[product_image]\n"
                + "      ,[manufacture_date]\n"
                + "      ,[expiration_date]\n"
                + "  FROM [dbo].[Products]\n"
                + "  where 1=1\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("product_id"));
                p.setBarcode(rs.getString("barcode"));
                p.setName(rs.getString("product_name"));
                p.setPrice(rs.getFloat("product_price"));
                p.setImage(rs.getString("product_image"));
                ProductCategories pc = getCategoryById(rs.getInt("category_id"));
                p.setProductCategories(pc);
                WeightUnit wu = getWUById(rs.getInt("weight_unit_id"));
                p.setWeightUnit(wu);
                Suppliers sup = getSupById(rs.getInt("supplier_id"));
                p.setSuppliers(sup);
                p.setManufactureDate(rs.getDate("manufacture_date").toLocalDate());
                p.setExpirationDate(rs.getDate("expiration_date").toLocalDate());
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Inventory> getAllInventory() {
        List<Inventory> list = new ArrayList<>();
        ProductsDAO pd = new ProductsDAO();
        String sql = "SELECT [inventory_id]\n"
                + "      ,[product_id]\n"
                + "      ,[current_stock]\n"
                + "      ,[inventory_status]\n"
                + "      ,[last_restock_date]\n"
                + "      ,[alert]\n"
                + "  FROM [dbo].[Inventory]\n"
                + "  where 1=1\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
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
                list.add(in);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Inventory getInventoryByProductId(int product_id) {
        ProductsDAO pd = new ProductsDAO();
        String sql = "SELECT * FROM [dbo].[Inventory] WHERE product_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, product_id);
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

    public Inventory getInventoryById(int inventory_id) {
        ProductsDAO pd = new ProductsDAO();
        String sql = "SELECT * FROM [dbo].[Inventory] WHERE inventory_id = ? ";

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

    public void insertInven(Inventory i) {
        String sql = "INSERT INTO Inventory VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, i.getProduct().getId());
            st.setInt(2, i.getCurrentStock());
            st.setString(3, i.getInventoryStatus());
            st.setTimestamp(4, Timestamp.valueOf(i.getLastRestockDate()));
            st.setString(5, i.getAlert());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateInven(Inventory i) {
        String sql = "UPDATE [dbo].[Inventory]\n"
                + "   SET [product_id] = ?\n"
                + "      ,[current_stock] = ?\n"
                + "      ,[inventory_status] = ?\n"
                + "      ,[last_restock_date] = ?\n"
                + "      ,[alert] = ? \n"
                + " WHERE inventory_id = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, i.getProduct().getId());
            st.setInt(2, i.getCurrentStock());
            st.setString(3, i.getInventoryStatus());
            st.setTimestamp(4, Timestamp.valueOf(i.getLastRestockDate()));
            st.setString(5, i.getAlert());
            st.setInt(6, i.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<InventoryDetails> getAllLogInventory() {
        List<InventoryDetails> list = new ArrayList<>();
        InventoryDAO invenD = new InventoryDAO();

        String sql = "SELECT [inventory_detail_id]\n"
                + "      ,[inventory_id]\n"
                + "      ,[quantity]\n"
                + "      ,[date]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[InventoryDetails]"
                + "  where 1=1\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                InventoryDetails in = new InventoryDetails();
                in.setId(rs.getInt("inventory_detail_id"));
                Inventory inven = invenD.getInventoryById(rs.getInt("inventory_id"));
                in.setInventory(inven);
                in.setQuantity(rs.getInt("quantity"));
                in.setDate(rs.getDate("date").toLocalDate());
                in.setStatus(rs.getString("status"));
                list.add(in);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertInventoryDetails(InventoryDetails d) {
        String sql = "INSERT INTO InventoryDetails  VALUES (?, ?, ?, ?) ";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, d.getInventory().getId());  
            st.setInt(2, d.getQuantity());
            st.setDate(3, Date.valueOf(d.getDate()));  
            st.setString(4, d.getStatus());
            st.executeUpdate();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    public Inventory getInventoryLast() {
        String sql = "SELECT TOP 1 * FROM Inventory ORDER BY inventory_id DESC"; 
        ProductsDAO pd = new ProductsDAO();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Inventory inventory = new Inventory();
                inventory.setId(rs.getInt("inventory_id"));
                inventory.setProduct(pd.getProductById(rs.getInt("product_id"))); // Giả sử bạn có hàm này để lấy Product
                inventory.setCurrentStock(rs.getInt("current_stock"));
                inventory.setInventoryStatus(rs.getString("inventory_status"));
                inventory.setLastRestockDate(rs.getTimestamp("last_restock_date").toLocalDateTime());
                inventory.setAlert(rs.getString("alert"));
                return inventory;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        InventoryDAO c = new InventoryDAO();
        for (Inventory i : c.getAllInventory()) {
            System.out.println(i);
        }
    }

}
