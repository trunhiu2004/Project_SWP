/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.InventoryDAO;
import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.List;
import model.Inventory;
import model.Products;

/**
 *
 * @author PC
 */
public class AddToInventoryServlet extends HttpServlet {

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
            out.println("<title>Servlet AddToInventoryServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToInventoryServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        ProductsDAO pd = new ProductsDAO();
        List<Products> p = pd.getAllProduct();
        session.setAttribute("product", p);
        request.getRequestDispatcher("add-to-inventory.jsp").forward(request, response);

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
        HttpSession session = request.getSession();
        InventoryDAO id = new InventoryDAO();
        ProductsDAO pd = new ProductsDAO();
        String namePro = request.getParameter("namePro");
        String quantity = request.getParameter("quantity");
        int idPro = Integer.parseInt(namePro);
        Inventory i = id.getInventoryByProductId(idPro);
        if (i == null) {
            Products pNew = pd.getProductById(idPro);
            int q = Integer.parseInt(quantity);
            String status;
            String alert;
            if (q == 0) {
                status = "Hết hàng";
                alert = "Khẩn cấp";
            } else if (0 < q && q <= 50) {
                status = "Sắp hết hàng";
                alert = "Cảnh báo";
            } else {
                status = "Còn hàng";
                alert = "Không";
            }  
            LocalDateTime lastUpdate = LocalDateTime.now();
            Inventory iNew = new Inventory(pNew, q, status, lastUpdate, alert);
            id.insertInven(iNew);
            
            response.sendRedirect("listInventory");
        } else {
            session.setAttribute("error", "Loai san pham da ton tai");
            request.getRequestDispatcher("add-to-inventory.jsp").forward(request, response);
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
