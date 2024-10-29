/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.JsonObject;
import dal.CustomerDAO;
import dal.CustomerTypeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.CustomerType;
import model.Customers;

/**
 *
 * @author ankha
 */
public class AddCustomerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet AddCustomerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCustomerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        JsonObject jsonResponse = new JsonObject();

        try {
            // Lấy thông tin từ form
            String customerName = request.getParameter("customerName");
            String customerPhone = request.getParameter("customerPhone");
            int customerTypeId = Integer.parseInt(request.getParameter("customerType"));

            // Validate dữ liệu
            if (customerName == null || customerName.trim().isEmpty()
                    || customerPhone == null || customerPhone.trim().isEmpty()) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Vui lòng điền đầy đủ thông tin");
                out.print(jsonResponse.toString());
                return;
            }

            // Kiểm tra số điện thoại
            if (!customerPhone.matches("\\d{10}")) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Số điện thoại không hợp lệ");
                out.print(jsonResponse.toString());
                return;
            }

            // Kiểm tra số điện thoại đã tồn tại
            CustomerDAO customerDAO = new CustomerDAO();
            if (customerDAO.isPhoneNumberExists(customerPhone)) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Số điện thoại đã tồn tại");
                out.print(jsonResponse.toString());
                return;
            }

            // Lấy CustomerType
            CustomerTypeDAO customerTypeDAO = new CustomerTypeDAO();
            CustomerType customerType = customerTypeDAO.get(customerTypeId);
            if (customerType == null) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Loại khách hàng không hợp lệ");
                out.print(jsonResponse.toString());
                return;
            }

            // Tạo đối tượng Customer mới
            Customers newCustomer = new Customers();
            newCustomer.setCustomerName(customerName.trim());
            newCustomer.setCustomerPhone(customerPhone.trim());
            newCustomer.setCustomerType(customerType);
            newCustomer.setPoint(0); // Khách hàng mới có 0 điểm

            // Thêm khách hàng mới vào database
            int customerId = customerDAO.add(newCustomer);

            if (customerId > 0) {
                jsonResponse.addProperty("success", true);
                jsonResponse.addProperty("customerId", customerId);
                jsonResponse.addProperty("message", "Thêm khách hàng thành công");
            } else {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Không thể thêm khách hàng");
            }

        } catch (NumberFormatException e) {
            jsonResponse.addProperty("success", false);
            jsonResponse.addProperty("message", "Dữ liệu không hợp lệ");
            e.printStackTrace();
        } catch (Exception e) {
            jsonResponse.addProperty("success", false);
            jsonResponse.addProperty("message", "Có lỗi xảy ra: " + e.getMessage());
            e.printStackTrace();
        }

        out.print(jsonResponse.toString());
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
