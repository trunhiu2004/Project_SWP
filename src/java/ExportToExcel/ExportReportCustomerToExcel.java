package ExportToExcel;

import dal.ReportCustomerDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ReportCustomer;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class ExportReportCustomerToExcel extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReportCustomerDAO dao = new ReportCustomerDAO();
        List<ReportCustomer> top = dao.getAll();

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=ReportCustomer.xlsx");

        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("Report Customer");
            String[] headerTitle = {"customerId", "customerName", "customerPhone", "totalAmount", "totalOrders"};
            Row headerRow = sheet.createRow(0);
            
            // Tạo tiêu đề cho các cột
            for (int i = 0; i < headerTitle.length; i++) {
                headerRow.createCell(i).setCellValue(headerTitle[i]);
            }

            int rowNum = 1;
            for (ReportCustomer rp : top) {
                Row row = sheet.createRow(rowNum++);
                row.createCell(0).setCellValue(rp.getCustomerId());
                row.createCell(1).setCellValue(rp.getCustomerName());
                row.createCell(2).setCellValue(rp.getCustomerPhone());
                row.createCell(3).setCellValue(rp.getTotalAmount());
                row.createCell(4).setCellValue(rp.getTotalOrders());
            }

            // Ghi tệp Excel ra response
            try (ServletOutputStream out = response.getOutputStream()) {
                workbook.write(out);
                out.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
            request.setAttribute("mess", "Export failed: " + e.getMessage());
            request.getRequestDispatcher("page-report-customer.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Export customer report to Excel";
    }
}
