package controller;

import dal.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteEmployee extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO(); // Khởi tạo DAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int employeeId = Integer.parseInt(request.getParameter("id"));
        
        
        employeeDAO.deleteEmployee(employeeId);
        
        
        response.sendRedirect("EmployeeList");
    }
}
