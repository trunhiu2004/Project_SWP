package controller;

import dal.CustomerDAO;
import dal.CustomerTypesDAO;
import model.Customer;
import model.CustomerType;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class EditCustomer extends HttpServlet {

    private CustomerDAO customerDAO;
    private CustomerTypesDAO customerTypeDAO;

    @Override
    public void init() {
        customerDAO = new CustomerDAO();
        customerTypeDAO = new CustomerTypesDAO(); 
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
           
            int customerId = Integer.parseInt(request.getParameter("id"));

           
            Customer customer = customerDAO.getCustomerId(customerId);
            List<CustomerType> customerTypes = customerTypeDAO.getAllCustomerTypes();

           
            request.setAttribute("customer", customer);
            request.setAttribute("customerTypes", customerTypes);
            request.getRequestDispatcher("edit-customer.jsp").forward(request, response);
        } catch (NumberFormatException | NullPointerException e) {
            
            response.sendRedirect("error-page.jsp");
        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
           
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            String customerName = request.getParameter("customerName");
            String customerPhone = request.getParameter("customerPhone");
            int customerPoint = Integer.parseInt(request.getParameter("point"));
            int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));

            
            CustomerType customerType = customerTypeDAO.getCustomerTypeById(customerTypeId);
            String customerTypeName = customerType.getTypeName();

            
            Customer customer = new Customer(customerId, customerName, customerPhone, customerPoint, customerTypeId, customerTypeName);

            // Cập nhật khách hàng
            customerDAO.updateCustomerAndType(customer);

            
            response.sendRedirect("ListCustomer");
        } catch (NumberFormatException e) {
           
            request.setAttribute("error", "Invalid input data!");
            request.getRequestDispatcher("edit-customer.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet to edit customer details";
    }
}
