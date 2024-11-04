/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import model.HistoryPrice;
import model.ProductCategories;
import model.Products;
import model.Products2;
import model.Suppliers;
import model.WeightUnit;

/**
 *
 * @author PC
 */
public class ProductsDAO extends DBContext {

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
                + "      ,[batch]\n"
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
                p.setBatch(rs.getInt("batch"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Products getProductById(int product_id) {
        String sql = "select * from Products where product_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, product_id);
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
                p.setBatch(rs.getInt("batch"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Products getProductByName(String product_name) {
        String sql = "select * from Products where product_name like ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, product_name);
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
                p.setBatch(rs.getInt("batch"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getLatestBatchByName(String name) {
        String query = "SELECT MAX(batch) FROM Products WHERE product_name = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 1;
    }

    public Products getLatestProduct() {
        String sql = "SELECT TOP 1 * FROM Products\n"
                + "ORDER BY product_id DESC;";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
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
                p.setBatch(rs.getInt("batch"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null; // Trả về null nếu không tìm thấy sản phẩm
    }

    public void insertPro(Products p) {
        String sql = "INSERT INTO Products VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getProductCategories().getId());
            st.setString(2, p.getBarcode());
            st.setString(3, p.getName());
            st.setFloat(4, p.getPrice());
            st.setInt(5, p.getWeightUnit().getId());
            st.setInt(6, p.getSuppliers().getId());
            st.setString(7, p.getImage());
            st.setDate(8, java.sql.Date.valueOf(p.getManufactureDate()));
            st.setDate(9, java.sql.Date.valueOf(p.getExpirationDate()));
            st.setInt(10, p.getBatch());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProduct(Products p) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [category_id] = ? \n"
                + "      ,[barcode] = ?\n"
                + "      ,[product_name] = ?\n"
                + "      ,[product_price] = ?\n"
                + "      ,[weight_unit_id] = ?\n"
                + "      ,[supplier_id] = ?\n"
                + "      ,[product_image] = ?\n"
                + "      ,[manufacture_date] = ?\n"
                + "      ,[expiration_date] = ?\n"
                + "      ,[batch] = ?\n"
                + " WHERE product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getProductCategories().getId());
            st.setString(2, p.getBarcode());
            st.setString(3, p.getName());
            st.setFloat(4, p.getPrice());
            st.setInt(5, p.getWeightUnit().getId());
            st.setInt(6, p.getSuppliers().getId());
            st.setString(7, p.getImage());
            st.setDate(8, java.sql.Date.valueOf(p.getManufactureDate()));
            st.setDate(9, java.sql.Date.valueOf(p.getExpirationDate()));
            st.setInt(10, p.getBatch());
            st.setInt(11, p.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteProduct(int id) {
        String sql = "delete from Products where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<HistoryPrice> getAllHistory() {
        List<HistoryPrice> list = new ArrayList<>();

        String sql = "SELECT [history_id]\n"
                + "      ,[product_id]\n"
                + "      ,[price]\n"
                + "      ,[price_before]\n"
                + "      ,[updated_at]\n"
                + "      ,[status]\n"
                + "  FROM [dbo].[HistoryPrice]"
                + "  where 1=1\n";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                HistoryPrice h = new HistoryPrice();
                h.setHistoryId(rs.getInt("history_id"));
                Products p = getProductById(rs.getInt("product_id"));
                h.setProduct(p);
                h.setPrice(rs.getFloat("price"));
                h.setPriceBefore(rs.getFloat("price_before"));
                h.setUpdatedAt(rs.getTimestamp("updated_at").toLocalDateTime());
                h.setStatus(rs.getString("status"));
                list.add(h);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<HistoryPrice> getHistoryById(int product_id) {
        List<HistoryPrice> list = new ArrayList<>();

        String sql = "select * from HistoryPrice where product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, product_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                HistoryPrice h = new HistoryPrice();
                h.setHistoryId(rs.getInt("history_id"));
                Products p = getProductById(rs.getInt("product_id"));
                h.setProduct(p);
                h.setPrice(rs.getFloat("price"));
                h.setPriceBefore(rs.getFloat("price_before"));
                h.setUpdatedAt(rs.getTimestamp("updated_at").toLocalDateTime());
                h.setStatus(rs.getString("status"));
                list.add(h);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertHisPrice(HistoryPrice h) {
        String sql = "INSERT INTO HistoryPrice VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, h.getProduct().getId());
            st.setFloat(2, h.getPrice());
            st.setFloat(3, h.getPriceBefore());
            st.setTimestamp(4, Timestamp.valueOf(h.getUpdatedAt()));
            st.setString(5, h.getStatus());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProductPrice(int productId, float newPrice) {
        String sql = "UPDATE Products SET product_price = ? WHERE product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setFloat(1, newPrice); // Set giá mới
            st.setInt(2, productId); // Set product_id
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteHis(int id) {
        String sql = "DELETE FROM HistoryPrice where history_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Products> getAllProductExpired() {
        List<Products> list = new ArrayList<>();

        String sql = "SELECT * \n"
                + "FROM Products \n"
                + "WHERE expiration_date > GETDATE() \n"
                + "     AND expiration_date <= DATEADD(day, 10, GETDATE())";
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
                p.setBatch(rs.getInt("batch"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Products> getProductNotInInventory() {
        List<Products> list = new ArrayList<>();
        String sql = "SELECT p.*\n"
                + "FROM Products p\n"
                + "WHERE NOT EXISTS (\n"
                + "    SELECT 1\n"
                + "    FROM Inventory i\n"
                + "    WHERE p.product_id = i.product_id\n"
                + ");";
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
                p.setBatch(rs.getInt("batch"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Products> getTopProductByMonth() {
        List<Products> top = new ArrayList<>();
        String sql = """
        WITH salesByMonth AS (
                SELECT 
                    MONTH(o.order_date) AS order_month,  -- Lấy tháng từ order_date
                    YEAR(o.order_date) AS order_year,     -- Lấy năm từ order_date
                    p.product_name,
                    p.product_image,
                    pc.category_name,
                    SUM(o.order_total_amount) AS total_sales,  -- Tổng tiền của đơn hàng từ bảng Orders
                    COUNT(DISTINCT o.order_id) AS total_order
                FROM 
                    Orders o
                LEFT JOIN 
                    OrdersDetails od ON o.order_id = od.order_id 
                LEFT JOIN 
                    Products p ON od.product_id = p.product_id 
                LEFT JOIN 
                    Product_Categories pc ON p.category_id = pc.category_id 
                LEFT JOIN 
                    Customers c ON o.customer_id = c.customer_id
                WHERE
                    YEAR(o.order_date) = 2024  -- Chỉ lấy dữ liệu cho năm 2024
                    AND o.order_status = 'COMPLETED'
                GROUP BY 
                    YEAR(o.order_date),   -- Nhóm theo năm
                    MONTH(o.order_date),  -- Nhóm theo tháng
                    p.product_name,
                    p.product_image,
                    pc.category_name
            )
            
            SELECT TOP 5  -- Lấy 5 sản phẩm bán chạy nhất
                product_name,
                product_image,
                category_name,
                SUM(total_order) AS total_sold
            FROM 
                salesByMonth
            GROUP BY 
                product_name,
                product_image,
                category_name
            ORDER BY 
                total_sold DESC;  -- Sắp xếp theo số lượng bán giảm dần
             
    """;

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String image = rs.getString("product_image");
                String name = rs.getString("product_name");
                String category = rs.getString("category_name");
                int totalSold = rs.getInt("total_sold");

                // Tạo đối tượng Products cho mỗi bản ghi
                Products product = new Products();
                product.setName(name);
                product.setImage(image);

                ProductCategories productCategory = new ProductCategories();
                productCategory.setName(category);
                product.setProductCategories(productCategory);

                // Bạn có thể sử dụng trường `totalSold` để lưu vào một trường phù hợp trong lớp Products
                top.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return top;
    }
    
    public List<Products> searchProductByName(String product_name) {
        String sql = "select * from Products where product_name like ?";
        List<Products> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%"+product_name+"%");
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
                p.setBatch(rs.getInt("batch"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Products> getTopProductDetail() {
        List<Products> top = new ArrayList<>();
        String sql = """
        WITH salesByMonth AS (
                SELECT 
                    MONTH(o.order_date) AS order_month,
                    YEAR(o.order_date) AS order_year,
                    p.product_name,
                    p.product_image,
                    pc.category_name,
                    SUM(o.order_total_amount) AS total_sales,
                    COUNT(DISTINCT o.order_id) AS total_order,
                    SUM(od.quantity) AS total_quantity  -- Tổng số lượng sản phẩm
                FROM 
                    Orders o
                LEFT JOIN 
                    OrdersDetails od ON o.order_id = od.order_id 
                LEFT JOIN 
                    Products p ON od.product_id = p.product_id 
                LEFT JOIN 
                    Product_Categories pc ON p.category_id = pc.category_id 
                LEFT JOIN 
                    Customers c ON o.customer_id = c.customer_id
                WHERE
                    YEAR(o.order_date) = 2024  -- Chỉ lấy dữ liệu cho năm 2024
                    AND o.order_status = 'COMPLETED'
                GROUP BY 
                    YEAR(o.order_date),
                    MONTH(o.order_date),
                    p.product_name,
                    p.product_image,
                    pc.category_name
            ),
            topProducts AS (
                SELECT TOP 5 
                    product_name,
                    product_image,
                    category_name,
                    SUM(total_order) AS total_sold
                FROM 
                    salesByMonth
                GROUP BY 
                    product_name,
                    product_image,
                    category_name
                ORDER BY 
                    total_sold DESC
            )
            SELECT 
                tp.product_name,
                tp.product_image,
                tp.category_name,
                SUM(o.order_total_amount) AS total_sales_amount,  -- Tổng số tiền từ các đơn hàng
                SUM(od.quantity) AS total_quantity  -- Tổng số lượng sản phẩm
            FROM 
                Orders o
            JOIN 
                OrdersDetails od ON o.order_id = od.order_id
            JOIN 
                Products p ON od.product_id = p.product_id
            JOIN 
                Product_Categories pc ON p.category_id = pc.category_id
            JOIN 
                topProducts tp ON p.product_name = tp.product_name  -- Kết nối với danh sách sản phẩm bán chạy
            GROUP BY 
                tp.product_name,
                tp.product_image,
                tp.category_name
            ORDER BY 
                total_sales_amount DESC;  -- Sắp xếp theo tổng số tiền bán hàng
             
    """;

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String image = rs.getString("product_image");
                String name = rs.getString("product_name");
                String category = rs.getString("category_name");
                int totalSold = rs.getInt("total_quantity");
                String totalSale = rs.getString("total_sales_amount");

                Products topProduct = new Products();
                topProduct.setName(name);
                topProduct.setImage(image);
                topProduct.setPrice(Float.parseFloat(totalSale));
                ProductCategories productCategory = new ProductCategories();
                productCategory.setName(category);
                topProduct.setProductCategories(productCategory);

                top.add(topProduct);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return top;
    }

    public static void main(String[] args) {
        ProductsDAO p = new ProductsDAO();
        for (Products arg : p.getAllProductExpired()) {
            System.out.println(arg);
        }
    }
}
