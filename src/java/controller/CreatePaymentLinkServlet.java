/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.util.Properties;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.logging.Logger;
import java.util.logging.FileHandler;
import java.util.logging.SimpleFormatter;
import vn.payos.PayOS;
import vn.payos.type.CheckoutResponseData;
import vn.payos.type.ItemData;
import vn.payos.type.PaymentData;

/**
 *
 * @author ankha
 */
public class CreatePaymentLinkServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(CreatePaymentLinkServlet.class.getName());
    private PayOS payOS;

    @Override
    public void init() throws ServletException {
        // Đọc config từ file properties
        Properties props = new Properties();
        String configPath = getServletContext().getRealPath("/WEB-INF/config.properties");
        try {
            props.load(new FileInputStream(configPath));
            String clientId = props.getProperty("payos.client_id");
            String apiKey = props.getProperty("payos.api_key");
            String checksumKey = props.getProperty("payos.checksum_key");

            // Khởi tạo PayOS object
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
            out.println("<title>Servlet CreatePaymentLinkServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreatePaymentLinkServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try {
            // Parse request body
            JsonObject jsonRequest = new Gson().fromJson(request.getReader(), JsonObject.class);

            // Get order details
            long amount = jsonRequest.get("amount").getAsLong();
            String orderId = jsonRequest.get("orderId").getAsString();
            String description = jsonRequest.get("description").getAsString();

            // Create item data
            ItemData itemData = ItemData.builder()
                    .name("Order #" + orderId)
                    .quantity(1)
                    .price((int) amount)
                    .build();

            // Create payment data
            String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();

            String returnUrl = baseUrl + "/payment-return";
            String cancelUrl = baseUrl + "/payment-return";
            
            PaymentData paymentData = PaymentData.builder()
                    .orderCode(Long.parseLong(orderId))
                    .amount((int) amount)
                    .description(description)
                    .returnUrl(returnUrl)
                    .cancelUrl(cancelUrl)
                    .item(itemData)
                    .build();

            // Create payment link
            CheckoutResponseData result = payOS.createPaymentLink(paymentData);

            // Return checkout URL
            JsonObject jsonResponse = new JsonObject();
            jsonResponse.addProperty("checkoutUrl", result.getCheckoutUrl());
            response.getWriter().write(jsonResponse.toString());

        } catch (Exception e) {
            LOGGER.severe("Error creating payment: " + e.getMessage());
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            JsonObject error = new JsonObject();
            error.addProperty("error", "Server error: " + e.getMessage());
            response.getWriter().write(error.toString());
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
