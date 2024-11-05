/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.Setting;

import dal.MailogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Mailog;

/**
 *
 * @author ankha
 */
public class MailLogServlet extends HttpServlet {

    private MailogDAO mailogDAO;

    public void init() {
        mailogDAO = new MailogDAO();
    }

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
            out.println("<title>Servlet MailLogServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MailLogServlet at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("view".equals(action)) {
            viewMailLog(request, response);
            return;
        }

        MailogDAO mailogDAO = new MailogDAO();

        // Get filter parameters
        String searchKeyword = request.getParameter("search");
        String status = request.getParameter("status");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

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

        // Get filtered maillogs
        List<Mailog> maillogs = mailogDAO.getMailLogsWithFilter(
                searchKeyword, status, startDate, endDate, page, pageSize
        );

        // Get total records for pagination
        int totalRecords = mailogDAO.getTotalMailLogs(
                searchKeyword, status, startDate, endDate
        );

        // Get statuses for filter dropdown
        List<String> statuses = mailogDAO.getAllStatuses();

        // Set attributes
        request.setAttribute("maillogs", maillogs);
        request.setAttribute("currentPage", page);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("totalRecords", totalRecords);
        request.setAttribute("totalPages", (int) Math.ceil((double) totalRecords / pageSize));
        request.setAttribute("statuses", statuses);
        request.setAttribute("searchKeyword", searchKeyword);
        request.setAttribute("selectedStatus", status);
        request.setAttribute("startDate", startDate);
        request.setAttribute("endDate", endDate);

        // Forward to JSP
        request.getRequestDispatcher("/mailLogs.jsp").forward(request, response);
    }

    private void listMailLogs(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Mailog> maillogs = mailogDAO.getAllMailLogs();
        request.setAttribute("maillogs", maillogs);
        request.getRequestDispatcher("/mailLogs.jsp").forward(request, response);
    }

    private void viewMailLog(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Mailog mailog = mailogDAO.getMailLogById(id);
        request.setAttribute("mailog", mailog);
        request.getRequestDispatcher("/mailLogView.jsp").forward(request, response);
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
