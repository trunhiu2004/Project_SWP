/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.CouponDAO;
import dal.PromotionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Promotion;

/**
 *
 * @author frien
 */
public class PromotionManageServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet PromotionManageServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PromotionManageServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PromotionDAO promotionDAO  = new PromotionDAO();
        List<String> statuses = promotionDAO.getStatuses();
        request.getSession().setAttribute("statuses", statuses);
        request.setAttribute("listPromotion", promotionDAO.getAllPromotion());
        request.getRequestDispatcher("promotion-list.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PromotionDAO promotionDAO = new PromotionDAO();
        String promotionCode = request.getParameter("promotionCode");
        String description = request.getParameter("description");
        String promotionStatus = request.getParameter("promotionStatus");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String discountAmount = request.getParameter("discountAmount");
        
        
        List<Promotion> filteredPromotion = promotionDAO.getFilteredPromotion(promotionCode, description, discountAmount, startDate, endDate, promotionStatus);

        request.setAttribute("listPromotion", filteredPromotion);
        request.setAttribute("promotionCode", promotionCode);
        request.setAttribute("description",description);
        request.setAttribute("promotionStatus", promotionStatus);
        request.setAttribute("startDate", startDate);
        request.setAttribute("endDate", endDate);
        request.setAttribute("discountAmount", discountAmount);
        
        request.getRequestDispatcher("promotion-list.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
