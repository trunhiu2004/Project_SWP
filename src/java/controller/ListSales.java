package controller;

import dal.SalesListDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.SalesList;

public class ListSales extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SalesListDAO dao = new SalesListDAO();
        List<SalesList> sales = dao.getAllSales();
        
        request.setAttribute("sales", sales);
        request.getRequestDispatcher("page-list-sale.jsp").forward(request, response);
        
        
        

    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Servlet to list sales";
    }
}
