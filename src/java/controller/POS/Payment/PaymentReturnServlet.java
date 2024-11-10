/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.POS.Payment;

import dal.CustomerDAO;
import dal.OrderDAO;
import dal.ShopDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.sql.SQLException;
import model.Cart;
import java.util.logging.Logger;
import model.Coupons;
import model.Order;
import model.Customers;
import model.PaymentMethod;
import model.Shop;

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

        OrderDAO orderDAO = new OrderDAO();
        try {
            orderDAO.connection.setAutoCommit(false);

            String code = request.getParameter("code");
            String orderCode = request.getParameter("orderCode");
            String status = request.getParameter("status");

            if (code == null || orderCode == null || status == null) {
                throw new ServletException("Missing required parameters");
            }

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            Coupons appliedCoupon = (Coupons) session.getAttribute("appliedCoupon");
            Integer employeeId = (Integer) session.getAttribute("employeeId");
            Integer customerId = (Integer) session.getAttribute("selected_customer_id");

            if (cart == null || cart.getItems().isEmpty()) {
                throw new ServletException("Giỏ hàng trống");
            }

            int orderId = Integer.parseInt(orderCode);

            // Tính toán lại tổng tiền sau khi áp dụng mã giảm giá
            double finalTotalAmount = cart.getTotalMoney();
            if (appliedCoupon != null) {
                double discountAmount = (cart.getTotalMoney() * appliedCoupon.getDiscount_amount()) / 100;
                finalTotalAmount = cart.getTotalMoney() - discountAmount;
            }

            if ("00".equals(code) && "PAID".equals(status)) {
                Order order = orderDAO.getOrderById(orderId);
                if (order == null) {
                    LOGGER.warning("Order not found: " + orderId);
                    // Tạo đơn hàng mới
                    order = new Order();
                    order.setOrderId(orderId);
                    order.setCustomerId(customerId);
                    order.setOrderStatus("COMPLETED");
                    order.setOrderTotalAmount((int) finalTotalAmount);
                    order.setEmployeeId(employeeId);
                    
                    orderDAO.createOrder(customerId, finalTotalAmount, cart.getItems(), appliedCoupon, employeeId, PaymentMethod.QR_CODE);
                } else {
                    // Cập nhật đơn hàng hiện có
                    order.setOrderStatus("COMPLETED");
                    order.setOrderTotalAmount((int) finalTotalAmount);
                    orderDAO.updateOrder(order);
                    //Xử lý OrderDetail
                    orderDAO.processOrderDetails(orderId, cart.getItems());
                    // Cập nhật hoặc tạo invoice với payment method là QR
                    orderDAO.createInvoice(order.getOrderId(), order.getCustomerId(), finalTotalAmount, employeeId, PaymentMethod.QR_CODE);
                }
                //Get Shop Detail
                ShopDAO shopDAO = new ShopDAO();
                Shop shop = shopDAO.getShopId(1); // Set ID Shop mặc định là 1
                request.setAttribute("shop", shop);

                CustomerDAO customerDAO = new CustomerDAO();
                Customers customer = customerDAO.getCustomerById(customerId);

                request.setAttribute("order", order);
                request.setAttribute("items", cart.getItems());
                request.setAttribute("customer", customer);
                request.setAttribute("receivedAmount", finalTotalAmount);
                request.setAttribute("changeAmount", 0.0);
                request.setAttribute("appliedCoupon", appliedCoupon);
                request.setAttribute("subtotal", cart.getTotalMoney());

                session.removeAttribute("cart");
                session.removeAttribute("appliedCoupon");

                orderDAO.connection.commit();

                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/receipt-auto-print.jsp");
                dispatcher.forward(request, response);
            } else {
                // Payment failed or cancelled
                Order order = orderDAO.getOrderById(orderId);
                if (order != null) {
                    order.setOrderStatus("CANCELLED");
                    orderDAO.updateOrder(order);
                }
                orderDAO.connection.commit();
                response.sendRedirect("PoSHome?error=payment_failed");
            }

        } catch (Exception e) {
            LOGGER.severe("Error processing payment return: " + e.getMessage());
            e.printStackTrace();
            try {
                orderDAO.connection.rollback();
            } catch (SQLException ex) {
                LOGGER.severe("Error rolling back transaction: " + ex.getMessage());
            }
            response.sendRedirect("PoSHome?error=system_error&message=" + URLEncoder.encode(e.getMessage(), "UTF-8"));
        } finally {
            try {
                orderDAO.connection.setAutoCommit(true);
            } catch (SQLException e) {
                LOGGER.severe("Error resetting auto-commit: " + e.getMessage());
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
