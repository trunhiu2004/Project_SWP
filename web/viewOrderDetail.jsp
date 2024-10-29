<%-- 
    Document   : viewOrderDetail
    Created on : Oct 15, 2024, 8:35:33 PM
    Author     : ankha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Order Detail</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>
        </head>
        <body class="">
            <!-- loader Start -->
            <div id="loading">
                <div id="loading-center"></div>
            </div>
            <!-- loader END -->

            <!-- Wrapper Start -->
            <div class="wrapper">
            <jsp:include page="components/sidebar.jsp"></jsp:include>
            <jsp:include page="components/topnavbar.jsp"></jsp:include>

                <div class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Order Detail - Order ID: ${order.orderId}</h4>
                                    <p class="mb-0">Detailed information for the selected order, including customer details, employee handling, and products included in the order.</p>
                                </div>
                                <a href="list-order" class="btn btn-primary add-list"><i class="las la-arrow-left mr-3"></i>Back to Orders</a>
                            </div>
                        </div>

                        <!-- Customer & Order Information -->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Customer & Order Information</h5>
                                    <p><strong>Customer Name:</strong> ${order.customerName}</p>
                                    <p><strong>Order Date:</strong> ${order.orderDate}</p>
                                    <p><strong>Total Amount:</strong> $${order.orderTotalAmount}</p>
                                    <p><strong>Status:</strong> ${order.orderStatus}</p>
                                    <p><strong>Handled By:</strong> ${order.employeeName}</p>
                                    <p><strong>Coupon Code:</strong> ${order.couponCode != null ? order.couponCode : "N/A"}</p>
                                </div>
                            </div>
                        </div>

                        <!-- Product Details -->
                        <div class="col-lg-12">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">
                                            <th>Product Name</th>
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <c:forEach var="detail" items="${orderDetails}">
                                            <tr>
                                                <td>${detail.productName}</td>
                                                <td>${detail.quantity}</td>
                                                <td>$${detail.unitPrice}</td>
                                                <td>$${detail.totalPrice}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper End -->

        <footer class="iq-footer">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                                    <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 text-right">
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>©</span> <a href="#" class="">POS Dash</a>.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Backend Bundle JavaScript -->
        <script src="assets/js/backend-bundle.min.js"></script>

        <!-- Table Treeview JavaScript -->
        <script src="assets/js/table-treeview.js"></script>

        <!-- Chart Custom JavaScript -->
        <script src="assets/js/customizer.js"></script>

        <!-- Chart Custom JavaScript -->
        <script async src="assets/js/chart-custom.js"></script>

        <!-- app JavaScript -->
        <script src="assets/js/app.js"></script>
    </body>
</html>
