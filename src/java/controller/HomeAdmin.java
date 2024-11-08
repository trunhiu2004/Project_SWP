/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.InvoiceDAO;
import dal.OrderDAO;
import dal.ProductCategoriesDAO;
import dal.ProductsDAO;
import dal.SalesReportDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Accounts;
import model.CategorySummary;
import model.Invoice;
import model.ProductCategories;
import model.Products;
import model.SalesReport;
import model.TopSellingProduct;

/**
 *
 * @author pqtru
 */
public class HomeAdmin extends HttpServlet {

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
            out.println("<title>Servlet HomeAdmin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeAdmin at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            Accounts account = (Accounts) session.getAttribute("account");
            if (account.getRole_id() == 1) {
                SalesReportDAO reportDAo = new SalesReportDAO();
                List<TopSellingProduct> bestSale = reportDAo.getTopSellingProducts();
                request.setAttribute("top", bestSale);

                List<SalesReport> reports = reportDAo.getAnnualSales();
                request.setAttribute("sum", reports);

                OrderDAO ordertotalPrice = new OrderDAO();
                double totalOrderSale = ordertotalPrice.getTotalOrderSale();
                request.setAttribute("total", totalOrderSale);

                double totalAvg = ordertotalPrice.getTotalOrderAvg();
                request.setAttribute("avg", totalAvg);

                double totalMax = ordertotalPrice.getTotalMax();
                request.setAttribute("max", totalMax);

                ProductCategoriesDAO cate = new ProductCategoriesDAO();
                List<CategorySummary> name = cate.getBestCategory();
                request.setAttribute("best", name);

                request.getRequestDispatcher("home.jsp").forward(request, response);
            } else {
                response.sendRedirect("PoSHome");
            }
        } else {
            response.sendRedirect("login");
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
        doGet(request, response);
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
