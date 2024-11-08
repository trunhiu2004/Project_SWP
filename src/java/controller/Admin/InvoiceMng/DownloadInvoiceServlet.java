/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Admin.InvoiceMng;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import dal.DBContext;
import dal.InvoiceDAO;
import model.Invoice;
import model.OrderDetail;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ankha
 */
public class DownloadInvoiceServlet extends HttpServlet {

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
            out.println("<title>Servlet DownloadInvoiceServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DownloadInvoiceServlet at " + request.getContextPath() + "</h1>");
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
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int invoiceId = Integer.parseInt(request.getParameter("invoiceId"));
        InvoiceDAO invoiceDAO = new InvoiceDAO();

        Invoice invoice = invoiceDAO.getInvoiceById(invoiceId);
        List<OrderDetail> orderDetails = invoiceDAO.getOrderDetailsByOrderId(invoice.getOrderId());

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=invoice_" + invoiceId + ".pdf");

        try {
            Document document = new Document();
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();

            BaseFont bf = BaseFont.createFont("c:/windows/fonts/arial.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
            Font font = new Font(bf, 12);

            document.add(new Paragraph("Invoice #" + invoiceId, font));
            document.add(new Paragraph("Invoice Date: " + invoice.getInvoiceDate(), font));
            document.add(new Paragraph("Total Amount: $" + invoice.getTotalAmount(), font));
            document.add(new Paragraph("Status: " + invoice.getStatus(), font));
            document.add(new Paragraph("Payment Method: " + invoice.getPaymentMethodName(), font));
            document.add(new Paragraph("Employee: " + invoice.getEmployeeName(), font));
            document.add(new Paragraph("Customer: " + invoice.getCustomerName(), font));
            document.add(new Paragraph(" "));

            PdfPTable table = new PdfPTable(5);
            table.addCell(new Phrase("No.", font));
            table.addCell(new Phrase("Product Name", font));
            table.addCell(new Phrase("Quantity", font));
            table.addCell(new Phrase("Unit Price", font));
            table.addCell(new Phrase("Total Price", font));

            int index = 1;
            for (OrderDetail detail : orderDetails) {
                table.addCell(new Phrase(String.valueOf(index++), font));
                table.addCell(new Phrase(detail.getProductName(), font));
                table.addCell(new Phrase(String.valueOf(detail.getQuantity()), font));
                table.addCell(new Phrase("$" + detail.getUnitPrice(), font));
                table.addCell(new Phrase("$" + detail.getTotalPrice(), font));
            }

            document.add(table);
            document.close();
        } catch (DocumentException e) {
            throw new ServletException("Error generating PDF", e);
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
