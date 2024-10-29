/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.util.Properties;
import model.Cart;
import vn.payos.PayOS;
import vn.payos.type.CheckoutResponseData;
import vn.payos.type.ItemData;
import vn.payos.type.PaymentData;

/**
 *
 * @author ankha
 */
public class ProcessQRPaymentServlet extends HttpServlet {

    private PayOS payOS;

    @Override
    public void init() throws ServletException {
        super.init();
        try {
            // Load properties file
            Properties props = new Properties();
            String configPath = getServletContext().getRealPath("/WEB-INF/config.properties");
            props.load(new FileInputStream(configPath));

            // Get PayOS credentials
            String clientId = props.getProperty("payos.client_id");
            String apiKey = props.getProperty("payos.api_key");
            String checksumKey = props.getProperty("payos.checksum_key");

            payOS = new PayOS(clientId, apiKey, checksumKey);
        } catch (IOException e) {
            throw new ServletException("Could not load PayOS configuration", e);
        }
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
            out.println("<title>Servlet ProcessQRPaymentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessQRPaymentServlet at " + request.getContextPath() + "</h1>");
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

        try {
            // Parse parameters
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));

            // Get cart from session
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null || cart.getItems().isEmpty()) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                response.getWriter().write("Giỏ hàng trống");
                return;
            }

            // Create PayOS payment
            long orderCode = System.currentTimeMillis();

            ItemData itemData = ItemData.builder()
                    .name("Thanh toán đơn hàng")
                    .quantity(1)
                    .price((int) totalAmount)
                    .build();

            String baseUrl = request.getRequestURL().toString().replace(request.getRequestURI(), request.getContextPath());

            PaymentData paymentData = PaymentData.builder()
                    .orderCode(orderCode)
                    .amount((int) totalAmount)
                    .description("Thanh toán đơn hàng " + orderCode)
                    .returnUrl(baseUrl + "/process-qr-payment/success?customerId=" + customerId)
                    .cancelUrl(baseUrl + "/process-qr-payment/cancel")
                    .item(itemData)
                    .build();

            CheckoutResponseData result = payOS.createPaymentLink(paymentData);

            // Store order information in session
            session.setAttribute("pendingOrderCustomerId", customerId);
            session.setAttribute("pendingOrderAmount", totalAmount);
            session.setAttribute("pendingOrderCode", orderCode);

            // Forward to QR code page
            request.setAttribute("checkoutData", result);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/qr-checkout.jsp");
            dispatcher.forward(request, response);

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
