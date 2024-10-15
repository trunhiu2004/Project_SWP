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
import model.Customer;
import model.Employees;
import model.Coupon;
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
        String sql = "SELECT o.order_id, o.order_date, o.order_total_amount, o.order_status, "
                + "c.customer_name, e.employee_name, cp.coupon_code "
                + "FROM Orders o "
                + "LEFT JOIN Customers c ON o.customer_id = c.customer_id "
                + "LEFT JOIN Employees e ON o.employee_id = e.employee_id "
                + "LEFT JOIN CustomerCoupon cc ON o.customer_coupon_id = cc.customer_coupon_id "
                + "LEFT JOIN Coupons cp ON cc.coupon_id = cp.coupon_id";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setOrderDate(rs.getDate("order_date"));
                order.setOrderTotalAmount(rs.getDouble("order_total_amount"));
                order.setOrderStatus(rs.getString("order_status"));
                order.setCustomerName(rs.getString("customer_name"));
                order.setEmployeeName(rs.getString("employee_name"));
                order.setCouponCode(rs.getString("coupon_code"));
                orders.add(order);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orders;
    }

    public Order getOrderById(int orderId) {
        String sql = "SELECT o.order_id, o.order_date, o.order_total_amount, o.order_status, "
                + "c.customer_name, e.employee_name, cp.coupon_code "
                + "FROM Orders o "
                + "LEFT JOIN Customers c ON o.customer_id = c.customer_id "
                + "LEFT JOIN Employees e ON o.employee_id = e.employee_id "
                + "LEFT JOIN CustomerCoupon cc ON o.customer_coupon_id = cc.customer_coupon_id "
                + "LEFT JOIN Coupons cp ON cc.coupon_id = cp.coupon_id "
                + "WHERE o.order_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setOrderDate(rs.getDate("order_date"));
                order.setOrderTotalAmount(rs.getDouble("order_total_amount"));
                order.setOrderStatus(rs.getString("order_status"));
                order.setCustomerName(rs.getString("customer_name"));
                order.setEmployeeName(rs.getString("employee_name"));
                order.setCouponCode(rs.getString("coupon_code"));
                return order;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<OrderDetail> getOrderDetailsByOrderId(int orderId) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        String sql = "SELECT od.order_detail_id, p.product_name, od.quantity, od.unit_price, od.total_price "
                + "FROM OrdersDetails od "
                + "INNER JOIN Products p ON od.product_id = p.product_id "
                + "WHERE od.order_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail detail = new OrderDetail();
                detail.setOrderDetailId(rs.getInt("order_detail_id"));
                detail.setProductName(rs.getString("product_name"));
                detail.setQuantity(rs.getInt("quantity"));
                detail.setUnitPrice(rs.getDouble("unit_price"));
                detail.setTotalPrice(rs.getDouble("total_price"));
                orderDetails.add(detail);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orderDetails;
    }

    public boolean updateOrder(Order order) {
        String sql = "UPDATE Orders SET customer_id = ?, order_date = ?, order_total_amount = ?, order_status = ?, employee_id = ?, customer_coupon_id = ? WHERE order_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, order.getCustomerId());
            statement.setDate(2, new java.sql.Date(order.getOrderDate().getTime()));
            statement.setDouble(3, order.getOrderTotalAmount());
            statement.setString(4, order.getOrderStatus());
            statement.setInt(5, order.getEmployeeId());
            statement.setInt(6, order.getCustomerCouponId());
            statement.setInt(7, order.getOrderId());

            int rowsUpdated = statement.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        String sql = "SELECT * FROM Customers";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setCustomerName(rs.getString("customer_name"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return customers;
    }

    public List<Employees> getAllEmployees() {
        List<Employees> employees = new ArrayList<>();
        String sql = "SELECT * FROM Employees";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Employees employee = new Employees();
                employee.setEmployee_id(rs.getInt("employee_id"));
                employee.setEmployee_name(rs.getString("employee_name"));
                employee.setEmployee_phone(rs.getString("employee_phone"));
                employee.setEmployee_address(rs.getString("employee_address"));
                employee.setAccount_id(rs.getInt("account_id"));
                employees.add(employee);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return employees;
    }

    public Employees getEmployeeById(int employeeId) {
        String sql = "SELECT * FROM Employees WHERE employee_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, employeeId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Employees employee = new Employees();
                employee.setEmployee_id(rs.getInt("employee_id"));
                employee.setEmployee_name(rs.getString("employee_name"));
                employee.setEmployee_phone(rs.getString("employee_phone"));
                employee.setEmployee_address(rs.getString("employee_address"));
                employee.setAccount_id(rs.getInt("account_id"));
                return employee;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Coupon> getAllCoupons() {
        List<Coupon> coupons = new ArrayList<>();
        String sql = "SELECT * FROM Coupons";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Coupon coupon = new Coupon();
                coupon.setCouponId(rs.getInt("coupon_id"));
                coupon.setCouponCode(rs.getString("coupon_code"));
                coupon.setDiscountAmount(rs.getDouble("discount_amount"));
                coupon.setCouponStartDate(rs.getDate("coupon_start_date"));
                coupon.setCouponEndDate(rs.getDate("coupon_end_date"));
                coupon.setCouponStatus(rs.getString("coupon_status"));
                coupons.add(coupon);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return coupons;
    }

    public boolean deleteOrderById(int orderId) {
        String sql = "DELETE FROM Orders WHERE order_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            int rowsDeleted = statement.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean addOrder(Order order) {
        String sql = "INSERT INTO Orders (customer_id, order_date, order_total_amount, order_status, employee_id, customer_coupon_id) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            statement.setInt(1, order.getCustomerId());
            statement.setDate(2, new java.sql.Date(order.getOrderDate().getTime()));
            statement.setDouble(3, order.getOrderTotalAmount());
            statement.setString(4, order.getOrderStatus());
            statement.setInt(5, order.getEmployeeId());
            if (order.getCustomerCouponId() > 0) {
                statement.setInt(6, order.getCustomerCouponId());
            } else {
                statement.setNull(6, java.sql.Types.INTEGER);
            }

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                ResultSet generatedKeys = statement.getGeneratedKeys();
                if (generatedKeys.next()) {
                    order.setOrderId(generatedKeys.getInt(1));
                    return true;
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public int getLastInsertedOrderId() {
        String sql = "SELECT SCOPE_IDENTITY() AS last_id";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("last_id");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public boolean addOrderDetails(int orderId, List<OrderDetail> orderDetails) {
        String sql = "INSERT INTO OrdersDetails (order_id, product_id, quantity, unit_price, total_price) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            for (OrderDetail detail : orderDetails) {
                // Get product ID by joining with the Products table based on product name
                int productId = getProductIdByName(detail.getProductName());
                if (productId == -1) {
                    throw new SQLException("Product not found for name: " + detail.getProductName());
                }
                statement.setInt(1, orderId);
                statement.setInt(2, productId);
                statement.setInt(3, detail.getQuantity());
                statement.setDouble(4, detail.getUnitPrice());
                statement.setDouble(5, detail.getTotalPrice());
                statement.addBatch();
            }
            int[] rowsInserted = statement.executeBatch();
            return rowsInserted.length == orderDetails.size();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    private int getProductIdByName(String productName) {
        String sql = "SELECT product_id FROM Products WHERE product_name = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, productName);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("product_id");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM Products";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getInt("product_id"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setBarcode(rs.getString("barcode"));
                product.setProductName(rs.getString("product_name"));
                product.setProductPrice(rs.getDouble("product_price"));
                product.setProductWeight(rs.getDouble("product_weight"));
                product.setWeightUnitId(rs.getInt("weight_unit_id"));
                product.setSupplierId(rs.getInt("supplier_id"));
                product.setProductImage(rs.getString("product_image"));
                products.add(product);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return products;
    }

}
