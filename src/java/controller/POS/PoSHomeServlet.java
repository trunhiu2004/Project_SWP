/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.POS;

import dal.OrderDAO;
import dal.StoreStockDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Accounts;
import model.StoreStock;

/**
 *
 * @author frien
 */
public class PoSHomeServlet extends HttpServlet {

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
            out.println("<title>Servlet PoSHomeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PoSHomeServlet at " + request.getContextPath() + "</h1>");
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
            if (account.getRole_id() == 1 || account.getRole_id() == 2) {
                //clear PENDING Order
//                OrderDAO orderDAO = new OrderDAO();
//                orderDAO.scheduleCleanup();

                String success = request.getParameter("success");
                String error = request.getParameter("error");

                if ("true".equals(success)) {
                    request.setAttribute("message", "Thanh toán thành công!");
                    request.setAttribute("messageType", "success");
                } else if (error != null) {
                    String errorMessage = "Có lỗi xảy ra!";
                    if ("payment_failed".equals(error)) {
                        errorMessage = "Thanh toán không thành công!";
                    }
                    request.setAttribute("message", errorMessage);
                    request.setAttribute("messageType", "error");
                }

                StoreStockDAO ss = new StoreStockDAO();
                List<StoreStock> list = ss.getAllStoreStock();
                request.setAttribute("store", list);

                request.getRequestDispatcher("pos-home.jsp").forward(request, response);
            } else {
                response.sendRedirect("login?error=unauthorized");
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
