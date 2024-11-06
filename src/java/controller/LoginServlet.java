package controller;

import dal.AccountDAO;
import dal.EmployeeAttendanceDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.sql.Timestamp;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Accounts;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("auth-sign-in.jsp").forward(request, response);
    }

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
                Timestamp loginTime = new Timestamp(System.currentTimeMillis());
                EmployeeAttendanceDAO attendanceDAO = new EmployeeAttendanceDAO();
                attendanceDAO.startShift(employeeId, loginTime);
            }

            if (account.getRole_id() == 1) {
                response.sendRedirect("HomeAdmin");
            } else {
                response.sendRedirect("PoSHome");
            }
        }
    }
}
