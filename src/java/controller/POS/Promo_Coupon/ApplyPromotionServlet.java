/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.POS.Promo_Coupon;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dal.PromotionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.Promotion;

/**
 *
 * @author ankha
 */
public class ApplyPromotionServlet extends HttpServlet {

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
            out.println("<title>Servlet ApplyPromotionServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ApplyPromotionServlet at " + request.getContextPath() + "</h1>");
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

        JsonObject jsonResponse = new JsonObject();

        try {
            JsonObject jsonRequest = new Gson().fromJson(request.getReader(), JsonObject.class);
            int promotionId = jsonRequest.get("promotionId").getAsInt();

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null || cart.getItems().isEmpty()) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Giỏ hàng trống");
            } else {
                // Nếu Coupon đang được sử dụng, thì Promotion sẽ không được sử dụng nữa
                if (session.getAttribute("appliedCoupon") != null) {
                    jsonResponse.addProperty("success", false);
                    jsonResponse.addProperty("message", "Không thể áp dụng khuyến mãi khi đã sử dụng mã giảm giá");
                    PrintWriter out = response.getWriter();
                    out.print(new Gson().toJson(jsonResponse));
                    out.flush();
                    return;
                }

                PromotionDAO promotionDAO = new PromotionDAO();
                Promotion promotion = promotionDAO.getPromotionById(promotionId);

                if (promotion != null && "Active".equals(promotion.getStatus())) {
                    double totalMoney = cart.getTotalMoney();
                    double discountAmount = (totalMoney * promotion.getDiscount_value()) / 100;
                    double finalTotal = totalMoney - discountAmount;

                    session.setAttribute("appliedPromotion", promotion);

                    jsonResponse.addProperty("success", true);
                    jsonResponse.addProperty("promotionName", promotion.getPromotion_name());
                    jsonResponse.addProperty("discountAmount", discountAmount);
                    jsonResponse.addProperty("finalTotal", finalTotal);
                } else {
                    jsonResponse.addProperty("success", false);
                    jsonResponse.addProperty("message", "Khuyến mãi không hợp lệ hoặc đã hết hạn");
                }
            }
        } catch (Exception e) {
            jsonResponse.addProperty("success", false);
            jsonResponse.addProperty("message", "Có lỗi xảy ra: " + e.getMessage());
        }

        PrintWriter out = response.getWriter();
        out.print(new Gson().toJson(jsonResponse));
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
