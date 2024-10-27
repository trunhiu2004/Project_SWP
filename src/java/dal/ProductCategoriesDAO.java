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
import model.CategorySummary;
import model.ProductCategories;

/**
 *
 * @author PC
 */
public class ProductCategoriesDAO extends DBContext {

    public List<ProductCategories> getAll() {
        List<ProductCategories> list = new ArrayList<>();
        String sql = "select * from Product_Categories";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ProductCategories pc = new ProductCategories(rs.getInt("category_id"),
                        rs.getString("category_name"));
                list.add(pc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
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

    public ProductCategories getCategoryByName(String category_name) {
        String sql = "select * from Product_Categories where category_name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, category_name);
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

    public void deleteCategory(int id) {
        String sql = "delete from Product_Categories where category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertCategory(ProductCategories c) {
        String sql = "insert into Product_Categories values(?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateCategory(ProductCategories c) {
        String sql = "UPDATE [dbo].[Product_Categories]\n"
                + "   SET [category_name] = ?\n"
                + " WHERE category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setInt(2, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<CategorySummary> getBestCategory() {
    List<CategorySummary> bestCategories = new ArrayList<>();
    String sql = """
                 WITH salesByMonth AS (
                     SELECT 
                         MONTH(o.order_date) AS order_month,  -- Lấy tháng từ order_date
                         YEAR(o.order_date) AS order_year,    -- Lấy năm từ order_date
                         p.product_id,
                         p.product_name,
                         p.product_image,
                         pc.category_id,
                         pc.category_name,
                         SUM(o.order_total_amount) AS total_sales,  -- Tổng tiền của đơn hàng từ bảng Orders
                         SUM(od.quantity) AS total_quantity,  -- Tổng số lượng của sản phẩm
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
                         AND o.order_status = 'Paid'
                     GROUP BY 
                         YEAR(o.order_date),   -- Nhóm theo năm
                         MONTH(o.order_date),  -- Nhóm theo tháng
                         p.product_id,
                         p.product_name,
                         p.product_image,
                         pc.category_id,
                         pc.category_name
                 ),
                 totalSalesByCategory AS (
                     SELECT 
                         category_id,
                         category_name,
                         SUM(total_quantity) AS total_category_quantity  -- Tổng số lượng theo category_id
                     FROM 
                         salesByMonth
                     GROUP BY 
                         category_id,
                         category_name
                 )
                 
                 SELECT 
                     ts.category_name,  -- Tên danh mục
                     ts.total_category_quantity  -- Tổng số lượng theo category_id
                 FROM 
                     totalSalesByCategory ts  -- Lấy từ bảng tổng số lượng theo danh mục
                 ORDER BY 
                     ts.total_category_quantity DESC;  -- Sắp xếp theo tổng số lượng giảm dần
                 """;

    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            String categoryName = rs.getString("category_name");
            int totalQuantity = rs.getInt("total_category_quantity");
            CategorySummary categorySummary = new CategorySummary(categoryName, totalQuantity);
            bestCategories.add(categorySummary);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return bestCategories;
}


    public static void main(String[] args) {
        ProductCategoriesDAO dao = new ProductCategoriesDAO();
        List<CategorySummary> bestItem = dao.getBestCategory();
        System.out.println(bestItem.get(0).getTotalCategoryQuantity());
    }

}
