/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.POS.Payment;

import dal.CustomerDAO;
import dal.OrderDAO;
import dal.ShopDAO;
import dal.StoreStockDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.CartItem;
import utils.ReceiptGenerator;
import java.sql.SQLException;
import java.util.Date;
import model.Cart;
import model.Customers;
import model.Employees;
import model.Order;
import model.OrderDetail;
import model.Shop;

/**
 *
 * @author ankha
 */
public class ProcessCashPaymentServlet extends HttpServlet {

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
            out.println("<title>Servlet ProcessCashPaymentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessCashPaymentServlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        
        //Get Shop Detail
        ShopDAO shopDAO = new ShopDAO();
        Shop shop = shopDAO.getShopId(1); // Set ID Shop mặc định là 1
        request.setAttribute("shop", shop);
        //
        try {
            // Parse và validate các tham số
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));
            double receivedAmount = Double.parseDouble(request.getParameter("receivedAmount"));

            if (receivedAmount < totalAmount) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().write("Số tiền khách đưa không đủ");
                return;
            }

            // Lấy cart từ session
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null || cart.getItems().isEmpty()) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().write("Giỏ hàng trống");
                return;
            }

            // Xử lý transaction trong một try-catch riêng
            OrderDAO orderDAO = new OrderDAO();
            int orderId;

            try {
                orderId = orderDAO.createOrder(customerId, totalAmount, cart.getItems());
            } catch (SQLException e) {
                // Log lỗi
                e.printStackTrace();
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Lỗi xử lý đơn hàng: " + e.getMessage());
                return;
            }

            if (orderId > 0) {
                // Lấy thông tin order và customer
                Order order = orderDAO.getOrderById(orderId);
                CustomerDAO customerDAO = new CustomerDAO();
                Customers customer = customerDAO.getCustomerById(customerId);

                // Set attributes cho receipt
                request.setAttribute("order", order);
                request.setAttribute("items", cart.getItems());
                request.setAttribute("customer", customer);
                request.setAttribute("receivedAmount", receivedAmount);
                request.setAttribute("changeAmount", receivedAmount - totalAmount);

                // Xóa cart
                session.removeAttribute("cart");

                // Forward to receipt JSP
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/receipt.jsp");
                dispatcher.forward(request, response);
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Không thể tạo đơn hàng");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Lỗi xử lý thanh toán: " + e.getMessage());
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
