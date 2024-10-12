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

/**
 *
 * @author ankha
 */
public class InvoiceListServlet extends HttpServlet {

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
            out.println("<title>Servlet InvoiceListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InvoiceListServlet at " + request.getContextPath() + "</h1>");
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
        List<Invoice> invoices = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            DBContext dbContext = new DBContext();
            connection = dbContext.connection;
            String query = "SELECT i.invoice_id, i.invoice_date, i.invoice_total_amount, i.invoice_status, e.employee_name, pm.payment_method_name, c.customer_name " +
                    "FROM Invoices i " +
                    "JOIN Employees e ON i.employee_id = e.employee_id " +
                    "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id " +
                    "JOIN Customers c ON i.customer_id = c.customer_id";
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int invoiceId = resultSet.getInt("invoice_id");
                String invoiceDate = resultSet.getString("invoice_date");
                double totalAmount = resultSet.getDouble("invoice_total_amount");
                String status = resultSet.getString("invoice_status");
                String employeeName = resultSet.getString("employee_name");
                String paymentMethodName = resultSet.getString("payment_method_name");
                String customerName = resultSet.getString("customer_name");

                Invoice invoice = new Invoice(invoiceId, invoiceDate, totalAmount, status, employeeName, paymentMethodName, customerName);
                invoices.add(invoice);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("invoices", invoices);
        RequestDispatcher dispatcher = request.getRequestDispatcher("invoiceList.jsp");
        dispatcher.forward(request, response);
    }

/**
 * Handles the HTTP <code>POST</code> method.
 *
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
     *
     * @return a String containing servlet description
     */
    @Override
public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
