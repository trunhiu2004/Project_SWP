/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ShopDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import model.Shop;

/**
 *
 * @author pqtru
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class EditShop extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ShopDAO shopDAO;

    @Override
    public void init() {
        shopDAO = new ShopDAO(); // Khởi tạo DAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int shopId = Integer.parseInt(request.getParameter("id"));
        Shop shop = shopDAO.getShopId(shopId);

        if (shop != null) {
            request.setAttribute("shop", shop);
            request.getRequestDispatcher("editshop.jsp").forward(request, response);
        } else {
            response.sendRedirect("page-list-shop.jsp");
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
        int shopId = Integer.parseInt(request.getParameter("shop_id"));
        String shopName = request.getParameter("shop_name");
        String shopAddress = request.getParameter("shop_address");
        String shopPhone = request.getParameter("shop_phone");
        String shopEmail = request.getParameter("shop_email");
        String shopOpening = request.getParameter("shop_opening_hours");

        String appPath = request.getServletContext().getRealPath("");
        File projectRoot = new File(appPath).getParentFile().getParentFile();
        String savePath = projectRoot.getAbsolutePath() + File.separator + "web" + File.separator + "assets" + File.separator + "images" + File.separator + "shop";

        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }

        String fileName = null;
        for (Part part : request.getParts()) {
            if (part.getName().equals("shop_logo")) { // Đảm bảo rằng bạn đã sử dụng đúng tên input cho logo
                fileName = extractFileName(part);
                if (fileName != null && !fileName.isEmpty()) {
                    part.write(savePath + File.separator + fileName);
                    request.setAttribute("message", savePath + File.separator + fileName);
                }
            }
        }

        System.out.println("Uploaded file name: " + fileName);

        String shopLogo = (fileName != null && !fileName.isEmpty()) ? fileName : request.getParameter("existing_shop_logo"); // Lấy logo hiện tại nếu không có logo mới

        Shop shop = new Shop(shopId, shopName, shopAddress, shopPhone, shopEmail, shopOpening, shopLogo);

        shopDAO.updateShop(shop);

        response.sendRedirect("ListShop");
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
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}






