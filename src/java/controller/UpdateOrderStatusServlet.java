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
import java.io.BufferedReader;
import java.sql.SQLException;
import model.Order;

/**
 *
 * @author ankha
 */
public class UpdateOrderStatusServlet extends HttpServlet {

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
            out.println("<title>Servlet UpdateOrderStatusServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateOrderStatusServlet at " + request.getContextPath() + "</h1>");
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
        sendErrorResponse(response, "GET method is not supported");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final OrderDAO orderDAO;

    public UpdateOrderStatusServlet() {
        this.orderDAO = new OrderDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            // Đọc JSON từ request body
            BufferedReader reader = request.getReader();
            JsonObject jsonRequest = new Gson().fromJson(reader, JsonObject.class);

            // Validate input
            if (!jsonRequest.has("orderId") || !jsonRequest.has("status")) {
                throw new IllegalArgumentException("Missing required fields: orderId or status");
            }

            // Lấy thông tin từ request
            String orderId = jsonRequest.get("orderId").getAsString();
            String status = jsonRequest.get("status").getAsString();

            // Validate orderId
            if (orderId == null || orderId.trim().isEmpty()) {
                throw new IllegalArgumentException("Invalid orderId");
            }

            // Validate status
            if (!isValidStatus(status)) {
                throw new IllegalArgumentException("Invalid status value");
            }

            // Lấy order từ database
            Order order = orderDAO.getOrderById(Integer.parseInt(orderId));
            if (order == null) {
                throw new IllegalArgumentException("Order not found with ID: " + orderId);
            }

            // Cập nhật trạng thái
            order.setOrderStatus(status);
            boolean updated = orderDAO.updateOrderStatus(order);

            if (!updated) {
                throw new SQLException("Failed to update order status");
            }

            // Tạo response thành công
            JsonObject jsonResponse = new JsonObject();
            jsonResponse.addProperty("success", true);
            jsonResponse.addProperty("message", "Order status updated successfully");
            jsonResponse.addProperty("orderId", orderId);
            jsonResponse.addProperty("newStatus", status);

            response.getWriter().write(new Gson().toJson(jsonResponse));

        } catch (IllegalArgumentException e) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            sendErrorResponse(response, "Invalid request: " + e.getMessage());
        } catch (SQLException e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            sendErrorResponse(response, "Database error: " + e.getMessage());
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            sendErrorResponse(response, "Server error: " + e.getMessage());
        }
    }

    private boolean isValidStatus(String status) {
        // Định nghĩa các trạng thái hợp lệ
        String[] validStatuses = {"PENDING", "PAID", "CANCELLED", "COMPLETED"};
        for (String validStatus : validStatuses) {
            if (validStatus.equals(status)) {
                return true;
            }
        }
        return false;
    }

    private void sendErrorResponse(HttpServletResponse response, String message) throws IOException {
        JsonObject error = new JsonObject();
        error.addProperty("success", false);
        error.addProperty("error", message);
        response.getWriter().write(new Gson().toJson(error));
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
