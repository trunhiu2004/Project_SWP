<%-- 
    Document   : invoiceDetail
    Created on : Oct 13, 2024, 2:31:39 AM
    Author     : ankha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="model.Invoice" %>
<%@ page import="java.util.List" %>
<%@ page import="model.OrderDetail" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Invoice Detail</title>
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">
        <script src="assets/js/backend-bundle.min.js"></script>
        <script src="assets/js/app.js"></script>

        <script>
            function printInvoice() {
                window.print();
            }
        </script>
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="components/sidebar.jsp"></jsp:include>
            <jsp:include page="components/topnavbar.jsp"></jsp:include>
                <div class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card card-block card-stretch card-height print rounded">
                                    <div class="card-header d-flex justify-content-between bg-primary header-invoice">
                                        <div class="iq-header-title">
                                        <%
                                            Invoice invoice = (Invoice) request.getAttribute("invoice");
                                            if (invoice != null) {
                                        %>
                                        <h4 class="card-title mb-0">Hoá Đơn#<%= invoice.getInvoiceId()%></h4>
                                        <% } else { %>
                                        <h4 class="card-title mb-0">Invoice Not Found</h4>
                                        <% } %>
                                    </div>
                                    <div class="invoice-btn">
                                        <% if (invoice != null) {%>
                                        <button type="button" class="btn btn-primary-dark mr-2" onclick="printInvoice()">
                                            <i class="fa fa-print"></i> In hoá đơn
                                        </button>
                                        <a href="download-invoice?invoiceId=<%= invoice.getInvoiceId()%>" class="btn btn-primary-dark">
                                            <i class="fa fa-file-pdf"></i> PDF
                                        </a>
                                        <% } %>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <% if (invoice != null) {%>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <img src="assets/images/logo.png" class="logo-invoice img-fluid mb-3">
                                            <h5 class="mb-0">Chào, <%= invoice.getEmployeeName()%></h5>
                                            <p>Khách hàng: <%= invoice.getCustomerName()%></p>
                                            <p>Hóa đơn này được phát hành cho giao dịch gần đây của bạn. Dưới đây bạn sẽ tìm thấy tất cả các chi tiết.</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-responsive-sm">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Ngày tạo hoá đơn</th>
                                                            <th scope="col">Tổng tiền thanh toán</th>
                                                            <th scope="col">Trạng thái</th>
                                                            <th scope="col">Phương thức thanh toán</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <%
                                                                    String rawDate = invoice.getInvoiceDate();
                                                                    try {
                                                                        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                                                        Date date = inputFormat.parse(rawDate);

                                                                        SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
                                                                        String formattedDate = outputFormat.format(date);
                                                                %>
                                                                <%= formattedDate%>
                                                                <%
                                                                } catch (Exception e) {
                                                                %>
                                                                <%= rawDate%> <!-- Display raw date if parsing fails -->
                                                                <%
                                                                    }
                                                                %>
                                                            </td>

                                                            <td><fmt:formatNumber value="<%= invoice.getTotalAmount()%>" pattern="#,##0" />₫</td>
                                                            <td><span class="badge <%= invoice.getStatus().equals("COMPLETED") ? "badge-success" : "badge-danger"%>"><%= invoice.getStatus()%></span></td>
                                                            <td><%= invoice.getPaymentMethodName()%></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h5 class="mb-3">Sản phẩm đã mua</h5>
                                            <div class="table-responsive-sm">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center" scope="col">#</th>
                                                            <th scope="col">Tên sản phẩm</th>
                                                            <th class="text-center" scope="col">Số lượng</th>
                                                            <th class="text-center" scope="col">Đơn giá</th>
                                                            <th class="text-center" scope="col">Thành tiền</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            List<OrderDetail> orderDetails = (List<OrderDetail>) request.getAttribute("orderDetails");
                                                            if (orderDetails != null && !orderDetails.isEmpty()) {
                                                                int index = 1;
                                                                for (OrderDetail detail : orderDetails) {
                                                        %>
                                                        <tr>
                                                            <th class="text-center" scope="row"><%= index++%></th>
                                                            <td><%= detail.getProductName()%></td>
                                                            <td class="text-center"><%= detail.getQuantity()%></td>

                                                            <td class="text-center"><fmt:formatNumber value="<%= detail.getUnitPrice()%>" pattern="#,##0" />₫</td>
                                                            <td class="text-center"><fmt:formatNumber value="<%= detail.getTotalPrice()%>" pattern="#,##0" />₫</td>
                                                        </tr>
                                                        <%       }
                                                        } else { %>
                                                        <tr>
                                                            <td colspan="5" class="text-center">No products found for this invoice.</td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <b class="text-danger">Ghi chú:</b>
                                            <p class="mb-0">Vui lòng đảm bảo rằng tất cả các chi tiết trong hóa đơn là chính xác. Liên hệ với quản lý nếu có bất kỳ sự khác biệt hoặc thắc mắc nào.</p>
                                        </div>
                                    </div>
                                    <% }%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
