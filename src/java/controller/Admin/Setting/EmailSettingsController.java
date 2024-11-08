/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.Setting;

import dal.EmailSettingsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.EmailSettings;

/**
 *
 * @author ankha
 */
public class EmailSettingsController extends HttpServlet {

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
        String action = request.getParameter("action");
        EmailSettingsDAO dao = new EmailSettingsDAO();

        if ("update".equals(action)) {
            // Get current email settings first
            EmailSettings settings = dao.getEmailSettings();
            boolean isNewSettings = false;
            if (settings == null) {
                settings = new EmailSettings();
                isNewSettings = true;
            }

            // Update fields
            settings.setSmtpServer(request.getParameter("smtpServer"));

            // Safely parse smtpPort
            String smtpPortStr = request.getParameter("smtpPort");
            if (smtpPortStr != null && !smtpPortStr.isEmpty()) {
                try {
                    settings.setSmtpPort(Integer.parseInt(smtpPortStr));
                } catch (NumberFormatException e) {
                    request.setAttribute("message", "Invalid SMTP port number.");
                    request.getRequestDispatcher("emailSettings.jsp").forward(request, response);
                    return;
                }
            } else {
                request.setAttribute("message", "SMTP port is required.");
                request.getRequestDispatcher("emailSettings.jsp").forward(request, response);
                return;
            }

            settings.setAuthPassword(request.getParameter("authPassword"));
            settings.setFromEmail(request.getParameter("fromEmail"));

            boolean updateSuccess;
            if (isNewSettings) {
                updateSuccess = dao.insertEmailSettings(settings);
            } else {
                updateSuccess = dao.updateEmailSettings(settings);
            }

            if (updateSuccess) {
                request.setAttribute("message", "Email settings updated successfully.");
            } else {
                request.setAttribute("message", "Failed to update email settings.");
            }
        }

        // Get current email settings
        EmailSettings currentSettings = dao.getEmailSettings();
        request.setAttribute("emailSettings", currentSettings);

        request.getRequestDispatcher("emailSettings.jsp").forward(request, response);
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
        processRequest(request, response);
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
