/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.OrderMng;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Coupon;
import model.Customer;
import model.Employees;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ankha
 */
public class EditOrderServlet extends HttpServlet {

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
            out.println("<title>Servlet EditOrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditOrderServlet at " + request.getContextPath() + "</h1>");
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
        String orderIdParam = request.getParameter("orderId");
        if (orderIdParam != null) {
            try {
                int orderId = Integer.parseInt(orderIdParam);
                OrderDAO orderDAO = new OrderDAO();
                Order order = orderDAO.getOrderById(orderId);

                request.setAttribute("order", order);
                request.getRequestDispatcher("editOrder.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                response.sendRedirect("list-order");
            }
        } else {
            response.sendRedirect("list-order");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String orderStatus = request.getParameter("orderStatus");

        OrderDAO orderDAO = new OrderDAO();
        Order order = orderDAO.getOrderById(orderId);
        if (order != null) {
            order.setOrderStatus(orderStatus);
            boolean updated = orderDAO.updateOrderStatus(order);

            if (updated) {
                response.sendRedirect("view-order?orderId=" + orderId);
            } else {
                request.setAttribute("error", "Failed to update order status.");
                doGet(request, response);
            }
        } else {
            response.sendRedirect("list-order");
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
