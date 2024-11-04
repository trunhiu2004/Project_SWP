/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import dal.EmailTemplateDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;
import model.Accounts;
import model.EmailTemplate;
import verify.SendEmail;
import java.sql.SQLException;

/**
 *
 * @author frien
 */
public class ForgetPassword extends HttpServlet {

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
            out.println("<title>Servlet ForgetPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgetPassword at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
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
        String email = request.getParameter("emailReset");
        if (checkDuplicate(email)) {
            String token = UUID.randomUUID().toString();
            String link = "http://localhost:9999/SWP_Project/resetPassword?email=" + email + "&tokenReset=" + token;

            request.getSession().setAttribute("emailReset", email);

            try {
                // Lấy template từ cơ sở dữ liệu
                EmailTemplateDAO templateDAO = new EmailTemplateDAO();
                EmailTemplate template = templateDAO.getTemplateByName("Password Reset Template");

                if (template != null) {
                    // Thay thế các biến trong template
                    String content = template.getContent()
                            .replace("{{email}}", email)
                            .replace("{{link}}", link);

                    // Gửi email
                    SendEmail se = new SendEmail();
                    se.send(email, template.getSubject(), content);

                    request.getSession().setAttribute("tokenReset", token);
                    request.getSession().setAttribute("status", "resetPass");
                    request.getRequestDispatcher("auth-confirm-mail.jsp").forward(request, response);
                } else {
                    // Xử lý khi không tìm thấy template
                    request.setAttribute("error", "Lỗi hệ thống: Không tìm thấy mẫu email đặt lại mật khẩu.");
                    request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("error", "Lỗi hệ thống: Không thể gửi email đặt lại mật khẩu.");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Email không tồn tại trong hệ thống!");
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
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

    private boolean checkDuplicate(String email) {
        AccountDAO accDAO = new AccountDAO();
        List<Accounts> listAcc = accDAO.getAllAccount();
        for (Accounts accounts : listAcc) {
            if (accounts.getEmail().equalsIgnoreCase(email)) {
                return true;
            }
        }
        return false;
    }
}
