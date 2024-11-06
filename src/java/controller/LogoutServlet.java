package controller;

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

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Accounts account = (Accounts) session.getAttribute("account");
        
        if (account != null) {
            EmployeeDAO employeeDAO = new EmployeeDAO();
            Integer employeeId = employeeDAO.getEmployeeIdByAccountId(account.getAccount_id());
            
            if (employeeId != null) {
                EmployeeAttendanceDAO attendanceDAO = new EmployeeAttendanceDAO();
                Timestamp logoutTime = new Timestamp(System.currentTimeMillis());
                
                // Gọi phương thức kết thúc ca làm
                attendanceDAO.endShift(employeeId, logoutTime); // Đảm bảo rằng tổng doanh thu được tính toán và cập nhật
            }
        }
        
        session.removeAttribute("account");
        response.sendRedirect("login");
    }
}
