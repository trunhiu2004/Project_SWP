/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.AccountDAO;
import dal.AccountStatusDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.AccountStatus;
import model.Accounts;
import model.Employees;

/**
 *
 * @author frien
 */
public class StaffUpdateServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet StaffUpdateServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StaffUpdateServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        EmployeeDAO employeeDAO = new EmployeeDAO();
//        AccountDAO accountDAO = new AccountDAO();
//        AccountStatusDAO accountStatusDAO = new AccountStatusDAO();
//        
//        int id = Integer.parseInt(request.getParameter("id"));
//        Employees employee = employeeDAO.getEmployeeById(id);
//        List<Accounts> listAccount = accountDAO.getAllAccount();
        List<AccountStatus>  lstAccountStatus = (List<AccountStatus>) request.getSession().getAttribute("listAccountStatus");
        List<Accounts> lstAccountses = (List<Accounts>) request.getSession().getAttribute("listAccount");
        EmployeeDAO employeeDAO = new EmployeeDAO();
        int id = Integer.parseInt(request.getParameter("id"));
        Employees employee = employeeDAO.getEmployeeById(id);
        request.getSession().setAttribute("listAccountStatus", lstAccountStatus);
        request.getSession().setAttribute("listAccount", lstAccountses);
        request.getSession().setAttribute("employee", employee);
        request.getRequestDispatcher("staff-update.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        AccountDAO accountDAO = new AccountDAO();
        EmployeeDAO employeeDAO = new EmployeeDAO();
        int empId = Integer.parseInt(request.getParameter("empId"));
        int accId = Integer.parseInt(request.getParameter("accId"));
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        int status = Integer.parseInt(request.getParameter("status"));
        String address = request.getParameter("address");
        accountDAO.updateStatus(status, accId);
        employeeDAO.updateEmployee(name, phone, address, empId);
        response.sendRedirect("staffManage");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
