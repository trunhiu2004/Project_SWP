/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Invoice;
import model.OrderDetail;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ankha
 */
public class InvoiceDAO extends DBContext {

    public Invoice getInvoiceById(int invoiceId) {
        String query = "SELECT i.invoice_id, i.invoice_date, i.invoice_total_amount, i.invoice_status, e.employee_name, pm.payment_method_name, c.customer_name, i.order_id "
                + "FROM Invoices i "
                + "JOIN Employees e ON i.employee_id = e.employee_id "
                + "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id "
                + "JOIN Customers c ON i.customer_id = c.customer_id "
                + "WHERE i.invoice_id = ?";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, invoiceId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Invoice(
                            rs.getInt("invoice_id"),
                            rs.getString("invoice_date"),
                            rs.getDouble("invoice_total_amount"),
                            rs.getString("invoice_status"),
                            rs.getString("employee_name"),
                            rs.getString("payment_method_name"),
                            rs.getString("customer_name"),
                            rs.getInt("order_id")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<OrderDetail> getOrderDetailsByOrderId(int orderId) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        String query = "SELECT od.order_detail_id, od.order_id, od.product_id, od.quantity, od.unit_price, od.total_price, p.product_name "
                + "FROM OrdersDetails od "
                + "JOIN Products p ON od.product_id = p.product_id "
                + "WHERE od.order_id = ?";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, orderId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    OrderDetail orderDetail = new OrderDetail();
                    // Assuming your OrderDetail class has these setter methods
                    orderDetail.setQuantity(rs.getInt("quantity"));
                    orderDetail.setUnitPrice(rs.getDouble("unit_price"));
                    orderDetail.setTotalPrice(rs.getDouble("total_price"));
                    orderDetail.setProductName(rs.getString("product_name"));
                    // If you need these fields, uncomment and use them
                    // orderDetail.setOrderDetailId(rs.getInt("order_detail_id"));
                    // orderDetail.setOrderId(rs.getInt("order_id"));
                    // orderDetail.setProductId(rs.getInt("product_id"));
                    orderDetails.add(orderDetail);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderDetails;
    }

    public List<Invoice> getAllInvoices() {
        List<Invoice> invoices = new ArrayList<>();
        String query = "SELECT i.invoice_id, i.invoice_date, i.invoice_total_amount, i.invoice_status, e.employee_name, pm.payment_method_name, c.customer_name, i.order_id "
                + "FROM Invoices i "
                + "JOIN Employees e ON i.employee_id = e.employee_id "
                + "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id "
                + "JOIN Customers c ON i.customer_id = c.customer_id";

        try (PreparedStatement stmt = connection.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                invoices.add(new Invoice(
                        rs.getInt("invoice_id"),
                        rs.getString("invoice_date"),
                        rs.getDouble("invoice_total_amount"),
                        rs.getString("invoice_status"),
                        rs.getString("employee_name"),
                        rs.getString("payment_method_name"),
                        rs.getString("customer_name"),
                        rs.getInt("order_id")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return invoices;
    }

    public List<Invoice> getInvoicesWithFilter(
            String searchKeyword,
            String status,
            String startDate,
            String endDate,
            String paymentMethod,
            int page,
            int pageSize) {

        List<Invoice> invoices = new ArrayList<>();
        StringBuilder query = new StringBuilder(
                "SELECT i.invoice_id, i.invoice_date, i.invoice_total_amount, "
                + "i.invoice_status, e.employee_name, pm.payment_method_name, "
                + "c.customer_name, i.order_id "
                + "FROM Invoices i "
                + "JOIN Employees e ON i.employee_id = e.employee_id "
                + "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id "
                + "JOIN Customers c ON i.customer_id = c.customer_id "
                + "WHERE 1=1 "
        );

        List<Object> params = new ArrayList<>();

        if (searchKeyword != null && !searchKeyword.trim().isEmpty()) {
            query.append("AND (LOWER(c.customer_name) LIKE LOWER(?) OR LOWER(e.employee_name) LIKE LOWER(?)) ");
            params.add("%" + searchKeyword + "%");
            params.add("%" + searchKeyword + "%");
        }

        if (status != null && !status.equals("All Status") && !status.trim().isEmpty()) {
            query.append("AND i.invoice_status = ? ");
            params.add(status);
        }

        if (startDate != null && !startDate.trim().isEmpty()) {
            query.append("AND CAST(i.invoice_date AS DATE) >= ? ");
            params.add(startDate);
        }

        if (endDate != null && !endDate.trim().isEmpty()) {
            query.append("AND CAST(i.invoice_date AS DATE) <= ? ");
            params.add(endDate);
        }

        if (paymentMethod != null && !paymentMethod.equals("All Payment Method") && !paymentMethod.trim().isEmpty()) {
            query.append("AND pm.payment_method_name = ? ");
            params.add(paymentMethod);
        }

        query.append("ORDER BY i.invoice_date DESC ")
                .append("OFFSET ? ROWS ")
                .append("FETCH NEXT ? ROWS ONLY");

        params.add((page - 1) * pageSize);
        params.add(pageSize);
        try (PreparedStatement stmt = connection.prepareStatement(query.toString())) {
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    invoices.add(new Invoice(
                            rs.getInt("invoice_id"),
                            rs.getString("invoice_date"),
                            rs.getDouble("invoice_total_amount"),
                            rs.getString("invoice_status"),
                            rs.getString("employee_name"),
                            rs.getString("payment_method_name"),
                            rs.getString("customer_name"),
                            rs.getInt("order_id")
                    ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return invoices;
    }

    public int getTotalInvoices(
            String searchKeyword,
            String status,
            String startDate,
            String endDate,
            String paymentMethod) {

        List<Object> params = new ArrayList<>();
        StringBuilder query = new StringBuilder(
                "SELECT COUNT(*) "
                + "FROM Invoices i "
                + "JOIN Employees e ON i.employee_id = e.employee_id "
                + "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id "
                + "JOIN Customers c ON i.customer_id = c.customer_id "
                + "WHERE 1=1 "
        );

        // Add search conditions
        if (searchKeyword != null && !searchKeyword.trim().isEmpty()) {
            query.append("AND (c.customer_name LIKE ? OR e.employee_name LIKE ?) ");
            params.add("%" + searchKeyword + "%");
            params.add("%" + searchKeyword + "%");
        }

        if (status != null && !status.trim().isEmpty()) {
            query.append("AND i.invoice_status = ? ");
            params.add(status);
        }

        if (startDate != null && !startDate.trim().isEmpty()) {
            query.append("AND i.invoice_date >= ? ");
            params.add(startDate);
        }

        if (endDate != null && !endDate.trim().isEmpty()) {
            query.append("AND i.invoice_date <= ? ");
            params.add(endDate);
        }

        if (paymentMethod != null && !paymentMethod.trim().isEmpty()) {
            query.append("AND pm.payment_method_name = ? ");
            params.add(paymentMethod);
        }

        try (PreparedStatement stmt = connection.prepareStatement(query.toString())) {
            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<String> getAllPaymentMethods() {
        List<String> methods = new ArrayList<>();
        String query = "SELECT DISTINCT payment_method_name FROM PaymentMethod";

        try (PreparedStatement stmt = connection.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                methods.add(rs.getString("payment_method_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return methods;
    }

    public List<String> getAllStatuses() {
        List<String> statuses = new ArrayList<>();
        String query = "SELECT DISTINCT invoice_status FROM Invoices";

        try (PreparedStatement stmt = connection.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                statuses.add(rs.getString("invoice_status"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statuses;
    }
}
