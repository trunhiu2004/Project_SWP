/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.ProfileMng;

import dal.AccountDAO;
import dal.EmployeeDAO;
import model.Accounts;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Employees;
import org.mindrot.jbcrypt.BCrypt;
import utils.PasswordValidator;

/**
 *
 * @author ankha
 */
public class ProfileServlet extends HttpServlet {

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
        String action = request.getParameter("action");

        HttpSession session = request.getSession();
        Accounts account = (Accounts) session.getAttribute("account");

        if (account == null) {
            response.sendRedirect("login");
            return;
        }

        if ("view".equals(action)) {
            viewProfile(request, response, account);
        } else if ("changePassword".equals(action)) {
            changePassword(request, response, account);
        } else {
            response.sendRedirect("home");
        }
    }

    private void viewProfile(HttpServletRequest request, HttpServletResponse response, Accounts account)
            throws ServletException, IOException {
        EmployeeDAO employeeDAO = new EmployeeDAO();
        Employees employee = employeeDAO.getEmployeeByAccountId(account.getAccount_id());

        request.setAttribute("employee", employee);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    private void changePassword(HttpServletRequest request, HttpServletResponse response, Accounts account)
            throws ServletException, IOException {
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        AccountDAO accountDAO = new AccountDAO();

        if (!BCrypt.checkpw(currentPassword, account.getPassword())) {
            request.setAttribute("error", "Mật khẩu hiện tại không đúng");
        } else if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Mật khẩu mới không khớp");
        } else if (!PasswordValidator.isValid(newPassword)) {
            request.setAttribute("error", "Mật khẩu không đáp ứng yêu cầu. " + PasswordValidator.getPasswordRequirements());
        } else {
            boolean success = accountDAO.changePassword(account.getAccount_id(), newPassword);
            if (success) {
                request.setAttribute("message", "Mật khẩu đã được thay đổi thành công");
            } else {
                request.setAttribute("error", "Đã xảy ra lỗi khi thay đổi mật khẩu");
            }
        }

        viewProfile(request, response, account);
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
        processRequest(request, response);
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
