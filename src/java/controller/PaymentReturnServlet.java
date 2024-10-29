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
import jakarta.servlet.http.HttpSession;
import model.Cart;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author ankha
 */
public class PaymentReturnServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(PaymentReturnServlet.class.getName());

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
            out.println("<title>Servlet PaymentReturnServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentReturnServlet at " + request.getContextPath() + "</h1>");
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

        LOGGER.info("Payment return received with parameters: " + request.getQueryString());

        String code = request.getParameter("code");
        String orderCode = request.getParameter("orderCode");
        String status = request.getParameter("status");

        try {
            if (code == null || orderCode == null || status == null) {
                throw new ServletException("Missing required parameters");
            }

            OrderDAO orderDAO = new OrderDAO();
            Order order = orderDAO.getOrderById(Integer.parseInt(orderCode));

            if (order == null) {
                throw new ServletException("Order not found: " + orderCode);
            }

            if ("00".equals(code) && "PAID".equals(status)) {
                // Payment successful
                order.setOrderStatus("PAID");
                orderDAO.updateOrderStatus(order);

                // Clear cart using session
                HttpSession session = request.getSession();
                session.removeAttribute("cart"); // Thay vì gọi cart.clear()

                // Redirect to success page
                response.sendRedirect("PoSHome?success=true");
            } else {
                // Payment failed or cancelled
                order.setOrderStatus("CANCELLED");
                orderDAO.updateOrderStatus(order);
                response.sendRedirect("PoSHome?error=payment_failed");
            }

        } catch (Exception e) {
            LOGGER.severe("Error processing payment return: " + e.getMessage());
            response.sendRedirect("PoSHome?error=system_error");
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
