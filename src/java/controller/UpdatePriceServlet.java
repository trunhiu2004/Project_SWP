/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDateTime;
import model.HistoryPrice;
import model.Products;

/**
 *
 * @author hungt
 */
public class UpdatePriceServlet extends HttpServlet {

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
            out.println("<title>Servlet UpdatePriceServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdatePriceServlet at " + request.getContextPath() + "</h1>");
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
        String id_raw = request.getParameter("product_id");
        int id;
        ProductsDAO pd = new ProductsDAO();
        try {
            id = Integer.parseInt(id_raw);
            Products p = pd.getProductById(id);
            session.setAttribute("product", p);
            request.getRequestDispatcher("update-history.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
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
        ProductsDAO pd = new ProductsDAO();
        String id_raw = request.getParameter("idPro");
        String newPrice_raw = request.getParameter("pricePro");
        int id = Integer.parseInt(id_raw);
        float newPrice = Float.parseFloat(newPrice_raw);
        Products p1 = pd.getProductById(id);
        float price = p1.getPrice();
        String status;
        if (newPrice > price) {
            status = "Tăng giá";
        } else if (newPrice < price) {
            status = "Giảm giá";
        } else {
            status = "Giữ nguyên"; // Giá không thay đổi
        }
        LocalDateTime updatedAt = LocalDateTime.now();

        HistoryPrice hNew = new HistoryPrice(p1,newPrice,price,updatedAt,status);
        pd.insertHisPrice(hNew);
        pd.updateProductPrice(id, newPrice);
        response.sendRedirect("listPrice?product_id="+id);
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
