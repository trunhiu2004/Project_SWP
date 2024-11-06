/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ShiftDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import model.Shift;

/**
 *
 * @author pqtru
 */
public class EditShift extends HttpServlet {

    private ShiftDAO shiftDAO;

    @Override
    public void init() throws ServletException {
        shiftDAO = new ShiftDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int shiftId = Integer.parseInt(request.getParameter("id"));
        Shift shift = shiftDAO.getShiftById(shiftId);

        if (shift != null) {
            request.setAttribute("shift", shift);
            request.getRequestDispatcher("editShift.jsp").forward(request, response);
        } else {
            response.sendRedirect("page-list-shift.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int shiftManageId = Integer.parseInt(request.getParameter("shiftManageId"));
        BigDecimal cashStart = new BigDecimal(request.getParameter("cash_start"));
        BigDecimal cashEnd = new BigDecimal(request.getParameter("cash_end"));
        BigDecimal totalRevenue = new BigDecimal(request.getParameter("total_revenue"));

        Shift shift = new Shift();
        shift.setShiftManageId(shiftManageId);
        
        shift.setTotalRevenue(totalRevenue);

        shiftDAO.updateShift(shift);

        response.sendRedirect("ListShift");
    }
}
