/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.InvoiceMng;

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
import dal.InvoiceDAO;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        InvoiceDAO invoiceDAO = new InvoiceDAO();

        // Get filter parameters
        String searchKeyword = request.getParameter("search");
        String status = request.getParameter("status");

        // Xử lý ngày tháng
        String startDate = null;
        String endDate = null;

        try {
            String rawStartDate = request.getParameter("startDate");
            String rawEndDate = request.getParameter("endDate");

            if (rawStartDate != null && !rawStartDate.trim().isEmpty()) {
                rawStartDate = rawStartDate.trim();
                // Kiểm tra xem có đúng định dạng yyyy-MM-dd không
                if (rawStartDate.matches("\\d{4}-\\d{2}-\\d{2}")) {
                    startDate = rawStartDate;
                } else {
                    // Nếu là định dạng MM/dd/yyyy thì chuyển đổi
                    SimpleDateFormat userFormat = new SimpleDateFormat("MM/dd/yyyy");
                    SimpleDateFormat dbFormat = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = userFormat.parse(rawStartDate);
                    startDate = dbFormat.format(date);
                }
            }

            if (rawEndDate != null && !rawEndDate.trim().isEmpty()) {
                rawEndDate = rawEndDate.trim();
                // Kiểm tra xem có đúng định dạng yyyy-MM-dd không
                if (rawEndDate.matches("\\d{4}-\\d{2}-\\d{2}")) {
                    endDate = rawEndDate;
                } else {
                    // Nếu là định dạng MM/dd/yyyy thì chuyển đổi
                    SimpleDateFormat userFormat = new SimpleDateFormat("MM/dd/yyyy");
                    SimpleDateFormat dbFormat = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = userFormat.parse(rawEndDate);
                    endDate = dbFormat.format(date);
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
            // Log lỗi nhưng không dừng xử lý
        }

        String paymentMethod = request.getParameter("paymentMethod");
        if ("All Payment Method".equals(paymentMethod)) {
            paymentMethod = null;
        }

        if ("All Status".equals(status)) {
            status = null;
        }

        // Pagination
        int page = 1;
        int pageSize = 10;
        try {
            String pageParam = request.getParameter("page");
            if (pageParam != null && !pageParam.trim().isEmpty()) {
                page = Integer.parseInt(pageParam);
            }
        } catch (NumberFormatException e) {
            // Keep default value
        }

        // Get filtered invoices
        List<Invoice> invoices = invoiceDAO.getInvoicesWithFilter(
                searchKeyword, status, startDate, endDate, paymentMethod, page, pageSize
        );
        // Get total records for pagination
        int totalRecords = invoiceDAO.getTotalInvoices(
                searchKeyword, status, startDate, endDate, paymentMethod
        );

        // Get filter options
        List<String> paymentMethods = invoiceDAO.getAllPaymentMethods();
        List<String> statuses = invoiceDAO.getAllStatuses();

        // Set attributes
        request.setAttribute("invoices", invoices);
        request.setAttribute("currentPage", page);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("totalRecords", totalRecords);
        request.setAttribute("totalPages", (int) Math.ceil((double) totalRecords / pageSize));
        request.setAttribute("paymentMethods", paymentMethods);
        request.setAttribute("statuses", statuses);
        request.setAttribute("searchKeyword", searchKeyword);
        request.setAttribute("selectedStatus", status);
        request.setAttribute("startDate", request.getParameter("startDate")); // Giữ nguyên format hiển thị
        request.setAttribute("endDate", request.getParameter("endDate")); // Giữ nguyên format hiển thị
        request.setAttribute("selectedPaymentMethod", paymentMethod);

        // Forward to JSP
        request.getRequestDispatcher("invoiceList.jsp").forward(request, response);
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
