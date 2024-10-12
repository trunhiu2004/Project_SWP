<%-- 
    Document   : edit-invoice
    Created on : Oct 13, 2024, 4:25:11 AM
    Author     : ankha
--%>

<%@ page import="model.Invoice" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Invoice</title>
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">
        <script src="assets/js/backend-bundle.min.js"></script>
        <script src="assets/js/app.js"></script>

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
                                            <h4 class="card-title mb-0">Edit Invoice</h4>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                    <% Invoice invoice = (Invoice) request.getAttribute("invoice"); %>
                                    <form action="update-invoice" method="post">
                                        <input type="hidden" name="invoiceId" value="<%= invoice.getInvoiceId() %>">
                                        <div class="form-group">
                                            <label>Invoice Date:</label>
                                            <input type="text" name="invoiceDate" class="form-control" value="<%= invoice.getInvoiceDate() %>">
                                        </div>
                                        <div class="form-group">
                                            <label>Total Amount:</label>
                                            <input type="number" step="0.01" name="totalAmount" class="form-control" value="<%= invoice.getTotalAmount() %>">
                                        </div>
                                        <div class="form-group">
                                            <label>Status:</label>
                                            <select name="status" class="form-control">
                                                <option value="Paid" <%= invoice.getStatus().equals("Paid") ? "selected" : "" %>>Paid</option>
                                                <option value="Unpaid" <%= invoice.getStatus().equals("Unpaid") ? "selected" : "" %>>Unpaid</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Payment Method:</label>
                                            <input type="text" name="paymentMethodName" class="form-control" value="<%= invoice.getPaymentMethodName() %>">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Update Invoice</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

