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
import model.StoreStock;

/**
 *
 * @author ankha
 */
public class SearchProductServlet extends HttpServlet {

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
            out.println("<title>Servlet SearchProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchProductServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        try {
            String barcode = request.getParameter("barcode");

            if (barcode == null || barcode.trim().isEmpty()) {
                out.println("{\"error\":\"Barcode không được để trống\"}");
                return;
            }

            System.out.println("Searching for barcode: " + barcode); // Debug log

            StoreStockDAO dao = new StoreStockDAO();
            StoreStock product = dao.findByBarcode(barcode.trim());

            if (product != null) {
                // Tạo JSON response
                StringBuilder json = new StringBuilder();
                json.append("{");
                json.append("\"storeStockId\":").append(product.getStoreStockId()).append(",");
                json.append("\"stock\":").append(product.getStock()).append(",");

                if (product.getInventory() != null && product.getInventory().getProduct() != null) {
                    json.append("\"productName\":\"").append(product.getInventory().getProduct().getName()).append("\",");
                    json.append("\"price\":").append(product.getInventory().getProduct().getPrice());
                }

                if (product.getDiscount() != null) {
                    json.append(",\"discountPrice\":").append(product.getDiscount().getPriceSell());
                }

                json.append("}");

                System.out.println("Response: " + json.toString()); // Debug log
                out.println(json.toString());
            } else {
                out.println("{\"error\":\"Không tìm thấy sản phẩm\"}");
            }
        } catch (Exception e) {
            System.out.println("Error in SearchProductServlet: " + e.getMessage());
            e.printStackTrace();
            out.println("{\"error\":\"" + e.getMessage() + "\"}");
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
