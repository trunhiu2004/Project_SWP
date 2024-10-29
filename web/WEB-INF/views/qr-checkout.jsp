<%-- 
    Document   : qr-checkout
    Created on : Oct 30, 2024, 12:24:46 AM
    Author     : ankha
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vn.payos.type.CheckoutResponseData" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thanh toán QR</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f5f5f5;
        }
        .container {
            text-align: center;
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        #qrcode {
            margin: 20px 0;
        }
        .amount {
            font-size: 24px;
            color: #2196F3;
            margin: 10px 0;
        }
        .order-code {
            color: #666;
            margin: 10px 0;
        }
        .manual-link {
            margin-top: 20px;
        }
        .manual-link a {
            color: #2196F3;
            text-decoration: none;
        }
        .manual-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Quét mã QR để thanh toán</h1>
        <%
            CheckoutResponseData checkoutData = (CheckoutResponseData) request.getAttribute("checkoutData");
            if (checkoutData != null) {
        %>
            <div id="qrcode"></div>
            <p class="amount">Số tiền: <%= String.format("%,d", checkoutData.getAmount()) %> VNĐ</p>
            <p class="order-code">Mã đơn hàng: <%= checkoutData.getOrderCode() %></p>
            <div class="manual-link">
                <p>Nếu không thể quét mã QR, <a href="<%= checkoutData.getCheckoutUrl() %>">bấm vào đây</a> để thanh toán</p>
            </div>

            <script>
                var qrcode = new QRCode(document.getElementById("qrcode"), {
                    text: "<%= checkoutData.getQrCode() %>",
                    width: 256,
                    height: 256,
                    colorDark : "#000000",
                    colorLight : "#ffffff",
                    correctLevel : QRCode.CorrectLevel.H
                });
            </script>
        <%
            } else {
        %>
            <p>Lỗi: Không thể tạo mã QR</p>
        <%
            }
        %>
    </div>
</body>
</html>
