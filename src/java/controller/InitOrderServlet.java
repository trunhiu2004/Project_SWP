/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import model.Order;

/**
 *
 * @author ankha
 */
public class InitOrderServlet extends HttpServlet {

    private final OrderDAO orderDAO;

    public InitOrderServlet() {
        this.orderDAO = new OrderDAO();
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
            out.println("<title>Servlet InitOrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InitOrderServlet at " + request.getContextPath() + "</h1>");
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
        response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
        JsonObject error = new JsonObject();
        error.addProperty("success", false);
        error.addProperty("error", "GET method is not supported");
        response.getWriter().write(new Gson().toJson(error));
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        JsonObject jsonResponse = new JsonObject();

        try {
            HttpSession session = request.getSession();
            // Thay đổi từ customerId thành selected_customer_id
            Integer customerId = (Integer) session.getAttribute("selected_customer_id");

            System.out.println("Selected Customer ID from session: " + customerId); // Debug log

            if (customerId == null) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("error", "Vui lòng chọn khách hàng trước khi tạo đơn hàng");
                out.print(jsonResponse.toString());
                return;
            }

            // Kiểm tra order hiện tại
            Integer currentOrderId = (Integer) session.getAttribute("currentOrderId");
            if (currentOrderId != null) {
                Order existingOrder = orderDAO.getOrderById(currentOrderId);
                if (existingOrder != null && "PENDING".equals(existingOrder.getOrderStatus())) {
                    jsonResponse.addProperty("success", true);
                    jsonResponse.addProperty("orderId", currentOrderId);
                    out.print(jsonResponse.toString());
                    return;
                }
            }

            // Tạo order mới
            int orderId = orderDAO.createPendingOrder(customerId);
            session.setAttribute("currentOrderId", orderId);

            jsonResponse.addProperty("success", true);
            jsonResponse.addProperty("orderId", orderId);

        } catch (Exception e) {
            e.printStackTrace();
            jsonResponse.addProperty("success", false);
            jsonResponse.addProperty("error", e.getMessage());
        }

        out.print(jsonResponse.toString());
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
