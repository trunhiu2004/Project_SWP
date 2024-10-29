<%-- 
    Document   : receipt
    Created on : Oct 29, 2024, 9:04:19 PM
    Author     : ankha
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="receipt">
    <div class="receipt-header">
        <h2>HÓA ĐƠN BÁN HÀNG</h2>
        <p>Ngày: <fmt:formatDate value="${order.orderDate}" pattern="dd/MM/yyyy HH:mm:ss"/></p>
        <p>Số hóa đơn: ${order.orderId}</p>
    </div>

    <div class="customer-info">
        <p>Khách hàng: ${customer.customerName}</p>
        <p>Số điện thoại: ${customer.customerPhone}</p>
        <p>Nhân viên: ${order.employeeName}</p>
    </div>

    <table class="receipt-items">
        <thead>
            <tr>
                <th>STT</th>
                <th>Sản phẩm</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${items}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${item.product.name}</td>
                    <td>${item.quantity}</td>
                    <td><fmt:formatNumber value="${item.price}" pattern="#,##0" />₫</td>
                    <td><fmt:formatNumber value="${item.subTotal}" pattern="#,##0" />₫</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="receipt-summary">
        <p>Tổng tiền: <fmt:formatNumber value="${order.orderTotalAmount}" pattern="#,##0" />₫</p>
        <c:if test="${not empty order.couponCode}">
            <p>Mã giảm giá: ${order.couponCode}</p>
        </c:if>
    </div>

    <div class="receipt-footer">
        <p>Cảm ơn quý khách đã mua hàng!</p>
        <p>Hẹn gặp lại!</p>
    </div>
</div>
