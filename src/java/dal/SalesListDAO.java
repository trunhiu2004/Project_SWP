package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.SalesList;

public class SalesListDAO extends DBContext {
    
    public List<SalesList> getAllSales() {
        List<SalesList> saleList = new ArrayList<>();
        String sql = "SELECT o.order_id, c.customer_name, o.order_date, o.order_total_amount, p.product_name, p.product_image, o.order_status, od.quantity, od.unit_price, od.total_price " +
                     "FROM Orders AS o " +
                     "JOIN OrdersDetails AS od ON o.order_id = od.order_id " +
                     "JOIN Products AS p ON od.product_id = p.product_id " +
                     "JOIN Customers AS c ON o.customer_id = c.customer_id";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SalesList list = new SalesList(
                        rs.getInt("order_id"),
                        rs.getString("customer_name"),
                        rs.getTimestamp("order_date") != null ? rs.getTimestamp("order_date").toLocalDateTime() : null,
                        rs.getDouble("order_total_amount"),
                        rs.getString("product_name"),
                        rs.getString("product_image"),
                        rs.getString("order_status"),
                        rs.getInt("quantity"),
                        rs.getDouble("unit_price"),
                        rs.getDouble("total_price"));
                saleList.add(list);
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Thêm thông báo lỗi để dễ dàng kiểm tra
        }
        return saleList;
    }
    
    
    public SalesList getSalesListId(int id){
        SalesList sale = null;
        String sql = "SELECT o.order_id, c.customer_name, o.order_date, o.order_total_amount, p.product_name, p.product_image, o.order_status, od.quantity, od.unit_price, od.total_price " +
                     "FROM Orders AS o " +
                     "JOIN OrdersDetails AS od ON o.order_id = od.order_id " +
                     "JOIN Products AS p ON od.product_id = p.product_id " +
                     "JOIN Customers AS c ON o.customer_id = c.customer_id where o.order_id = ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SalesList list = new SalesList(
                        rs.getInt("order_id"),
                        rs.getString("customer_name"),
                        rs.getTimestamp("order_date") != null ? rs.getTimestamp("order_date").toLocalDateTime() : null,
                        rs.getDouble("order_total_amount"),
                        rs.getString("product_name"),
                        rs.getString("product_image"),
                        rs.getString("order_status"),
                        rs.getInt("quantity"),
                        rs.getDouble("unit_price"),
                        rs.getDouble("total_price"));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Thêm thông báo lỗi để dễ dàng kiểm tra
        }
        return sale;
    }
    
    public List<SalesList> getMaxOrer() {
        List<SalesList> saleList = new ArrayList<>();
        String sql = "SELECT o.order_id, c.customer_name, o.order_date, o.order_total_amount, p.product_name, p.product_image, o.order_status, od.quantity, od.unit_price, od.total_price " +
                     "FROM Orders AS o " +
                     "JOIN OrdersDetails AS od ON o.order_id = od.order_id " +
                     "JOIN Products AS p ON od.product_id = p.product_id " +
                     "JOIN Customers AS c ON o.customer_id = c.customer_id"
                + " Where o.order_total_amount = (SELECT MAX(order_total_amount) From Orders)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                SalesList list = new SalesList(
                        rs.getInt("order_id"),
                        rs.getString("customer_name"),
                        rs.getTimestamp("order_date") != null ? rs.getTimestamp("order_date").toLocalDateTime() : null,
                        rs.getDouble("order_total_amount"),
                        rs.getString("product_name"),
                        rs.getString("product_image"),
                        rs.getString("order_status"),
                        rs.getInt("quantity"),
                        rs.getDouble("unit_price"),
                        rs.getDouble("total_price"));
                saleList.add(list);
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Thêm thông báo lỗi để dễ dàng kiểm tra
        }
        return saleList;
    }
    
    
    
    public static void main(String[] args) {
        SalesListDAO acc = new SalesListDAO();
        List<SalesList> list = acc.getMaxOrer();
        System.out.println(list.get(0).getOrderTotalAmount());
    }
}
