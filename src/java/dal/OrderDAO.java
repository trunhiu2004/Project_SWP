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
import model.Order;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author ankha
 */
public class OrderDAO extends DBContext {

    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT o.order_id, c.customer_name, o.order_date, o.order_total_amount, o.order_status, e.employee_name, co.coupon_code, o.employee_id "
                + "FROM Orders o "
                + "LEFT JOIN Customers c ON o.customer_id = c.customer_id "
                + "LEFT JOIN Employees e ON o.employee_id = e.employee_id "
                + "LEFT JOIN CustomerCoupon cc ON o.customer_coupon_id = cc.customer_coupon_id "
                + "LEFT JOIN Coupons co ON cc.coupon_id = co.coupon_id";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setCustomerName(rs.getString("customer_name"));
                order.setOrderDate(rs.getDate("order_date"));
                order.setOrderTotalAmount(rs.getInt("order_total_amount"));
                order.setOrderStatus(rs.getString("order_status"));
                order.setEmployeeName(rs.getString("employee_name"));
                order.setCouponCode(rs.getString("coupon_code"));
                order.setEmployeeId(rs.getInt("employee_id"));
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close ResultSet, PreparedStatement
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return orders;
    }

    // Method to get a specific order by its ID including details
    public Order getOrderById(int orderId) {
        Order order = null;
        String sql = "SELECT o.order_id, c.customer_name, o.order_date, o.order_total_amount, o.order_status, e.employee_name, co.coupon_code, o.employee_id "
                + "FROM Orders o "
                + "LEFT JOIN Customers c ON o.customer_id = c.customer_id "
                + "LEFT JOIN Employees e ON o.employee_id = e.employee_id "
                + "LEFT JOIN CustomerCoupon cc ON o.customer_coupon_id = cc.customer_coupon_id "
                + "LEFT JOIN Coupons co ON cc.coupon_id = co.coupon_id "
                + "WHERE o.order_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setCustomerName(rs.getString("customer_name"));
                order.setOrderDate(rs.getDate("order_date"));
                order.setOrderTotalAmount(rs.getInt("order_total_amount"));
                order.setOrderStatus(rs.getString("order_status"));
                order.setEmployeeName(rs.getString("employee_name"));
                order.setCouponCode(rs.getString("coupon_code"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }

    // Method to get order details by orderId
    public List<OrderDetail> getOrderDetailsByOrderId(int orderId) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        String sql = "SELECT p.product_name, od.quantity, od.unit_price, od.total_price "
                + "FROM OrdersDetails od "
                + "LEFT JOIN Products p ON od.product_id = p.product_id "
                + "WHERE od.order_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail detail = new OrderDetail();
                detail.setProductName(rs.getString("product_name"));
                detail.setQuantity(rs.getInt("quantity"));
                detail.setUnitPrice(rs.getDouble("unit_price"));
                detail.setTotalPrice(rs.getDouble("total_price"));
                orderDetails.add(detail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetails;
    }

    public boolean updateOrderStatus(Order order) {
        String sql = "UPDATE Orders SET order_status = ? WHERE order_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, order.getOrderStatus());
            ps.setInt(2, order.getOrderId());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteOrder(int orderId) {
        String deleteOrderDetailsSql = "DELETE FROM OrdersDetails WHERE order_id = ?";
        String deleteOrderSql = "DELETE FROM Orders WHERE order_id = ?";

        try {
            connection.setAutoCommit(false);

            // Delete order details first
            try (PreparedStatement psDetails = connection.prepareStatement(deleteOrderDetailsSql)) {
                psDetails.setInt(1, orderId);
                psDetails.executeUpdate();
            }

            // Then delete the order
            try (PreparedStatement psOrder = connection.prepareStatement(deleteOrderSql)) {
                psOrder.setInt(1, orderId);
                int rowsAffected = psOrder.executeUpdate();

                if (rowsAffected > 0) {
                    connection.commit();
                    return true;
                } else {
                    connection.rollback();
                    return false;
                }
            }
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
            return false;
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT product_id, product_name, product_price FROM Products"; // Simplified for example
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt("product_id"));
                p.setProductName(rs.getString("product_name"));
                p.setProductPrice(rs.getInt("product_price"));
                products.add(p);
            }
        } catch (SQLException e) {
            System.out.println("Error in getAllProducts: " + e);
        }
        return products;
    }

    //Add product to cart 
    public void addProductToCart(int customerId, int productId, int quantity) throws Exception {
        if (quantity <= 0) {
            throw new IllegalArgumentException("Quantity must be greater than 0");
        }

        // Create an order if one doesn't exist for the customer
        String createOrderSql = "INSERT INTO Orders (customer_id, order_date, order_status)"
                + " VALUES (?, GETDATE(), 'pending')"; // You might use a more specific status

        try (PreparedStatement createOrderStm = connection.prepareStatement(createOrderSql, new String[]{"order_id"})) {
            createOrderStm.setInt(1, customerId);

            int affectedRows = createOrderStm.executeUpdate();
            if (affectedRows == 0) {
                throw new SQLException("Creating order failed, no rows affected.");
            }

            ResultSet generatedKeys = createOrderStm.getGeneratedKeys();

            if (generatedKeys.next()) {
                int orderId = generatedKeys.getInt(1);

                //Insert product and OrderDetails
                String addProductToCartSql = "INSERT INTO OrdersDetails (product_id, quantity, unit_price, total_price, order_id)"
                        + "SELECT ?, ?, product_price, ? * product_price, ? FROM Products WHERE product_id = ?";
                try (PreparedStatement addProductStm = connection.prepareStatement(addProductToCartSql)) {
                    addProductStm.setInt(1, productId);
                    addProductStm.setInt(2, quantity);
                    addProductStm.setInt(3, quantity);
                    addProductStm.setInt(4, orderId);
                    addProductStm.setInt(5, productId);

                    addProductStm.executeUpdate();

                    // Update inventory after successful cart addition 
                    String updateInventorySql = "UPDATE Inventory SET current_stock = current_stock - ?"
                            + " WHERE product_id = ?";
                    try (PreparedStatement updateInventoryStm = connection.prepareStatement(updateInventorySql)) {
                        updateInventoryStm.setInt(1, quantity);
                        updateInventoryStm.setInt(2, productId);

                        updateInventoryStm.executeUpdate();
                    }
                }
            }
        } catch (SQLException e) {
            System.err.println("Failed to add product to cart: " + e.getMessage());
            //rollback
            connection.rollback();
            throw new Exception("Failed to add product to cart.");
        }
    }
}
