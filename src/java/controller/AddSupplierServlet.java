/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.SuppliersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import model.Suppliers;

/**
 *
 * @author hungt
 */
@WebServlet("/addSup")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class AddSupplierServlet extends HttpServlet {

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
            out.println("<title>Servlet AddSupplierServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddSupplierServlet at " + request.getContextPath() + "</h1>");
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

    private String extractFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] items = contentDisposition.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return null;
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
        String appPath = request.getServletContext().getRealPath("");
        File projectRoot = new File(appPath).getParentFile().getParentFile();
        String savePath = projectRoot.getAbsolutePath() + File.separator + "web" + File.separator + "assets" + File.separator + "images" + File.separator + "supplier";

        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        
        String fileName = null;
        for (Part part : request.getParts()) {
            fileName = extractFileName(part);
            if (fileName != null && !fileName.isEmpty()) {
                part.write(savePath + File.separator + fileName);
                request.setAttribute("message", savePath + File.separator + fileName);
            }
        }
        
        HttpSession session = request.getSession();
        String name = request.getParameter("nameSup");
        String email = request.getParameter("emailSup");
        String phone = request.getParameter("phoneSup");
        String person = request.getParameter("personSup");
        String address = request.getParameter("addressSup");
        
        String img = (fileName != null && !fileName.isEmpty()) ?  fileName : null;

        SuppliersDAO sd = new SuppliersDAO();
        Suppliers s = sd.getSupByName(name);
        if (s == null) {
            Suppliers sNew = new Suppliers(name, address, phone, email, person, img);
            sd.insertSup(sNew);
            response.sendRedirect("listSupplier");
        } else {
            session.setAttribute("error", "Loai san pham da ton tai");
            request.getRequestDispatcher("page-add-supplier.jsp").forward(request, response);
        }

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
