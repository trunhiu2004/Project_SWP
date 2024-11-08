/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.POS;

import dal.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customers;

/**
 *
 * @author ankha
 */
public class SetCustomerServlet extends HttpServlet {

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
            out.println("<title>Servlet SetCustomerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SetCustomerServlet at " + request.getContextPath() + "</h1>");
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
            String customerId = request.getParameter("id");

            if (customerId != null && !customerId.trim().isEmpty()) {
                // Lưu customer_id vào session
                HttpSession session = request.getSession();
                session.setAttribute("selected_customer_id", Integer.parseInt(customerId));

                // Lấy thông tin customer để trả về
                CustomerDAO customerDAO = new CustomerDAO();
                Customers customer = customerDAO.getCustomerById(Integer.parseInt(customerId));

                if (customer != null) {
                    // Trả về thông tin customer dạng JSON
                    StringBuilder json = new StringBuilder();
                    json.append("{");
                    json.append("\"success\":true,");
                    json.append("\"customerId\":").append(customer.getCustomerId()).append(",");
                    json.append("\"customerName\":\"").append(customer.getCustomerName()).append("\",");
                    json.append("\"customerPhone\":\"").append(customer.getCustomerPhone()).append("\",");
                    json.append("\"customerType\":\"").append(customer.getCustomerType().getTypeName()).append("\"");
                    json.append("}");
                    out.print(json.toString());
                } else {
                    out.print("{\"success\":false,\"message\":\"Customer not found\"}");
                }
            } else {
                // Nếu id rỗng hoặc null, xóa customer khỏi session (walk-in customer)
                HttpSession session = request.getSession();
                session.removeAttribute("selected_customer_id");
                out.print("{\"success\":true,\"message\":\"Set to walk-in customer\"}");
            }

        } catch (Exception e) {
            out.print("{\"success\":false,\"message\":\"" + e.getMessage() + "\"}");
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
