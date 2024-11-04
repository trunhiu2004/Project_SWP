<%-- 
    Document   : receipt-auto-print
    Created on : Oct 30, 2024, 3:48:10 AM
    Author     : ankha
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>In Hóa Đơn</title>
        <link rel="stylesheet" href="assets/css/receipt.css">
        <script>
            // Hàm xử lý clear session và redirect
            function clearSessionAndRedirect() {
                fetch('clear-cart', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                })
                        .then(response => response.json())
                        .then(data => {
                            window.location.href = 'PoSHome';
                        })
                        .catch(error => {
                            console.error('Lỗi khi xóa session:', error);
                            window.location.href = 'PoSHome';
                        });
            }

            // Hàm in hóa đơn
            function printReceipt() {
                const receiptContent = document.getElementById('receiptContent').cloneNode(true); // Clone nội dung hóa đơn
                const printWindow = window.open('', 'Print Receipt', 'height=600,width=800');

                printWindow.document.write(`
            <!DOCTYPE html>
            <html>
            <head>
                <title>Hóa Đơn</title>
                <link rel="stylesheet" href="assets/css/receipt.css">
                <meta charset="UTF-8">
            </head>
            <body>
            </body>
            </html>
        `);

                printWindow.document.body.appendChild(receiptContent); // Thêm nội dung đã clone vào cửa sổ in

                printWindow.document.close(); // Đóng document để bắt đầu render

                // Đợi CSS load xong và in
                setTimeout(() => {
                    printWindow.print();
                    printWindow.onafterprint = function () {
                        setTimeout(() => {
                            printWindow.close(); // Đóng cửa sổ sau 1 giây
                        }, 1000);
                    };
                }, 1000);
            }


            // Tự động in khi trang load xong
            window.onload = function () {
                printReceipt();
            };
        </script>
    </head>
    <body>
        <div id="receiptContent">
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
                        <p>Số hóa đơn: ${order.orderId}</p>
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
        </div>

        <!-- Các nút chức năng -->
        <div style="text-align: center; margin-top: 20px;">
            <button onclick="printReceipt()" 
                    style="padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer;">
                In lại hóa đơn
            </button>
            <button onclick="clearSessionAndRedirect()" 
                    style="padding: 10px 20px; margin-left: 10px; background-color: #2196F3; color: white; border: none; border-radius: 4px; cursor: pointer;">
                Về trang chủ
            </button>
        </div>
    </body>
</html>
