/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.Setting;

import dal.EmailTemplateDAO;
import model.EmailTemplate;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ankha
 */
public class EmailTemplateServlet extends HttpServlet {

    private EmailTemplateDAO templateDAO;

    public void init() {
        templateDAO = new EmailTemplateDAO();
    }

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
            out.println("<title>Servlet EmailTemplateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EmailTemplateServlet at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteTemplate(request, response);
                    break;
                default:
                    listTemplates(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
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
        String action = request.getParameter("action");

        try {
            switch (action) {
                case "create":
                    createTemplate(request, response);
                    break;
                case "update":
                    updateTemplate(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listTemplates(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        List<EmailTemplate> templates = templateDAO.getAllTemplates();
        request.setAttribute("templates", templates);
        request.getRequestDispatcher("/emailTemplates.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/emailTemplateForm.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        EmailTemplate template = templateDAO.getTemplateById(id);
        request.setAttribute("template", template);
        request.getRequestDispatcher("/emailTemplateForm.jsp").forward(request, response);
    }

    private void createTemplate(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String templateName = request.getParameter("templateName");
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");
        String variables = request.getParameter("variables");

        EmailTemplate newTemplate = new EmailTemplate();
        newTemplate.setTemplateName(templateName);
        newTemplate.setSubject(subject);
        newTemplate.setContent(content);
        newTemplate.setVariables(variables);

        templateDAO.addTemplate(newTemplate);
        response.sendRedirect("emailTemplates");
    }

    private void updateTemplate(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String templateName = request.getParameter("templateName");
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");
        String variables = request.getParameter("variables");

        EmailTemplate template = new EmailTemplate();
        template.setTemplateId(id);
        template.setTemplateName(templateName);
        template.setSubject(subject);
        template.setContent(content);
        template.setVariables(variables);

        templateDAO.updateTemplate(template);
        response.sendRedirect("emailTemplates");
    }

    private void deleteTemplate(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        templateDAO.deleteTemplate(id);
        response.sendRedirect("emailTemplates");
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
