/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.OrderDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import model.Cart;
import java.util.logging.Logger;
import model.Order;
import model.Customers;

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

        OrderDAO orderDAO = new OrderDAO();

        try {
            orderDAO.connection.setAutoCommit(false);  // Start transaction

            if (code == null || orderCode == null || status == null) {
                throw new ServletException("Missing required parameters");
            }

            Order order = orderDAO.getOrderById(Integer.parseInt(orderCode));
            if (order == null) {
                throw new ServletException("Order not found: " + orderCode);
            }

            if ("00".equals(code) && "PAID".equals(status)) {
                // Lấy cart từ session
                HttpSession session = request.getSession();
                Cart cart = (Cart) session.getAttribute("cart");

                if (cart == null || cart.getItems().isEmpty()) {
                    throw new ServletException("Cart is empty");
                }

                // Cập nhật order status
                order.setOrderStatus("COMPLETED");
                orderDAO.updateOrderStatus(order);

                try {
                    // Xử lý OrderDetails và StoreStock
                    orderDAO.processOrderDetails(order.getOrderId(), cart.getItems());

                    // Tạo Invoice
                    orderDAO.createInvoice(order.getOrderId(), order.getCustomerId(), order.getOrderTotalAmount());

                    // Commit nếu mọi thứ OK
                    orderDAO.connection.commit();

                    // Lấy thông tin customer cho receipt
                    CustomerDAO customerDAO = new CustomerDAO();
                    Customers customer = customerDAO.getCustomerById(order.getCustomerId());

                    // Set attributes cho receipt
                    request.setAttribute("order", order);
                    request.setAttribute("items", cart.getItems());
                    request.setAttribute("customer", customer);
                    request.setAttribute("receivedAmount", order.getOrderTotalAmount());
                    request.setAttribute("changeAmount", 0.0);

                    // Xóa cart
                    session.removeAttribute("cart");

                    // Forward to receipt JSP
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/receipt-auto-print.jsp");
                    dispatcher.forward(request, response);

                } catch (SQLException e) {
                    // Rollback nếu có lỗi
                    orderDAO.connection.rollback();
                    throw e;
                }

            } else {
                // Payment failed or cancelled
                order.setOrderStatus("CANCELLED");
                orderDAO.updateOrderStatus(order);
                orderDAO.connection.commit();
                response.sendRedirect("PoSHome?error=payment_failed");
            }

        } catch (Exception e) {
            LOGGER.severe("Error processing payment return: " + e.getMessage());
            try {
                orderDAO.connection.rollback();
            } catch (SQLException ex) {
                LOGGER.severe("Error rolling back transaction: " + ex.getMessage());
            }
            response.sendRedirect("PoSHome?error=system_error");
        } finally {
            try {
                orderDAO.connection.setAutoCommit(true);
            } catch (SQLException e) {
                LOGGER.severe("Error resetting auto commit: " + e.getMessage());
            }
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
