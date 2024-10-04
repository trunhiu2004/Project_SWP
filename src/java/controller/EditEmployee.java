package controller;

import dal.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Employees;

public class EditEmployee extends HttpServlet {

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
        
        Employees employee = employeeDAO.getEmployeeById(employeeId);
        
        
        if (employee != null) {
            request.setAttribute("employee", employee);  
            request.getRequestDispatcher("edit-employee.jsp").forward(request, response); 
        } else {
            response.sendRedirect("employee-list.jsp");  
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy thông tin từ form
        int employeeId = Integer.parseInt(request.getParameter("employee_id"));
        String employeeName = request.getParameter("employee_name");
        String employeePhone = request.getParameter("employee_phone");
        String employeeAddress = request.getParameter("employee_address");

        
        Employees employee = new Employees(employeeId, employeeName, employeePhone, employeeAddress, 0); // account_id = 0 cho demo
        
        
        employeeDAO.updateEmployee(employee);

        
        response.sendRedirect("EmployeeList");
    }
}
