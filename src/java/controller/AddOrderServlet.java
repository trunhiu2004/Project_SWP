/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ankha
 */
public class AddOrderServlet extends HttpServlet {

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
            out.println("<title>Servlet AddOrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddOrderServlet at " + request.getContextPath() + "</h1>");
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
        OrderDAO orderDAO = new OrderDAO();

        request.setAttribute("customers", orderDAO.getAllCustomers());
        request.setAttribute("employees", orderDAO.getAllEmployees());
        request.setAttribute("coupons", orderDAO.getAllCoupons());
        request.setAttribute("products", orderDAO.getAllProducts());

        request.getRequestDispatcher("addOrder.jsp").forward(request, response);
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
        try {
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            String orderDate = request.getParameter("orderDate");
            double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));
            String status = request.getParameter("status");
            int employeeId = Integer.parseInt(request.getParameter("employeeId"));
            String couponIdStr = request.getParameter("couponId");
            Integer couponId = (couponIdStr != null && !couponIdStr.isEmpty()) ? Integer.parseInt(couponIdStr) : null;
            int storeStockId = Integer.parseInt(request.getParameter("storeStockId"));

            Order order = new Order();
            order.setCustomerId(customerId);
            order.setOrderDate(Date.valueOf(orderDate));
            order.setOrderTotalAmount(totalAmount);
            order.setOrderStatus(status);
            order.setEmployeeId(employeeId);
            order.setStoreStockId(storeStockId);
            if (couponId != null) {
                order.setCustomerCouponId(couponId);
            }

            List<OrderDetail> orderDetails = new ArrayList<>();
            String[] productNames = request.getParameterValues("productName");
            String[] quantities = request.getParameterValues("quantity");
            String[] unitPrices = request.getParameterValues("unitPrice");

            if (productNames != null && quantities != null && unitPrices != null) {
                for (int i = 0; i < productNames.length; i++) {
                    OrderDetail detail = new OrderDetail();
                    detail.setProductName(productNames[i]);
                    detail.setQuantity(Integer.parseInt(quantities[i]));
                    detail.setUnitPrice(Double.parseDouble(unitPrices[i]));
                    detail.setTotalPrice(detail.getQuantity() * detail.getUnitPrice());
                    orderDetails.add(detail);
                }
            }

            OrderDAO orderDAO = new OrderDAO();
            if (orderDAO.addOrder(order)) {
                int orderId = order.getOrderId();
                boolean orderDetailsSuccess = orderDAO.addOrderDetails(orderId, orderDetails);
                if (orderDetailsSuccess) {
                    response.sendRedirect("list-order");
                } else {
                    request.setAttribute("errorMessage", "Failed to add order details. Please try again.");
                    doGet(request, response);
                }
            } else {
                request.setAttribute("errorMessage", "Failed to add order. Please try again.");
                doGet(request, response);
            }
        } catch (Exception e) {
            System.out.println("AddOrderServlet: Exception - " + e.getMessage());
            request.setAttribute("errorMessage", "Invalid input. Please correct the errors and try again.");
            doGet(request, response);
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
