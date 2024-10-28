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
import org.json.simple.JSONObject;

/**
 *
 * @author ankha
 */
public class UpdateCartController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            int storeStockId = Integer.parseInt(request.getParameter("storeStockId"));
            String action = request.getParameter("action");
            int quantity = 1;

            if (action.equals("input")) {
                quantity = Integer.parseInt(request.getParameter("quantity"));
            }

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart != null) {
                StoreStockDAO ssDAO = new StoreStockDAO();
                StoreStock ss = ssDAO.getStoreStockById(storeStockId);

                // Kiểm tra tồn kho
                if (quantity > ss.getStock()) {
                    out.println("{\"error\": \"Insufficient stock\"}");
                    return;
                }

                CartItem item = cart.getItemById(storeStockId);
                if (item != null) {
                    if (action.equals("increase")) {
                        quantity = item.getQuantity() + 1;
                    } else if (action.equals("decrease")) {
                        quantity = item.getQuantity() - 1;
                    }

                    if (quantity > 0) {
                        item.setQuantity(quantity);
                    } else {
                        cart.removeItem(storeStockId);
                    }
                }
                session.setAttribute("cart", cart);

                // Trả về JSON response
                out.println("{\"success\": true, \"total\": " + cart.getTotalMoney() + "}");
            }
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
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();

        try {
            int storeStockId = Integer.parseInt(request.getParameter("storeStockId"));
            String action = request.getParameter("action");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null) {
                json.put("error", "Cart not found");
                out.print(json.toString());
                return;
            }

            CartItem item = cart.findItem(storeStockId);
            if (item == null) {
                json.put("error", "Item not found in cart");
                out.print(json.toString());
                return;
            }

            int currentQty = item.getQuantity();
            int maxQty = item.getStoreStock().getStock();

            switch (action) {
                case "increase":
                    if (currentQty < maxQty) {
                        item.setQuantity(currentQty + 1);
                    }
                    break;
                case "decrease":
                    if (currentQty > 1) {
                        item.setQuantity(currentQty - 1);
                    }
                    break;
                case "input":
                    int newQty = Integer.parseInt(request.getParameter("quantity"));
                    if (newQty > 0 && newQty <= maxQty) {
                        item.setQuantity(newQty);
                    }
                    break;
            }

            session.setAttribute("cart", cart);
            json.put("success", true);
            out.print(json.toString());

        } catch (Exception e) {
            json.put("error", e.getMessage());
            out.print(json.toString());
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
