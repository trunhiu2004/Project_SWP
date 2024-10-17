<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>POS - Point of Sale</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                            <a href="home_1.jsp">
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

                    <c:forEach var="product" items="${requestScope.product}">
                        <div class="product-card">
                            <img src="assets/images/product/${product.image}" alt="${product.name}">
                            <h3><a href="#">${product.name}</a></h3>
                            <div class="product-price">$${product.price}</div>

                            <form action="SolveAddToCartPos" method="post">
                                <input type="hidden" name="name" value="${product.name}">
                                <input type="hidden" name="price" value="${product.price}">
                                <input type="hidden" name="image" value="${product.image}">
                                <input type="hidden" name="barcode" value="${product.barcode}">
                                <button type="submit" class="add-cart-btn">Add to Cart</button>
                            </form>


                        </div>
                    </c:forEach>
                </section>
            </main>

            <aside class="order-summary">
                <h2>Current Order</h2>
                <ul class="order-list">
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <li>
                            <img src="assets/images/product/${item.product.image}" alt="${item.product.name}">
                            <span>${item.product.name}</span>
                            <span>$${item.product.price}</span>




                            <form action="SolveUpdateCarServlet" method="post" class="quantity-control">
                                <input type="hidden" name="name" value="${item.product.name}">
                                <button type="submit" name="action" value="decrease">-</button>
                                    
                                <span class="quantity-display">${item.quantity}</span>
                                <button type="submit" name="action" value="increase">+</button>
                            </form>
                            
                        </li>
                    </c:forEach>
                </ul>
                <div class="total-summary">
                    <c:set var="total" value="0"/>
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <c:set var="total" value="${total + item.totalPrice}" />
                    </c:forEach>
                    <p>Total: <span>$${total}</span></p>
                </div>

                <div class="payment-method">
                    <label for="payment-option">Choose Payment Method: </label>
                    <select id="payment-option">
                        <c:forEach var="payment" items="${paymentMethods}">
                            <option value="${payment.paymentMethodId}">
                                ${payment.paymentMethodName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <button class="payment-btn">Continue to Payment</button>

            </aside>


        </div>

        <!-- Include external JavaScript for handling product and order logic -->
        <script src="assets/js/pos-screen.js"></script>
    </body>
</html>




