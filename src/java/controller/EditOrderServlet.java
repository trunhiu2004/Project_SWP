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
import java.util.List;
import model.Coupon;
import model.Customer;
import model.Employees;
import model.Order;

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
        String orderIdStr = request.getParameter("orderId");

        if (orderIdStr != null) {
            try {
                int orderId = Integer.parseInt(orderIdStr);
                OrderDAO orderDAO = new OrderDAO();
                Order order = orderDAO.getOrderById(orderId);

                List<Customer> customers = orderDAO.getAllCustomers();
                List<Employees> employees = orderDAO.getAllEmployees();
                List<Coupon> coupons = orderDAO.getAllCoupons();     

                request.setAttribute("order", order);
                request.setAttribute("customers", customers);
                request.setAttribute("employees", employees);
                request.setAttribute("coupons", coupons);

                request.getRequestDispatcher("editOrder.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                System.out.println("Invalid Order ID");
                response.sendRedirect("list-order");
            }
        } else {
            response.sendRedirect("list-order");
        }
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
            int orderId = Integer.parseInt(request.getParameter("orderId"));
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            String orderDate = request.getParameter("orderDate");
            double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));
            String status = request.getParameter("status");
            int employeeId = Integer.parseInt(request.getParameter("employeeId"));
            int couponId = Integer.parseInt(request.getParameter("couponId"));

            Order order = new Order();
            order.setOrderId(orderId);
            order.setCustomerId(customerId);
            order.setOrderDate(java.sql.Date.valueOf(orderDate));
            order.setOrderTotalAmount(totalAmount);
            order.setOrderStatus(status);
            order.setEmployeeId(employeeId);
            order.setCustomerCouponId(couponId);

            OrderDAO orderDAO = new OrderDAO();
            if (orderDAO.updateOrder(order)) {
                response.sendRedirect("list-order");
            } else {
                request.setAttribute("errorMessage", "Failed to update order");

                List<Customer> customers = orderDAO.getAllCustomers();
                List<Employees> employees = orderDAO.getAllEmployees();
                List<Coupon> coupons = orderDAO.getAllCoupons();

                request.setAttribute("customers", customers);
                request.setAttribute("employees", employees);
                request.setAttribute("coupons", coupons);
                request.setAttribute("order", order);
                request.getRequestDispatcher("editOrder.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            System.out.println("Invalid Input");
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
