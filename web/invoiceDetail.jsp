<%-- 
    Document   : invoiceDetail
    Created on : Oct 13, 2024, 2:31:39 AM
    Author     : ankha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                        <h4 class="card-title mb-0">Invoice#<%= invoice.getInvoiceId() %></h4>
                                        <% } else { %>
                                        <h4 class="card-title mb-0">Invoice Not Found</h4>
                                        <% } %>
                                    </div>
                                    <div class="invoice-btn">
                                        <% if (invoice != null) { %>
                                        <button type="button" class="btn btn-primary-dark mr-2" onclick="printInvoice()">
                                            <i class="fa fa-print"></i> Print
                                        </button>
                                        <a href="download-invoice?invoiceId=<%= invoice.getInvoiceId() %>" class="btn btn-primary-dark">
                                            <i class="fa fa-file-pdf"></i> PDF
                                        </a>
                                        <% } %>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <% if (invoice != null) { %>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <img src="assets/images/logo.png" class="logo-invoice img-fluid mb-3">
                                            <h5 class="mb-0">Hello, <%= invoice.getEmployeeName() %></h5>
                                            <p>Customer: <%= invoice.getCustomerName() %></p>
                                            <p>This invoice is issued for your recent transaction. Below you will find all the details.</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-responsive-sm">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Invoice Date</th>
                                                            <th scope="col">Total Amount</th>
                                                            <th scope="col">Status</th>
                                                            <th scope="col">Payment Method</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td><%= invoice.getInvoiceDate() %></td>
                                                            <td>$<%= invoice.getTotalAmount() %></td>
                                                            <td><span class="badge <%= invoice.getStatus().equals("Paid") ? "badge-success" : "badge-danger" %>"><%= invoice.getStatus() %></span></td>
                                                            <td><%= invoice.getPaymentMethodName() %></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h5 class="mb-3">Products Bought</h5>
                                            <div class="table-responsive-sm">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center" scope="col">#</th>
                                                            <th scope="col">Product Name</th>
                                                            <th class="text-center" scope="col">Quantity</th>
                                                            <th class="text-center" scope="col">Unit Price</th>
                                                            <th class="text-center" scope="col">Total Price</th>
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
                                                            <th class="text-center" scope="row"><%= index++ %></th>
                                                            <td><%= detail.getProductName() %></td>
                                                            <td class="text-center"><%= detail.getQuantity() %></td>
                                                            
                                                            <td class="text-center"><fmt:formatNumber value="<%= detail.getUnitPrice() %>" pattern="#,##0" />₫</td>
                                                            <td class="text-center"><fmt:formatNumber value="<%= detail.getTotalPrice() %>" pattern="#,##0" />₫</td>
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
                                            <b class="text-danger">Notes:</b>
                                            <p class="mb-0">Please ensure that all the details in the invoice are correct. Contact us for any discrepancies or questions.</p>
                                        </div>
                                    </div>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
