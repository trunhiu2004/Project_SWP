<%-- 
    Document   : editOrder
    Created on : Oct 15, 2024, 8:40:43 PM
    Author     : ankha
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-edit-sale.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>POS Dash | Edit Order</title>

    <!-- Favicon -->
    <jsp:include page="components/favicon.jsp"></jsp:include>
</head>
<body class="  ">
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
                                <h4 class="mb-3">Edit Order - Order ID: ${order.orderId}</h4>
                                <p class="mb-0">Modify the details of the selected order.</p>
                            </div>
                            <a href="list-order" class="btn btn-primary add-list"><i class="las la-arrow-left mr-3"></i>Back to Orders</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Customer & Order Information</h5>
                                <form action="edit-order" method="post">
                                    <input type="hidden" name="orderId" value="${order.orderId}" />

                                    <div class="form-group">
                                        <label for="customerId">Customer Name:</label>
                                        <select name="customerId" id="customerId" class="form-control" required>
                                            <c:forEach var="customer" items="${customers}">
                                                <option value="${customer.customerId}" ${customer.customerId == order.customerId ? 'selected' : ''}>${customer.customerName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="orderDate">Order Date:</label>
                                        <input type="date" name="orderDate" id="orderDate" class="form-control" value="${order.orderDate}" required />
                                    </div>

                                    <div class="form-group">
                                        <label for="totalAmount">Total Amount:</label>
                                        <input type="number" step="0.01" name="totalAmount" id="totalAmount" class="form-control" value="${order.orderTotalAmount}" required />
                                    </div>

                                    <div class="form-group">
                                        <label for="status">Status:</label>
                                        <select name="status" id="status" class="form-control" required>
                                            <option value="Paid" ${order.orderStatus == 'Paid' ? 'selected' : ''}>Paid</option>
                                            <option value="Pending" ${order.orderStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                                            <option value="Cancel" ${order.orderStatus == 'Cancel' ? 'selected' : ''}>Cancel</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="employeeId">Handled By (Employee Name):</label>
                                        <select name="employeeId" id="employeeId" class="form-control" required>
                                            <c:forEach var="employee" items="${employees}">
                                                <option value="${employee.employee_id}" ${employee.employee_id == order.employeeId ? 'selected' : ''}>${employee.employee_name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="couponId">Coupon Code:</label>
                                        <select name="couponId" id="couponId" class="form-control">
                                            <c:forEach var="coupon" items="${coupons}">
                                                <option value="${coupon.couponId}" ${coupon.couponId == order.customerCouponId ? 'selected' : ''}>${coupon.couponCode}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-primary">Update Order</button>
                                    <a href="list-order" class="btn btn-secondary">Cancel</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
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
                            <span class="mr-1"><script>document.write(new Date().getFullYear())</script>�</span> <a href="#" class="">POS Dash</a>.
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

<!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-edit-sale.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>