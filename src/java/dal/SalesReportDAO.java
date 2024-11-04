/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author pqtru
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.CategorySales;
import model.ProductSales;
import model.SalesReport;
import model.TopSellingProduct;

public class SalesReportDAO extends DBContext {

    // Doanh Thu Theo Năm
    public List<SalesReport> getAnnualSales() {
        List<SalesReport> reports = new ArrayList<>();
        String sql = "SELECT YEAR(o.order_date) AS order_year, SUM(o.order_total_amount) AS total_sales, COUNT(DISTINCT o.order_id) AS total_orders "
                   + "FROM Orders o "
                   + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' "
                   + "GROUP BY YEAR(o.order_date)";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SalesReport report = new SalesReport();
                report.setYear(rs.getInt("order_year"));
                report.setTotalSales(rs.getDouble("total_sales"));
                report.setTotalOrders(rs.getInt("total_orders"));
                reports.add(report);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching annual sales report: " + e.getMessage());
        }
        return reports;
    }

    // Doanh Thu Theo Sản Phẩm
    public List<ProductSales> getProductSales() {
        List<ProductSales> sales = new ArrayList<>();
        String sql = "SELECT p.product_name, p.product_image, SUM(od.quantity * od.unit_price) AS product_sales, "
                   + "SUM(od.quantity) AS total_quantity_sold, COUNT(DISTINCT o.order_id) AS total_orders "
                   + "FROM Orders o "
                   + "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id "
                   + "LEFT JOIN Products p ON od.product_id = p.product_id "
                   + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' "
                   + "GROUP BY p.product_name, p.product_image "
                   + "ORDER BY product_sales DESC";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ProductSales productSales = new ProductSales();
                productSales.setProductName(rs.getString("product_name"));
                productSales.setProductImage(rs.getString("product_image"));
                productSales.setProductSales(rs.getDouble("product_sales"));
                productSales.setTotalQuantitySold(rs.getInt("total_quantity_sold"));
                productSales.setTotalOrders(rs.getInt("total_orders"));
                sales.add(productSales);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching product sales report: " + e.getMessage());
        }
        return sales;
    }
    
    public List<ProductSales> searchProductSales(String search) {
    List<ProductSales> sales = new ArrayList<>();
    String sql = "SELECT p.product_name, p.product_image, SUM(od.quantity * od.unit_price) AS product_sales, "
               + "SUM(od.quantity) AS total_quantity_sold, COUNT(DISTINCT o.order_id) AS total_orders "
               + "FROM Orders o "
               + "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id "
               + "LEFT JOIN Products p ON od.product_id = p.product_id "
               + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' "
               + "AND (p.product_name LIKE ? OR p.product_image LIKE ?) " // Thêm điều kiện tìm kiếm
               + "GROUP BY p.product_name, p.product_image "
               + "ORDER BY product_sales DESC";

    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        // Thiết lập tham số tìm kiếm
        String searchPattern = "%" + search + "%";
        statement.setString(1, searchPattern); // Tìm kiếm theo tên sản phẩm
        statement.setString(2, searchPattern); // Tìm kiếm theo hình ảnh sản phẩm
        
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            ProductSales productSales = new ProductSales();
            productSales.setProductName(rs.getString("product_name"));
            productSales.setProductImage(rs.getString("product_image"));
            productSales.setProductSales(rs.getDouble("product_sales"));
            productSales.setTotalQuantitySold(rs.getInt("total_quantity_sold"));
            productSales.setTotalOrders(rs.getInt("total_orders"));
            sales.add(productSales);
        }
    } catch (SQLException e) {
        System.out.println("Error fetching product sales report: " + e.getMessage());
    }
    return sales;
}


    // Doanh Thu Theo Danh Mục Sản Phẩm
    public List<CategorySales> getCategorySales() {
        List<CategorySales> sales = new ArrayList<>();
        String sql = "SELECT pc.category_name, SUM(od.quantity * od.unit_price) AS category_sales, "
                   + "SUM(od.quantity) AS total_quantity_sold, COUNT(DISTINCT o.order_id) AS total_orders "
                   + "FROM Orders o "
                   + "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id "
                   + "LEFT JOIN Products p ON od.product_id = p.product_id "
                   + "LEFT JOIN Product_Categories pc ON p.category_id = pc.category_id "
                   + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' "
                   + "GROUP BY pc.category_name "
                   + "ORDER BY category_sales DESC";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CategorySales categorySales = new CategorySales();
                categorySales.setCategoryName(rs.getString("category_name"));
                categorySales.setCategorySales(rs.getDouble("category_sales"));
                categorySales.setTotalQuantitySold(rs.getInt("total_quantity_sold"));
                categorySales.setTotalOrders(rs.getInt("total_orders"));
                sales.add(categorySales);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching category sales report: " + e.getMessage());
        }
        return sales;
    }
    
    
    public List<CategorySales> searchCategorySales(String search) {
    List<CategorySales> sales = new ArrayList<>();
    String sql = "SELECT pc.category_name, SUM(od.quantity * od.unit_price) AS category_sales, "
               + "SUM(od.quantity) AS total_quantity_sold, COUNT(DISTINCT o.order_id) AS total_orders "
               + "FROM Orders o "
               + "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id "
               + "LEFT JOIN Products p ON od.product_id = p.product_id "
               + "LEFT JOIN Product_Categories pc ON p.category_id = pc.category_id "
               + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' ";

    if (search != null && !search.isEmpty()) {
        sql += " AND pc.category_name LIKE ?"; // Thêm điều kiện tìm kiếm
    }
    
    sql += " GROUP BY pc.category_name "
         + " ORDER BY category_sales DESC";

    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        
        if (search != null && !search.isEmpty()) {
            statement.setString(1, "%" + search + "%"); // Sử dụng vị trí 1 cho wildcard search
        }
        
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            CategorySales categorySales = new CategorySales();
            categorySales.setCategoryName(rs.getString("category_name"));
            categorySales.setCategorySales(rs.getDouble("category_sales"));
            categorySales.setTotalQuantitySold(rs.getInt("total_quantity_sold"));
            categorySales.setTotalOrders(rs.getInt("total_orders"));
            sales.add(categorySales);
        }
    } catch (SQLException e) {
        System.out.println("Error searching category sales: " + e.getMessage());
    }
    return sales;
}

    
    


    // Các Sản Phẩm Bán Chạy Nhất
    public List<TopSellingProduct> getTopSellingProducts() {
        List<TopSellingProduct> products = new ArrayList<>();
        String sql = "SELECT TOP 5 p.product_name, p.product_image, pc.category_name, "
                   + "SUM(od.quantity) AS total_quantity_sold, SUM(od.quantity * od.unit_price) AS product_sales, "
                   + "COUNT(DISTINCT o.order_id) AS total_orders "
                   + "FROM Orders o "
                   + "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id "
                   + "LEFT JOIN Products p ON od.product_id = p.product_id "
                   + "LEFT JOIN Product_Categories pc ON p.category_id = pc.category_id "
                   + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' "
                   + "GROUP BY p.product_name, p.product_image, pc.category_name "
                   + "ORDER BY total_quantity_sold DESC";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                TopSellingProduct topProduct = new TopSellingProduct();
                topProduct.setProductName(rs.getString("product_name"));
                topProduct.setProductImage(rs.getString("product_image"));
                topProduct.setCategoryName(rs.getString("category_name"));
                topProduct.setTotalQuantitySold(rs.getInt("total_quantity_sold"));
                topProduct.setProductSales(rs.getDouble("product_sales"));
                topProduct.setTotalOrders(rs.getInt("total_orders"));
                products.add(topProduct);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching top selling products: " + e.getMessage());
        }
        return products;
    }
    
    public List<TopSellingProduct> searchTopSellingProducts(String search) {
    List<TopSellingProduct> products = new ArrayList<>();
    String sql = "SELECT TOP 5 p.product_name, p.product_image, pc.category_name, "
               + "SUM(od.quantity) AS total_quantity_sold, SUM(od.quantity * od.unit_price) AS product_sales, "
               + "COUNT(DISTINCT o.order_id) AS total_orders "
               + "FROM Orders o "
               + "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id "
               + "LEFT JOIN Products p ON od.product_id = p.product_id "
               + "LEFT JOIN Product_Categories pc ON p.category_id = pc.category_id "
               + "WHERE YEAR(o.order_date) = 2024 AND o.order_status = 'COMPLETED' ";

   
    if (search != null && !search.isEmpty()) {
        sql += " AND p.product_name LIKE ?"; 
    }
    
    sql += " GROUP BY p.product_name, p.product_image, pc.category_name "
         + " ORDER BY total_quantity_sold DESC";

    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        
        
        if (search != null && !search.isEmpty()) {
            statement.setString(1, "%" + search + "%"); 
        }
        
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            TopSellingProduct topProduct = new TopSellingProduct();
            topProduct.setProductName(rs.getString("product_name"));
            topProduct.setProductImage(rs.getString("product_image"));
            topProduct.setCategoryName(rs.getString("category_name"));
            topProduct.setTotalQuantitySold(rs.getInt("total_quantity_sold"));
            topProduct.setProductSales(rs.getDouble("product_sales"));
            topProduct.setTotalOrders(rs.getInt("total_orders"));
            products.add(topProduct);
        }
    } catch (SQLException e) {
        System.out.println("Error searching top selling products: " + e.getMessage());
    }
    return products;
}

    
     public static void main(String[] args) {
        SalesReportDAO acc = new SalesReportDAO();
        List<TopSellingProduct> list = acc.getTopSellingProducts();
        System.out.println(list.get(0).getTotalOrders());
    }
}

