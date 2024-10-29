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
            ${document.getElementById('receiptContent').innerHTML}
                    </body>
                    </html>
                `);
                printWindow.document.close();

                // Đợi CSS load xong
                setTimeout(() => {
                    printWindow.print();
                    printWindow.onafterprint = function () {
                        printWindow.close();
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
                    <c:if test="${order.paymentMethod eq 'QR'}">
                        <p>Phương thức thanh toán: Thanh toán QR</p>
                    </c:if>
                    <c:if test="${order.paymentMethod eq 'CASH'}">
                        <p>Phương thức thanh toán: Tiền mặt</p>
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
