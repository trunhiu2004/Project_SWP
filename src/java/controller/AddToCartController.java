/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StoreStockDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.StoreStock;

/**
 *
 * @author ankha
 */
public class AddToCartController extends HttpServlet {

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
        try {
            HttpSession session = request.getSession();
            
            // Lấy storeStockId từ request
            int storeStockId = Integer.parseInt(request.getParameter("storeStockId"));
            
            // Lấy số lượng từ request, mặc định là 1
            int quantity = 1;
            String quantityStr = request.getParameter("quantity");
            if(quantityStr != null && !quantityStr.isEmpty()) {
                quantity = Integer.parseInt(quantityStr);
            }
            
            // Lấy cart từ session
            Cart cart = (Cart) session.getAttribute("cart");
            if(cart == null) {
                cart = new Cart();
            }
            
            // Lấy thông tin sản phẩm từ database
            StoreStockDAO storeStockDAO = new StoreStockDAO();
            StoreStock storeStock = storeStockDAO.getStoreStockById(storeStockId);
            
            // Tính giá
            double price;
            if(storeStock.getDiscount() != null) {
                price = storeStock.getDiscount().getPriceSell();
            } else {
                price = storeStock.getInventory().getProduct().getPrice();
            }
            
            // Tạo cartItem mới
            CartItem item = new CartItem(storeStock, quantity, price);
            
            // Thêm vào cart
            cart.addItem(item);
            
            // Lưu cart vào session
            session.setAttribute("cart", cart);
            
            response.sendRedirect("PoSHome");
            
        } catch (NumberFormatException e) {
            System.out.println(e);
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
