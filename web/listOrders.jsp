<%-- 
    Document   : listOrders
    Created on : Oct 15, 2024, 8:09:54 PM
    Author     : ankha
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include> 
        </head>
        <body class="">
            <!-- loader Start -->
            <div id="loading">
                <div id="loading-center">
                </div>
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
                                        <h4 class="mb-3">Order List</h4>
                                        <p class="mb-0">Order List enables you to effectively control sales KPIs and monitor them in one central<br>
                                            place while helping teams to reach sales goals. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="table-responsive rounded mb-3">
                                    <table class="data-table table mb-0 tbl-server-info">
                                        <thead class="bg-white text-uppercase">
                                            <tr class="ligth ligth-data">
                                                <th>Order ID</th>
                                                <th>Customer Name</th>
                                                <th>Order Date</th>
                                                <th>Total Amount</th>
                                                <th>Status</th>
                                                <th>Employee Name</th>
                                                <th>Coupon Code</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody class="ligth-body">
                                        <c:forEach var="order" items="${orders}">
                                            <tr>
                                                <td>${order.orderId}</td>
                                                <td>${order.customerName}</td>
                                                <td>${order.orderDate}</td>
                                                <td>${order.orderTotalAmount} đ</td>
                                                <td>${order.orderStatus}</td>
                                                <td>${order.employeeName}</td>
                                                <td>${order.couponCode}</td>
                                                <td>
                                                    <div class="d-flex align-items-center list-action">
                                                        <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="View"
                                                           href="view-order?orderId=${order.orderId}"><i class="ri-eye-line mr-0"></i></a>
                                                        <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="Edit" href="edit-order?orderId=${order.orderId}">
                                                            <i class="ri-pencil-line mr-0"></i>
                                                        </a>
                                                        <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="Delete" 
                                                           href="delete-order?orderId=${order.orderId}" 
                                                           onclick="return confirm('Are you sure you want to delete this order?');">
                                                            <i class="ri-delete-bin-line mr-0"></i>
                                                        </a>

                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Page end  -->
                </div>
            </div>
        </div>
        <!-- Wrapper End-->
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
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>?</span> <a href="#" class="">POS Dash</a>.
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
