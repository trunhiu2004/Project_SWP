/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.Employees;
import model.Product;
import java.sql.ResultSet;
import java.util.Arrays;
import model.PaymentMethod;

/**
 *
 * @author ankha
 */
public class AddSaleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddSaleServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddSaleServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList<>();
        List<Employees> employees = new ArrayList<>();
        List<Product> products = new ArrayList<>();
        List<PaymentMethod> paymentMethods = new ArrayList<>();
        try (Connection connection = new DBContext().connection) {
            // Fetch customers
            String customerQuery = "SELECT customer_id, customer_name, customer_phone FROM Customers";
            try (PreparedStatement preparedStatement = connection.prepareStatement(customerQuery); ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int customerId = resultSet.getInt("customer_id");
                    String customerName = resultSet.getString("customer_name");
                    String customerPhone = resultSet.getString("customer_phone");
                    customers.add(new Customer(customerId, customerName, customerPhone, 0, 0));
                }
            }

            // Fetch employees
            String employeeQuery = "SELECT employee_id, employee_name FROM Employees";
            try (PreparedStatement preparedStatement = connection.prepareStatement(employeeQuery); ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int employeeId = resultSet.getInt("employee_id");
                    String employeeName = resultSet.getString("employee_name");
                    employees.add(new Employees(employeeId, employeeName, null, null, 0));
                }
            }

            // Fetch products
            String productQuery = "SELECT product_id, product_name, product_price FROM Products";
            try (PreparedStatement preparedStatement = connection.prepareStatement(productQuery); ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int productId = resultSet.getInt("product_id");
                    String productName = resultSet.getString("product_name");
                    double productPrice = resultSet.getDouble("product_price");
                    products.add(new Product(productId, 0, null, productName, productPrice, 0, 0, 0, null));
                }
            }

            //Fetch Payment Method
            String paymentMethodQuery = "SELECT payment_method_id, payment_method_name FROM PaymentMethod WHERE status = '1'";
            try (PreparedStatement preparedStatement = connection.prepareStatement(paymentMethodQuery); ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int paymentMethodId = resultSet.getInt("payment_method_id");
                    String paymentMethodName = resultSet.getString("payment_method_name");
                    int status = resultSet.getInt("status");
                    paymentMethods.add(new PaymentMethod(paymentMethodId, paymentMethodName, status));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately
        }

        request.setAttribute("customers", customers);
        request.setAttribute("employees", employees);
        request.setAttribute("products", products);
        request.setAttribute("paymentMethods", paymentMethods);
        request.getRequestDispatcher("add-sale.jsp").forward(request, response);
    }

    private void createInvoice(Connection connection, int orderId, double totalAmount, int customerId, int employeeId, int paymentMethodId) throws SQLException {
        String invoiceQuery = "INSERT INTO Invoices (order_id, invoice_date, invoice_total_amount, invoice_status, employee_id, payment_method_id, customer_id) VALUES (?, GETDATE(), ?, 'Unpaid', ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(invoiceQuery)) {
            preparedStatement.setInt(1, orderId);
            preparedStatement.setDouble(2, totalAmount);
            preparedStatement.setInt(3, employeeId);
            preparedStatement.setInt(4, paymentMethodId);
            preparedStatement.setInt(5, customerId);
            preparedStatement.executeUpdate();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        try {
            String orderDate = request.getParameter("orderDate");
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            int employeeId = Integer.parseInt(request.getParameter("employeeId"));
            String[] productIds = request.getParameterValues("productId[]");
            String[] quantities = request.getParameterValues("quantity[]");
            String[] unitPrices = request.getParameterValues("unitPrice[]");
            double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));
            String orderStatus = request.getParameter("orderStatus");
            int paymentMethodId = Integer.parseInt(request.getParameter("paymentMethodId"));
            // Debug logging
            System.out.println("Order Date: " + orderDate);
            System.out.println("Customer ID: " + customerId);
            System.out.println("Employee ID: " + employeeId);
            System.out.println("Product IDs: " + Arrays.toString(productIds));
            System.out.println("Quantities: " + Arrays.toString(quantities));
            System.out.println("Unit Prices: " + Arrays.toString(unitPrices));
            System.out.println("Total Amount: " + totalAmount);
            System.out.println("Order Status: " + orderStatus);

            try (Connection connection = new DBContext().connection) {
                connection.setAutoCommit(false);

                // Insert order
                String orderQuery = "INSERT INTO Orders (order_date, customer_id, employee_id, order_total_amount, order_status) VALUES (?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(orderQuery, PreparedStatement.RETURN_GENERATED_KEYS)) {
                    preparedStatement.setString(1, orderDate);
                    preparedStatement.setInt(2, customerId);
                    preparedStatement.setInt(3, employeeId);
                    preparedStatement.setDouble(4, totalAmount);
                    preparedStatement.setString(5, orderStatus);
                    preparedStatement.executeUpdate();

                    try (ResultSet generatedKeys = preparedStatement.getGeneratedKeys()) {
                        if (generatedKeys.next()) {
                            int orderId = generatedKeys.getInt(1);
                            System.out.println("Generated Order ID: " + orderId);

                            // Insert order details
                            String orderDetailQuery = "INSERT INTO OrdersDetails (order_id, product_id, quantity, unit_price, total_price) VALUES (?, ?, ?, ?, ?)";
                            try (PreparedStatement detailStatement = connection.prepareStatement(orderDetailQuery)) {
                                for (int i = 0; i < productIds.length; i++) {
                                    int productId = Integer.parseInt(productIds[i]);
                                    int quantity = Integer.parseInt(quantities[i]);
                                    double unitPrice = Double.parseDouble(unitPrices[i]);
                                    double totalPrice = quantity * unitPrice;

                                    detailStatement.setInt(1, orderId);
                                    detailStatement.setInt(2, productId);
                                    detailStatement.setInt(3, quantity);
                                    detailStatement.setDouble(4, unitPrice);
                                    detailStatement.setDouble(5, totalPrice);
                                    detailStatement.addBatch();
                                }
                                detailStatement.executeBatch();
                            }

                            // Create invoice
                            createInvoice(connection, orderId, totalAmount, customerId, employeeId, paymentMethodId);
                        } else {
                            throw new SQLException("Creating order failed, no ID obtained.");
                        }
                    }
                }
                connection.commit();
                out.print("{\"status\": \"success\", \"message\": \"Sale added successfully\"}");
            } catch (SQLException e) {
                e.printStackTrace();
                System.err.println("SQL State: " + e.getSQLState());
                System.err.println("Error Code: " + e.getErrorCode());
                System.err.println("Message: " + e.getMessage());
                out.print("{\"status\": \"error\", \"message\": \"" + e.getMessage() + "\"}");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.print("{\"status\": \"error\", \"message\": \"" + e.getMessage() + "\"}");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
