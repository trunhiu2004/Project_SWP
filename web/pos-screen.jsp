<%-- 
    Document   : pos-screen
    Created on : Oct 3, 2024, 9:03:38 PM
    Author     : pqtru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Dashboard</title>
        <link rel="stylesheet" href="assets/css/pos-screen.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body>
        <div class="container">
            <aside class="sidebar">
                <nav>
                    <ul>
                        <li>
                            <a href="index.html">
                                <i class="fas fa-home"></i>
                            </a>
                        </li> <!-- Home -->
                        <li><i class="fas fa-box"></i></li> <!-- Products -->
                        <li><i class="fas fa-cog"></i></li> <!-- Settings -->
                    </ul>
                </nav>
            </aside>

            <main class="main-content">
                <header class="header">
                    <h1>Welcome, Gorry</h1>
                    <p>Discover whatever you need easily</p>
                    <form action="SearchProduct" method="post">
                        <div class="search-container">
                            <div class="search-bar">
                                <input name="txt" type="text" placeholder="Search product...">
                                <button class="search-btn" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div> 
                    </form>

                    <button class="qr-btn" onclick="openQrScanner()">
                        <i class="fa fa-qrcode"></i>
                    </button>
                    <div id="qr-scanner" style="display: none;">
                        <video id="scanner-preview"></video>
                    </div>
                </header>

                <section class="products">
                    <!-- Hiển thị danh sách sản phẩm từ requestScope -->
                    <c:forEach var="product" items="${requestScope.product}">
                        <div class="product-card">
                            <img src="assets/images/imageProducts/${product.product_image}" alt="${product.product_name}">
                            <h3><a href="#">${product.product_name}</a></h3>
                            <div class="product-price">$${product.product_Price}</div>
                            <button class="add-cart-btn" 
                                    onclick="addToOrder('${product.product_name}', '${product.product_image}', '${product.product_Price}')">
                                Add to Cart
                            </button>

                        </div>
                    </c:forEach>
                </section>
            </main>

            <aside class="order-summary">
                <h2>Current Order</h2>
                <ul class="order-list">
                    <!-- Sản phẩm sẽ được thêm vào đây -->
                </ul>
                <div class="total-summary">
                    <p>Subtotal: <span>$0.00</span></p>
                    <p>Discount: <span>-$0.00</span></p>
                    <p>Tax: <span>$0.00</span></p>
                    <h3>Total: <span>$0.00</span></h3>
                </div>

                <button class="payment-btn">Continue to Payment</button>
            </aside>

        </div>

        <!-- Include external JavaScript for handling product and order logic -->
        <script src="assets/js/pos-screen.js"></script>
    </body>
</html>