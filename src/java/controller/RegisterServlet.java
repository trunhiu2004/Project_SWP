/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import dal.EmailTemplateDAO;
import dal.MailogDAO;
import model.Accounts;
import model.Employees;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;
import model.EmailTemplate;
import verify.RandomCode;
import verify.SendEmail;
import java.sql.SQLException;

/**
 *
 * @author frien
 */
public class RegisterServlet extends HttpServlet {

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
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("auth-sign-up.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("emailRegister");
        if (!checkDuplicate(email)) {
            String token = UUID.randomUUID().toString();
            // Lấy base URL động
            String baseURL = request.getScheme() + "://"
                    + request.getServerName() + ":"
                    + request.getServerPort()
                    + request.getContextPath();

            // Tạo link reset password với base URL động
            String link = baseURL + "/changePassword?email=" + email + "&tokenReset=" + token;

            request.getSession().setAttribute("emailRegister", email);

            try {
                // Lấy template từ cơ sở dữ liệu
                EmailTemplateDAO templateDAO = new EmailTemplateDAO();
                EmailTemplate template = templateDAO.getTemplateByName("Register Confirmation Template");
                MailogDAO mailogDAO = new MailogDAO();
                if (template != null) {
                    // Thay thế các biến trong template
                    String content = template.getContent()
                            .replace("{{email}}", email)
                            .replace("{{link}}", link);

                    // Gửi email
                    SendEmail se = new SendEmail();
                    try {
                        se.send(email, template.getSubject(), content);
                        // Ghi log thành công
                        mailogDAO.addMailLog(email, template.getSubject(), content, "SUCCESS", null, template.getTemplateId());

                        request.getSession().setAttribute("token", token);
                        request.getSession().setAttribute("status", "register");
                        request.getRequestDispatcher("auth-confirm-mail.jsp").forward(request, response);
                    } catch (RuntimeException e) {
                        // Ghi log thất bại
                        mailogDAO.addMailLog(email, template.getSubject(), content, "FAILED", e.getMessage(), template.getTemplateId());
                        throw e;
                    }
                } else {
                    // Xử lý khi không tìm thấy template
                    request.setAttribute("error", "Lỗi hệ thống: Không tìm thấy mẫu email.");
                    request.getRequestDispatcher("auth-sign-up.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("error", "Lỗi hệ thống: Không thể gửi email xác nhận.");
                request.getRequestDispatcher("auth-sign-up.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Email đã tồn tại!");
            request.getRequestDispatcher("auth-sign-up.jsp").forward(request, response);
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
