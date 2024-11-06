package controller;

import dal.ShiftDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.ShiftDetail;

public class ShiftDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");

        if (idParam != null) {
            int shiftManagerId = Integer.parseInt(idParam);
            ShiftDetailDAO shiftDetailDAO = new ShiftDetailDAO();
            List<ShiftDetail> shiftDetails = shiftDetailDAO.getShiftDetailsById(shiftManagerId);
            request.setAttribute("shiftDetails", shiftDetails);
            request.getRequestDispatcher("page-shift-detail.jsp").forward(request, response);
        } else {
            response.sendRedirect("page-list-shift.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
