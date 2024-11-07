/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.POS.Promo_Coupon;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dal.CouponDAO;
import dal.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.BufferedReader;
import model.Cart;
import model.Coupons;
import org.json.simple.JSONObject;

/**
 *
 * @author ankha
 */
@WebServlet(name = "CheckCouponServlet", urlPatterns = {"/check-coupon"})
public class CheckCouponServlet extends HttpServlet {

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
        response.setContentType("application/json;charset=UTF-8");

        String couponCode = request.getParameter("couponCode");
        CouponDAO couponDAO = new CouponDAO();

        try (PrintWriter out = response.getWriter()) {
            JSONObject json = new JSONObject();

            Coupons coupon = couponDAO.getCouponByCode(couponCode);
            if (coupon != null) {
                Cart cart = (Cart) request.getSession().getAttribute("cart");
                double totalMoney = cart.getTotalMoney();
                double discountAmount = (totalMoney * coupon.getDiscount_amount()) / 100;
                double finalTotal = totalMoney - discountAmount;

                // Lưu thông tin coupon vào session
                request.getSession().setAttribute("appliedCoupon", coupon);

                json.put("success", true);
                json.put("discountAmount", discountAmount);
                json.put("finalTotal", finalTotal);
                json.put("message", "Áp dụng mã giảm giá thành công!");
            } else {
                json.put("success", false);
                json.put("message", "Mã giảm giá không hợp lệ hoặc đã hết hạn");
            }

            out.print(json.toString());
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
    private Gson gson = new Gson();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        JsonObject jsonResponse = new JsonObject();

        try {
            // Đọc dữ liệu từ request
            JsonObject requestData = gson.fromJson(request.getReader(), JsonObject.class);
            String couponCode = requestData.get("couponCode").getAsString();

            // Lấy session và cart
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            // Kiểm tra xem cart có tồn tại không
            if (cart == null || cart.getItems().isEmpty()) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Giỏ hàng trống");
                sendResponse(response, jsonResponse);
                return;
            }

            // Lấy customerId từ session attribute "selected_customer_id"
            Integer customerId = (Integer) session.getAttribute("selected_customer_id");
            if (customerId == null) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Vui lòng chọn khách hàng trước khi áp dụng mã giảm giá");
                sendResponse(response, jsonResponse);
                return;
            }

            CouponDAO couponDAO = new CouponDAO();
            CustomerDAO customerDAO = new CustomerDAO();

            Coupons coupon = couponDAO.getCouponByCode(couponCode);
            if (coupon != null) {
                // Kiểm tra xem khách hàng đã sử dụng coupon này chưa
                if (couponDAO.isCustomerEligibleForCoupon(customerId, coupon.getCoupon_id())) {
                    double totalMoney = cart.getTotalMoney();
                    double discountAmount = (totalMoney * coupon.getDiscount_amount()) / 100;
                    double finalTotal = totalMoney - discountAmount;

                    // Lưu thông tin coupon vào session
                    session.setAttribute("appliedCoupon", coupon);

                    jsonResponse.addProperty("success", true);
                    jsonResponse.addProperty("discountAmount", discountAmount);
                    jsonResponse.addProperty("finalTotal", finalTotal);
                    jsonResponse.addProperty("message", "Áp dụng mã giảm giá thành công!");
                } else {
                    jsonResponse.addProperty("success", false);
                    jsonResponse.addProperty("message", "Khách hàng đã sử dụng mã giảm giá này rồi");
                }
            } else {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Mã giảm giá không hợp lệ hoặc đã hết hạn");
            }

        } catch (Exception e) {
            jsonResponse.addProperty("success", false);
            jsonResponse.addProperty("message", "Có lỗi xảy ra: " + e.getMessage());
        }

        sendResponse(response, jsonResponse);
    }

    private void sendResponse(HttpServletResponse response, JsonObject jsonResponse) throws IOException {
        PrintWriter out = response.getWriter();
        out.print(gson.toJson(jsonResponse));
        out.flush();
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
