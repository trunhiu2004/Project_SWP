/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DBContext;
import model.Invoice;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ankha
 */
public class EditInvoiceServlet extends HttpServlet {
   
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
            out.println("<title>Servlet EditInvoiceServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditInvoiceServlet at " + request.getContextPath () + "</h1>");
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
        int invoiceId = Integer.parseInt(request.getParameter("invoiceId"));

        Invoice invoice = null;
        try (Connection connection = new DBContext().connection) {
            String query = "SELECT i.invoice_id, i.invoice_date, i.invoice_total_amount, i.invoice_status, " +
                           "e.employee_name, pm.payment_method_name, c.customer_name " +
                           "FROM Invoices i " +
                           "JOIN Employees e ON i.employee_id = e.employee_id " +
                           "JOIN PaymentMethod pm ON i.payment_method_id = pm.payment_method_id " +
                           "JOIN Customers c ON i.customer_id = c.customer_id " +
                           "WHERE i.invoice_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, invoiceId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String invoiceDate = resultSet.getString("invoice_date");
                double totalAmount = resultSet.getDouble("invoice_total_amount");
                String status = resultSet.getString("invoice_status");
                String employeeName = resultSet.getString("employee_name");
                String paymentMethodName = resultSet.getString("payment_method_name");
                String customerName = resultSet.getString("customer_name");

                invoice = new Invoice(invoiceId, invoiceDate, totalAmount, status, employeeName, paymentMethodName, customerName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("invoice", invoice);
        request.getRequestDispatcher("edit-invoice.jsp").forward(request, response);
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
