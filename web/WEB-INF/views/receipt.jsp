<%-- 
    Document   : receipt
    Created on : Oct 29, 2024, 9:04:19 PM
    Author     : ankha
--%>
<%@page import="model.Order"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="receipt">
    <div class="receipt-header">
        <div class="shop-info">
            <div class="shop-brand">
                <c:if test="${not empty shop.shopLogo}">
                    <img src="assets/images/shop/${shop.shopLogo}" alt="Shop Logo" class="shop-logo print-only">
                </c:if>
                <h2 class="shop-name">${shop.shopName}</h2>
            </div>
            <div class="shop-details">
                <p><i class="fas fa-map-marker-alt"></i> ${shop.shopAddress}</p>
                <p><i class="fas fa-phone"></i> ${shop.shopPhone}</p>
                <p><i class="fas fa-envelope"></i> ${shop.shopEmail}</p>
            </div>
        </div>

        <div class="receipt-title">
            <h3>HÓA ĐƠN BÁN HÀNG</h3>
            <p>Ngày: 
                <jsp:useBean id="now" class="java.util.Date" />
                <fmt:formatDate value="${now}" pattern="dd/MM/yyyy HH:mm:ss"/>
            </p>
        </div>
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
        <p>Tổng tiền hàng: <fmt:formatNumber value="${subtotal}" pattern="#,##0" />₫</p>
        <c:if test="${not empty appliedCoupon}">
            <p>Mã giảm giá: ${appliedCoupon.coupon_code}</p>
            <c:set var="discountAmount" value="${subtotal * appliedCoupon.discount_amount / 100}" />
            <p>Giảm giá: <fmt:formatNumber value="${discountAmount}" pattern="#,##0" />₫</p>
        </c:if>
        <p>Tổng thanh toán: <fmt:formatNumber value="${order.orderTotalAmount}" pattern="#,##0" />₫</p>
        <p>Tiền khách đưa: <fmt:formatNumber value="${receivedAmount}" pattern="#,##0" />₫</p>
        <p>Tiền thừa: <fmt:formatNumber value="${changeAmount}" pattern="#,##0" />₫</p>
    </div>

    <div class="receipt-footer">
        <p>Cảm ơn quý khách đã mua hàng!</p>
        <p>Hẹn gặp lại!</p>
    </div>
</div>