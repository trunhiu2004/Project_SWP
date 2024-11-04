package controller;

import dal.ReportCustomerDAO;
import model.ReportCustomer;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

public class ListCustomerReport extends HttpServlet {
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReportCustomerDAO dao = new ReportCustomerDAO();
        
        
        String searchTerm = request.getParameter("search");
        List<ReportCustomer> top;

        
        if (searchTerm != null && !searchTerm.trim().isEmpty()) {
            top = dao.searchCustomers(searchTerm);
        } else {
            top = dao.getAll();
        }

        request.setAttribute("top", top);
        request.getRequestDispatcher("page-report-customer.jsp").forward(request, response);
    }
   
    

    
    public String getServletInfo() {
        return "List Customer Report Servlet";
    }
}
