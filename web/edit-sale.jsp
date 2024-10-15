<%-- 
    Document   : edit-sale
    Created on : Oct 13, 2024, 6:09:42 AM
    Author     : ankha
--%>

<%@ page import="model.Sale" %>
<%@ page import="model.OrderDetail" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Edit Sale</title>
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
                                <h4 class="mb-3">Edit Sale</h4>
                                <div class="card">
                                    <div class="card-body">
                                    <% Sale sale = (Sale) request.getAttribute("sale"); %>
                                    <form action="edit-sale" method="post">
                                        <input type="hidden" name="orderId" value="<%= sale.getOrderId() %>">
                                        <div class="form-group">
                                            <label>Order Date</label>
                                            <input type="date" name="orderDate" class="form-control" value="<%= sale.getOrderDate() %>" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Total Amount</label>
                                            <input type="number" name="totalAmount" class="form-control" value="<%= sale.getTotalAmount() %>" step="0.01" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Order Status</label>
                                            <select name="orderStatus" class="form-control" required>
                                                <option value="paid" <%= sale.getOrderStatus().equals("paid") ? "selected" : "" %>>Paid</option>
                                                <option value="unpaid" <%= sale.getOrderStatus().equals("unpaid") ? "selected" : "" %>>Unpaid</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Payment Method *</label>
                                            <select name="paymentMethodId" class="form-control selectpicker" required>
                                                <c:forEach var="paymentMethod" items="${paymentMethods}">
                                                    <option value="${paymentMethod.paymentMethodId}" ${paymentMethod.paymentMethodId == currentPaymentMethodId ? 'selected' : ''}>${paymentMethod.paymentMethodName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Update Sale</button>
                                        <a href="sale-list" class="btn btn-secondary">Cancel</a>
                                    </form>

                                    <h5 class="mt-4">Order Details</h5>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Quantity</th>
                                                <th>Unit Price</th>
                                                <th>Total Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% List<OrderDetail> orderDetails = (List<OrderDetail>) request.getAttribute("orderDetails"); %>
                                            <% for (OrderDetail detail : orderDetails) { %>
                                            <tr>
                                                <td><%= detail.getProductName() %></td>
                                                <td><%= detail.getQuantity() %></td>
                                                <td>$<%= detail.getUnitPrice() %></td>
                                                <td>$<%= detail.getTotalPrice() %></td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>