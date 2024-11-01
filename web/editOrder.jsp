<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Edit Order</title>
        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>
        </head>
        <body class="">
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
                                    <p class="mb-0">Update the order status for the selected order.</p>
                                </div>
                                <a href="list-order" class="btn btn-primary add-list"><i class="las la-arrow-left mr-3"></i>Back to Orders</a>
                            </div>
                        </div>

                        <!-- Order Information -->
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Order Information</h5>
                                    <form action="edit-order" method="post">
                                        <input type="hidden" name="orderId" value="${order.orderId}"/>
                                        <div class="form-group">
                                            <label for="customerName">Customer Name:</label>
                                            <input type="text" class="form-control" id="customerName" value="${order.customerName}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="orderDate">Order Date:</label>
                                            <input type="text" class="form-control" id="orderDate" value="${order.orderDate}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="orderStatus">Status:</label>
                                            <select class="form-control" id="orderStatus" name="orderStatus">
                                                <option value="Pending" ${order.orderStatus == 'Pending' ? 'selected' : ''}>Pending</option>
                                                <option value="Completed" ${order.orderStatus == 'Completed' ? 'selected' : ''}>Completed</option>
                                                <option value="Cancelled" ${order.orderStatus == 'Cancelled' ? 'selected' : ''}>Cancelled</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="employeeName">Handled By:</label>
                                            <input type="text" class="form-control" id="employeeName" value="${order.employeeName}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="couponCode">Coupon Code:</label>
                                            <input type="text" class="form-control" id="couponCode" value="${order.couponCode != null ? order.couponCode : 'N/A'}" readonly>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Update Status</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="assets/js/backend-bundle.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>
</html>
