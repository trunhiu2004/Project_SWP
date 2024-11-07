/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import dal.EmployeeAttendanceDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Timestamp;

import model.Accounts;

/**
 *
 * @author frien
 */
public class LoginServlet extends HttpServlet {

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
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
        Accounts account = (Accounts) session.getAttribute("account");

//        Nếu đã đăng nhập rồi (session có tồn tại account) thì chuyển hướng về các trang theo Role, không sẽ bị xung đột
        if (account != null) {
            if (account.getRole_id() == 1) {
                response.sendRedirect("HomeAdmin");
            } else if (account.getRole_id() == 2) {
                response.sendRedirect("PoSHome");
            }
            return;
        }

//        Chuyển hướng login nếu chưa đăng nhập
        request.getRequestDispatcher("auth-sign-in.jsp").forward(request, response);
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
        String email = request.getParameter("emailLogin");
        String password = request.getParameter("passwordLogin");

        AccountDAO dao = new AccountDAO();
        Accounts account = dao.login(email, password);

        if (account == null) {
            request.setAttribute("mess", "Sai tên đăng nhập hoặc mật khẩu!");
            request.getRequestDispatcher("auth-sign-in.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("account", account);

            EmployeeDAO employeeDAO = new EmployeeDAO();
            Integer employeeId = employeeDAO.getEmployeeIdByAccountId(account.getAccount_id());

            if (employeeId != null) {
                session.setAttribute("employeeId", employeeId); // Lưu employeeId vào session
                Timestamp loginTime = new Timestamp(System.currentTimeMillis());
                EmployeeAttendanceDAO attendanceDAO = new EmployeeAttendanceDAO();
                attendanceDAO.recordLoginTime(employeeId, loginTime);

            }

            // Điều hướng dựa trên vai trò của người dùng
            if (account.getRole_id() == 1) {
                response.sendRedirect("HomeAdmin");
            } else {
                response.sendRedirect("PoSHome");
            }
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
