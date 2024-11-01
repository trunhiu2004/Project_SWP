/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
//DEBUG
import org.apache.log4j.Logger;

/**
 *
 * @author ankha
 */
public class RemoveFromCartController extends HttpServlet {

    private static final Logger logger = Logger.getLogger(RemoveFromCartController.class);

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
        try {
            // Lấy storeStockId từ request
            String storeStockIdStr = request.getParameter("storeStockId");

            // Kiểm tra null hoặc empty
            if (storeStockIdStr == null || storeStockIdStr.trim().isEmpty()) {
                response.sendRedirect("PoSHome");
                return;
            }

            // Parse storeStockId
            int storeStockId = Integer.parseInt(storeStockIdStr.trim());

            //DEBUG:
            logger.info("Removing item with storeStockId: " + storeStockId);
            // Lấy cart từ session
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            // Kiểm tra cart null
            if (cart != null) {
                // Xóa item
                cart.removeItem(storeStockId);
                // Cập nhật lại cart trong session
                session.setAttribute("cart", cart);
            }
            // Redirect về trang PoSHome
            response.sendRedirect("PoSHome");

        } catch (NumberFormatException e) {
            logger.error("Error in RemoveFromCartController: " + e.getMessage(), e);
            response.sendRedirect("PoSHome");
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
