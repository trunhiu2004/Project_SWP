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
        <style>
            @media screen {
                .receipt {
                    width: 80mm;
                    margin: 20px auto;
                    padding: 5mm;
                    background: white;
                    box-shadow: 0 0 10px rgba(0,0,0,0.1);
                }
            }
        </style>

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
                const printWindow = window.open('', '_blank', 'height=600,width=800');
                const content = document.getElementById('receiptContent').innerHTML;

                printWindow.document.write(`
        <!DOCTYPE html>
        <html>
        <head>
            <title>Hóa Đơn</title>
            <style>
                @page {
                    size: 80mm auto;
                    margin: 0;
                }
                
                body {
                    font-family: 'Courier New', Courier, monospace;
                    font-size: 10px;
                    padding: 5mm;
                    margin: 0;
                }

                .receipt {
                    width: 70mm;
                    margin: 0 auto;
                }

                .receipt-header {
                    text-align: center;
                    margin-bottom: 20px;
                }

                .receipt-header h2 {
                    margin: 0;
                    font-size: 16px;
                }

                .customer-info {
                    margin-bottom: 10px;
                }

                .receipt-items {
                    width: 100%;
                    border-collapse: collapse;
                    margin-bottom: 10px;
                }

                .receipt-items th,
                .receipt-items td {
                    border-bottom: 1px dotted #000;
                    padding: 3px;
                    text-align: left;
                    font-size: 10px;
                }

                .receipt-items th {
                    font-weight: bold;
                }

                .receipt-summary {
                    margin-top: 20px;
                    border-top: 1px solid #000;
                    padding-top: 10px;
                }

                .receipt-summary p {
                    display: flex;
                    justify-content: space-between;
                    margin: 5px 0;
                    font-size: 12px;
                }

                .receipt-footer {
                    margin-top: 30px;
                    text-align: center;
                    font-style: italic;
                }
            </style>
        </head>
        <body>
            ${content}
        </body>
        </html>
    `);

                printWindow.document.close();

                // Đợi cho content và CSS load xong
                printWindow.onload = function () {
                    setTimeout(() => {
                        printWindow.print();
                        printWindow.onafterprint = function () {
                            printWindow.close();
                        };
                    }, 500);
                };
            }

        </script>
    </head>
    <body>
        <div id="receiptContent">
            <div class="receipt">
                <div class="receipt-header">
                    <h2>HÓA ĐƠN BÁN HÀNG</h2>
                    <p>Ngày: <fmt:formatDate value="${order.orderDate}" pattern="dd/MM/yyyy HH:mm:ss"/></p>
                    <p>Số hóa đơn: #${order.orderId}</p>
                </div>

                <div class="customer-info">
                    <p><strong>Khách hàng:</strong> ${customer.customerName}</p>
                    <p><strong>SĐT:</strong> ${customer.customerPhone}</p>
                    <p><strong>Nhân viên:</strong> ${order.employeeName}</p>
                </div>

                <table class="receipt-items">
                    <thead>
                        <tr>
                            <th style="width: 10%">STT</th>
                            <th style="width: 40%">Sản phẩm</th>
                            <th style="width: 15%">SL</th>
                            <th style="width: 35%">Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${items}" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>${item.product.name}</td>
                                <td>${item.quantity}</td>
                                <td><fmt:formatNumber value="${item.subTotal}" pattern="#,##0" />₫</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="receipt-summary">
                    <p>
                        <span><strong>Tổng cộng:</strong></span>
                        <span><fmt:formatNumber value="${order.orderTotalAmount}" pattern="#,##0" />₫</span>
                    </p>
                    <c:if test="${not empty order.couponCode}">
                        <p>
                            <span>Mã giảm giá:</span>
                            <span>${order.couponCode}</span>
                        </p>
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
