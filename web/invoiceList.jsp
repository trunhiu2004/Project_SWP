<%@ page import="model.Invoice" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Invoice List</title>
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
                                <div class="table-responsive rounded mb-3">
                                    <table class="data-table table mb-0 tbl-server-info">
                                        <thead class="bg-white text-uppercase">
                                            <tr class="ligth ligth-data">
                                                <th>Invoice ID</th>
                                                <th>Invoice Date</th>
                                                <th>Total Amount</th>
                                                <th>Status</th>
                                                <th>Employee Name</th>
                                                <th>Customer Name</th>
                                                <th>Payment Method</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody class="ligth-body">
                                        <%
                                            List<Invoice> invoices = (List<Invoice>) request.getAttribute("invoices");
                                            if (invoices == null || invoices.isEmpty()) {
                                                out.println("<tr><td colspan='7'>No invoices found.</td></tr>");
                                            } else {
                                                for (Invoice invoice : invoices) {
                                        %>
                                        <tr>
                                            <td><%= invoice.getInvoiceId() %></td>
                                            <td><%= invoice.getInvoiceDate() %></td>
                                            <td><%= invoice.getTotalAmount() %></td>
                                            <td><%= invoice.getStatus() %></td>
                                            <td><%= invoice.getEmployeeName() %></td>
                                            <td><%= invoice.getCustomerName() %></td>
                                            <td><%= invoice.getPaymentMethodName() %></td>
                                            <td>
                                                <a class="badge badge-info" href="invoice-detail?invoiceId=<%= invoice.getInvoiceId() %>">
                                                    View
                                                </a>
                                                <a href="edit-invoice?invoiceId=<%= invoice.getInvoiceId() %>" class="badge badge-primary">
                                                    Edit
                                                </a>

                                                <a class="badge badge-warning" href="delete-invoice?invoiceId=<%= invoice.getInvoiceId() %>">
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
