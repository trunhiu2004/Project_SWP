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
import java.util.ArrayList;
import java.util.List;
import model_2.Cart;
import model_2.CartItem;
import model_2.Product;

/**
 *
 * @author frien
 */
public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet CartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        
        int productId = Integer.parseInt(request.getParameter("id"));
//        String name = request.getParameter("name");
//        Double price = Double.parseDouble("price");
//        List<Product> listProduct = new ArrayList<>();
//        listProduct.add(new Product(productId, name, price));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
        }
        
        
            // Xử lý thêm sản phẩm mới vào giỏ hàng
            String productName = request.getParameter("name");
            double productPrice = Double.parseDouble(request.getParameter("price"));
            int quantity = 1;

            Product product = new Product(productId, productName, productPrice);
            CartItem cartItem = new CartItem(product, quantity);
            cart.addItem(cartItem);
        

        session.setAttribute("cart", cart);
        response.sendRedirect("PoSHome");
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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        int productId = Integer.parseInt(req.getParameter("productId"));

        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
        }

        if ("increase".equals(action)) {
            // Xử lý tăng số lượng sản phẩm
            cart.updateItem(productId, 1);  // Tăng 1 đơn vị
        } else if ("decrease".equals(action)) {
            // Xử lý giảm số lượng sản phẩm
            cart.updateItem(productId, -1);  // Giảm 1 đơn vị
        } else if ("remove".equals(action)) {
            // Xử lý xóa sản phẩm khỏi giỏ hàng
            cart.removeItem(productId);
        } else {
            // Xử lý thêm sản phẩm mới vào giỏ hàng
            String productName = req.getParameter("productName");
            double productPrice = Double.parseDouble(req.getParameter("productPrice"));
            int quantity = Integer.parseInt(req.getParameter("quantity"));

            Product product = new Product(productId, productName, productPrice);
            CartItem cartItem = new CartItem(product, quantity);
            cart.addItem(cartItem);
        }
        session.setAttribute("cart", cart);

        // Chuyển hướng về lại trang sản phẩm sau khi xử lý
        resp.sendRedirect("PoSHome");
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
