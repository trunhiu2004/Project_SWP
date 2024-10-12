/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import dal.DBContext;
import java.io.PrintWriter;
import model.Invoice;
import model.OrderDetail;

/**
 *
 * @author ankha
 */
public class InvoiceDetailServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet InvoiceDetailServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InvoiceDetailServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String invoiceIdStr = request.getParameter("invoiceId");
        if (invoiceIdStr == null) {
            System.out.println("invoiceId parameter is missing.");
            response.getWriter().println("Invoice ID is missing.");
            return;
        }

        int invoiceId = Integer.parseInt(invoiceIdStr);
        System.out.println("Received invoiceId: " + invoiceId);

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Invoice invoice = null;
        List<OrderDetail> orderDetails = new ArrayList<>();

        try {
            DBContext dbContext = new DBContext();
            connection = dbContext.connection;

            // Fetch Invoice Details
            String invoiceQuery = "SELECT i.invoice_id, i.invoice_date, i.invoice_total_amount, i.invoice_status, e.employee_name, pm.payment_method_name, c.customer_name, i.order_id " +
                                  "FROM Invoices i " +
                                  "JOIN Employees e ON i.employee_id = e.employee_id " +
                                  "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id " +
                                  "JOIN Customers c ON i.customer_id = c.customer_id " +
                                  "WHERE i.invoice_id = ?";
            preparedStatement = connection.prepareStatement(invoiceQuery);
            preparedStatement.setInt(1, invoiceId);
            resultSet = preparedStatement.executeQuery();

            int orderId = -1;

            if (resultSet.next()) {
                String invoiceDate = resultSet.getString("invoice_date");
                double totalAmount = resultSet.getDouble("invoice_total_amount");
                String status = resultSet.getString("invoice_status");
                String employeeName = resultSet.getString("employee_name");
                String paymentMethodName = resultSet.getString("payment_method_name");
                String customerName = resultSet.getString("customer_name");
                orderId = resultSet.getInt("order_id");

                invoice = new Invoice(invoiceId, invoiceDate, totalAmount, status, employeeName, paymentMethodName, customerName);
                System.out.println("Fetched invoice: " + invoice);
            } else {
                System.out.println("No invoice found for invoiceId: " + invoiceId);
            }

            resultSet.close();
            preparedStatement.close();

            if (orderId != -1) {
                // Fetch Order Details based on the orderId from the Invoice
                String orderDetailQuery = "SELECT od.order_detail_id, od.order_id, od.product_id, od.quantity, od.unit_price, od.total_price, p.product_name " +
                                          "FROM OrdersDetails od " +
                                          "JOIN Products p ON od.product_id = p.product_id " +
                                          "WHERE od.order_id = ?";
                preparedStatement = connection.prepareStatement(orderDetailQuery);
                preparedStatement.setInt(1, orderId);
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int orderDetailId = resultSet.getInt("order_detail_id");
                    int productId = resultSet.getInt("product_id");
                    int quantity = resultSet.getInt("quantity");
                    double unitPrice = resultSet.getDouble("unit_price");
                    double totalPrice = resultSet.getDouble("total_price");
                    String productName = resultSet.getString("product_name");

                    OrderDetail orderDetail = new OrderDetail(orderDetailId, orderId, productId, quantity, unitPrice, totalPrice, productName);
                    orderDetails.add(orderDetail);
                }
                System.out.println("Number of order details fetched: " + orderDetails.size());
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("SQL Exception: " + e.getMessage());
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("invoice", invoice);
        request.setAttribute("orderDetails", orderDetails);
        request.setAttribute("invoiceId", invoiceId);
        RequestDispatcher dispatcher = request.getRequestDispatcher("invoiceDetail.jsp");
        dispatcher.forward(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
