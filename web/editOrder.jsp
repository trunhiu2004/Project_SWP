<%-- 
    Document   : editOrder
    Created on : Oct 15, 2024, 8:40:43 PM
    Author     : ankha
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                    <p class="mb-0">Modify order details and the list of products for the selected order.</p>
                                </div>
                                <a href="list-order" class="btn btn-primary add-list"><i class="las la-arrow-left mr-3"></i>Back to Orders</a>
                            </div>
                        </div>

                        <!-- Customer & Order Information -->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Customer & Order Information</h5>
                                    <form action="edit-order" method="post">
                                        <input type="hidden" name="orderId" value="${order.orderId}"/>
                                        <div class="form-group">
                                            <label for="customerName">Customer Name:</label>
                                            <input type="text" class="form-control" id="customerName" name="customerName" value="${order.customerName}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="orderDate">Order Date:</label>
                                            <input type="date" class="form-control" id="orderDate" name="orderDate" value="${order.orderDate}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="orderStatus">Status:</label>
                                            <input type="text" class="form-control" id="orderStatus" name="orderStatus" value="${order.orderStatus}">
                                        </div>
                                        <div class="form-group">
                                            <label for="employeeName">Handled By:</label>
                                            <input type="text" class="form-control" id="employeeName" name="employeeName" value="${order.employeeName}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label for="couponCode">Coupon Code:</label>
                                            <input type="text" class="form-control" id="couponCode" name="couponCode" value="${order.couponCode}" readonly>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <!-- Order Products -->
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Order Products</h5>
                                    <form action="edit-order" method="post">
                                        <input type="hidden" name="orderId" value="${order.orderId}"/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Product Name</th>
                                                    <th>Quantity</th>
                                                    <th>Unit Price</th>
                                                    <th>Total Price</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="detail" items="${orderDetails}">
                                                    <tr>
                                                        <td>${detail.productName}</td>
                                                        <td><input type="number" name="quantity_${detail.productId}" value="${detail.quantity}" class="form-control"/></td>
                                                        <td>$${detail.unitPrice}</td>
                                                        <td>$${detail.totalPrice}</td>
                                                        <td>
                                                            <a href="delete-product?orderId=${order.orderId}&productId=${detail.productId}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>

                                        </table>
                                        <a href="add-product?orderId=${order.orderId}" class="btn btn-success mt-3">Add Product</a>
                                        <button type="submit" class="btn btn-primary mt-3">Save Product Changes</button>
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
