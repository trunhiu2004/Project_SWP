/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.InventoryDAO;
import dal.ProductCategoriesDAO;
import dal.ProductsDAO;
import dal.SuppliersDAO;
import dal.WeightUnitDAO;
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
import java.time.LocalDate;
import model.Inventory;
import model.ProductCategories;
import model.Products;
import model.Suppliers;
import model.WeightUnit;

/**
 *
 * @author hungt
 */

@WebServlet("/importPro")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)

public class ImportProductServlet extends HttpServlet {
   
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
            out.println("<title>Servlet ImportProductServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ImportProductServlet at " + request.getContextPath () + "</h1>");
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
        HttpSession session = request.getSession();
        String id_raw = request.getParameter("inventory_id");
        int id;
        InventoryDAO inventoryd = new InventoryDAO();
        try {
            id = Integer.parseInt(id_raw);
            Inventory inven = inventoryd.getInventoryById(id);
            session.setAttribute("inventory", inven);
            request.getRequestDispatcher("import-product.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
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
        String savePath = projectRoot.getAbsolutePath() + File.separator + "web" + File.separator + "assets" + File.separator + "images" + File.separator + "product";

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
        String cate_raw = request.getParameter("catePro");
        String name = request.getParameter("namePro");
        String barcode = request.getParameter("barcode");
        String price_raw = request.getParameter("pricePro");
        String unit_raw = request.getParameter("unitPro");
        String supplier_raw = request.getParameter("supPro");
        String manufactureDateStr = request.getParameter("manufactureDate");
        String expirationDateStr = request.getParameter("expirationDate");
        String img = (fileName != null && !fileName.isEmpty()) ? fileName : null;

        ProductsDAO pd = new ProductsDAO();
        SuppliersDAO sd = new SuppliersDAO();
        WeightUnitDAO wud = new WeightUnitDAO();
        ProductCategoriesDAO pcd = new ProductCategoriesDAO();
        int latestBatch = pd.getLatestBatchByName(name); // Hàm lấy batch mới nhất theo tên
        int newBatch = latestBatch + 1;
        int cate = Integer.parseInt(cate_raw);
        ProductCategories ci = pcd.getCategoryById(cate);
        int unit = Integer.parseInt(unit_raw);
        WeightUnit ui = wud.getUnitById(unit);
        int sup = Integer.parseInt(supplier_raw);
        Suppliers si = sd.getSupById(sup);
        float price = Float.parseFloat(price_raw);
        LocalDate manufactureDate = LocalDate.parse(manufactureDateStr);
        LocalDate expirationDate = LocalDate.parse(expirationDateStr);
        Products pNew = new Products(name, price, img, barcode, ci, si, ui, manufactureDate, expirationDate, newBatch);
        pd.insertPro(pNew);
        response.sendRedirect("addToInventory");
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
