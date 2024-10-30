<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>POS Home</title>
        <!-- Font Awesome CDN -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!-- Iconify CDN -->
        <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
        <!-- Select2 CSS CDN -->
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Select2 JS CDN -->
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/POS/style.css">
        <script charset="UTF-8" src="assets/js/POS/pos-home.js"></script>
    </head>
    <body>
        <div class="wrapper">
            <!-- Header -->
            <div class="top_header_part">
                <!-- Left Header Menu -->
                <div class="left_item">
                    <div class="header_part_middle">
                        <ul class="icon__menu">
                            <li class="has__children main_menu">
                                <a href="javascript:void(0)" class="header_menu_icon" data-tippy-content="Main Menu">
                                    <span class="iconify" data-icon="solar:user-check-broken" data-width="22"></span>
                                </a>
                            </li>
                            <li>
                                <a href="home.jsp" class="header_menu_icon" target="_blank" data-tippy-content="Dashboard">
                                    <span class="iconify" data-icon="solar:chart-2-broken" data-width="22"></span>
                                </a>
                            </li>
                            <li class="fullscreen-btn">
                                <a href="javascript:void(0)" class="header_menu_icon" data-tippy-content="Fullscreen">
                                    <span class="iconify" data-icon="majesticons:open-line" data-width="22"></span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="time__date">
                                    <span class="iconify" data-icon="solar:clock-circle-broken" data-width="22"></span>
                                    <span id="current_time"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Right Header Menu -->
                <div class="header_part_right">
                    <ul class="btn__menu">
                        <li><a href="javascript:void(0)" class="bg__blue">All</a></li>
                        <li><a href="javascript:void(0)" class="bg__blue">Brand</a></li>
                        <li><a href="javascript:void(0)" class="bg__blue">Most Selling</a></li>
                        <li><a href="javascript:void(0)" class="bg__blue">Promo</a></li>
                    </ul>
                </div>
            </div>

            <div class="main_content">
                <!-- Left Side - Cart Area -->
                <div class="main_middle">
                    <!-- Select Area -->
                    <div class="select_area">
                        <div style="flex: 1;">
                            <select class="select2" id="select_employee">
                                <option value="">Select Employee</option>
                                <option value="1">Employee 1</option>
                                <option value="2">Employee 2</option>
                            </select>
                        </div>

                        <div style="flex: 1;">
                            <select id="customerSelect" class="form-control select2">
                                <option value="">Chọn khách hàng</option>
                            </select>

                        </div>


                        <button id="editCustomerBtn" class="customer_action_btn">
                            <i class="material-icons">edit</i>
                        </button>


                        <button id="addCustomerBtn" class="customer_action_btn">
                            <i class="material-icons">add</i>
                        </button>

                    </div>

                    <!--                    <div class="order_table_header_row">
                                            <div>Item</div>
                                            <div>Price</div>
                                            <div>Qty</div>
                                            <div>Total</div>
                                        </div>-->

                    <div class="cart-container">
                        <div class="cart-header">
                            <div class="cart-row">
                                <div class="col-item">Item</div>
                                <div class="col-price">Price</div>
                                <div class="col-qty">Qty</div>
                                <div class="col-weight">Unit</div>
                                <div class="col-total">Total</div>
                                <div class="col-action">Action</div>
                            </div>
                        </div>
                        <div class="cart-body">
                            <c:if test="${sessionScope.cart != null && not empty sessionScope.cart.items}">
                                <c:forEach items="${sessionScope.cart.items}" var="cartItem">
                                    <div class="cart-row">
                                        <div class="col-item">${cartItem.storeStock.inventory.product.name}</div>
                                        <div class="col-price">
                                            <fmt:formatNumber value="${cartItem.price}" pattern="#,##0đ"/>
                                        </div>
                                        <div class="col-qty">
                                            <div class="quantity-control">
                                                <button onclick="updateQuantity(${cartItem.storeStock.storeStockId}, 'decrease')">-</button>
                                                <input type="number" value="${cartItem.quantity}" 
                                                       onchange="updateQuantity(${cartItem.storeStock.storeStockId}, 'input', this.value)"
                                                       min="1" max="${cartItem.storeStock.stock}">
                                                <button onclick="updateQuantity(${cartItem.storeStock.storeStockId}, 'increase')">+</button>
                                            </div>
                                        </div>
                                        <div class="col-weight">
                                            <c:if test="${not empty cartItem.storeStock.inventory.product.weightUnit}">
                                                ${cartItem.storeStock.inventory.product.weightUnit.name}
                                            </c:if>
                                        </div>
                                        <div class="col-total">
                                            <fmt:formatNumber value="${cartItem.quantity * cartItem.price}" pattern="#,##0đ"/>
                                        </div>
                                        <div class="col-action">
                                            <button onclick="removeFromCart('${cartItem.storeStock.storeStockId}')" class="btn-remove">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>


                    <div id="bottom_absolute">
                        <div class="cart-total-section">
                            <div class="cart-summary">
                                <div class="summary-row">
                                    <span>Total:</span>
                                    <span><fmt:formatNumber value="${sessionScope.cart.getTotalMoney()}" pattern="#,##0đ"/></span>
                                </div>
                            </div>
                        </div>
                        <div class="button_group">
                            <button class="bg__red">
                                <i class="material-icons">close</i>
                                Cancel
                            </button>
                            <button class="bg_hold">
                                <i class="material-icons">payments</i>
                                Thanh toán tiền mặt
                            </button>
                            <button class="bg__green">
                                <i class="material-icons">qr_code</i>
                                Thanh toán QR
                            </button>
                        </div>
                    </div>

                </div>

                <!-- Right Side - Products Area -->
                <div class="main_right">
                    <div class="right_side_search_add_item">
                        <div class="search_filter_row">
                            <div class="search_input_group">
                                <input type="text" placeholder="Search by name, code, category">
                                <i class="material-icons">search</i>
                            </div>
                            <div class="search_input_group">
                                <input type="text" placeholder="Scan barcode">
                                <i class="material-icons">qr_code_scanner</i>
                            </div>
                        </div>
                    </div>

                    <div class="products-container">
                        <div class="products-grid">
                            <c:forEach items="${store}" var="s">
                                <div class="product-card" onclick="addToCart(${s.getStoreStockId()})">
                                    <div class="product-image">
                                        <img src="assets/images/product/${s.getInventory().getProduct().getImage()}" 
                                             alt="${s.getInventory().getProduct().getName()}"
                                             class="product-img">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-header">
                                            <h3 class="product-name">${s.getInventory().getProduct().getName()}</h3>
                                            <span class="stock-badge">${s.getStock()}</span>
                                        </div>
                                        <p class="product-price">
                                            Giá: 
                                            <span class="price-value">
                                                <c:choose>
                                                    <c:when test="${s.getDiscount()== null}">
                                                        <fmt:formatNumber value="${s.getInventory().getProduct().getPrice()}" pattern="#,##0đ"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <fmt:formatNumber value="${s.getDiscount().getPriceSell()}" pattern="#,##0đ"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </p>
                                    </div>

                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" id="currentOrderId" value="${sessionScope.currentOrderId}">
        </div>
        <!-- Edit Customer Modal -->
        <div id="editCustomerModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <h2>Chỉnh sửa thông tin khách hàng</h2>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <form id="editCustomerForm">
                        <input type="hidden" id="customerId" name="customerId">
                        <div class="form-group">
                            <label for="customerName">Tên khách hàng:</label>
                            <input type="text" id="customerName" name="customerName" required>
                        </div>
                        <div class="form-group">
                            <label for="customerPhone">Số điện thoại:</label>
                            <input type="tel" id="customerPhone" name="customerPhone" required>
                        </div>
                        <div class="form-group">
                            <label for="customerType">Loại khách hàng:</label>
                            <select id="customerType" name="customerType" required>
                                <!-- Options sẽ được thêm bằng JavaScript -->
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-cancel">Hủy</button>
                    <button type="button" class="btn-save">Lưu</button>
                </div>
            </div>
        </div>
        <!-- Add Customer Modal -->
        <div id="addCustomerModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <h2>Thêm khách hàng mới</h2>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <form id="addCustomerForm">
                        <div class="form-group">
                            <label for="newCustomerName">Tên khách hàng:</label>
                            <input type="text" id="newCustomerName" name="customerName" required>
                        </div>
                        <div class="form-group">
                            <label for="newCustomerPhone">Số điện thoại:</label>
                            <input type="tel" id="newCustomerPhone" name="customerPhone" required 
                                   pattern="[0-9]{10}" title="Số điện thoại phải có 10 chữ số">
                        </div>
                        <div class="form-group">
                            <label for="newCustomerType">Loại khách hàng:</label>
                            <select id="newCustomerType" name="customerType" required>
                                <!-- Options sẽ được thêm bằng JavaScript -->
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-cancel">Hủy</button>
                    <button type="button" class="btn-save">Thêm</button>
                </div>
            </div>
        </div>
        <!-- Modal Thanh toán tiền mặt -->
        <div class="modal fade" id="cashPaymentModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Thanh toán tiền mặt</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="cashPaymentForm">
                            <div class="form-group">
                                <label>Tổng tiền:</label>
                                <input type="text" class="form-control" id="totalAmount" readonly>
                            </div>
                            <div class="form-group">
                                <label>Tiền khách đưa:</label>
                                <input type="number" class="form-control" id="receivedAmount" required>
                            </div>
                            <div class="form-group">
                                <label>Tiền phải trả lại:</label>
                                <input type="text" class="form-control" id="changeAmount" readonly>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                        <button type="button" class="btn btn-primary" id="confirmPayment">Xác nhận</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal hiển thị hóa đơn -->
        <div class="modal fade" id="receiptModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Hóa đơn</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="receiptContent">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="printReceipt()">In hóa đơn</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Thanh toán QR -->
        <div class="modal fade" id="qrPaymentModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Thanh toán QR</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- PayOS Payment Form sẽ được nhúng vào đây -->
                        <div id="payos-wrapper"></div>
                    </div>
                </div>
            </div>
        </div>      
        <script>
            // Xử lý nút thanh toán QR
            document.querySelector('.bg__green').addEventListener('click', async function () {
                try {
                    // Kiểm tra giỏ hàng
                    const cartRows = document.querySelectorAll('.cart-body .cart-row');
                    if (cartRows.length <= 0) {
                        alert('Vui lòng thêm sản phẩm vào giỏ hàng trước khi thanh toán');
                        return;
                    }

                    // Kiểm tra khách hàng
                    const currentOrderId = document.getElementById('currentOrderId').value;
                    if (!currentOrderId) {
                        alert('Vui lòng chọn khách hàng trước khi thanh toán');
                        return;
                    }

                    // Lấy tổng tiền - đảm bảo là số
                    const totalAmountText = document.querySelector('.cart-summary .summary-row span:last-child').textContent;
                    const totalAmount = parseInt(totalAmountText.replace(/[^\d]/g, ''));

                    if (isNaN(totalAmount) || totalAmount <= 0) {
                        alert('Số tiền thanh toán không hợp lệ');
                        return;
                    }

                    // Tạo danh sách items từ giỏ hàng
                    const items = Array.from(cartRows).map(row => {
                        const name = row.querySelector('.col-item').textContent.trim();
                        const priceText = row.querySelector('.col-price').textContent.trim();
                        const price = parseInt(priceText.replace(/[^\d]/g, ''));
                        const quantity = parseInt(row.querySelector('.col-qty input').value);

                        return {
                            productName: name,
                            quantity: quantity,
                            price: price
                        };
                    });

                    // Log request data để debug
                    const requestData = {
                        amount: totalAmount,
                        orderId: currentOrderId,
                        description: `Thanh toán đơn hàng #${currentOrderId}`,
                        items: items
                    };
                    console.log('Request data:', requestData);

                    // Gọi API để tạo payment
                    const response = await fetch('create-payment-link', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'Accept': 'application/json'
                        },
                        body: JSON.stringify(requestData)
                    });

                    if (!response.ok) {
                        const errorText = await response.text();
                        console.error('Error response:', errorText);
                        throw new Error(`HTTP error! status: ${response.status}`);
                    }

                    const data = await response.json();
                    console.log('Response data:', data);

                    if (!data || !data.checkoutUrl) {
                        throw new Error('Invalid response: missing checkoutUrl');
                    }

                    // Mở URL thanh toán trong cửa sổ mới
                    window.open(data.checkoutUrl, '_blank');

                    // Theo dõi trạng thái thanh toán
                    const checkPaymentStatus = setInterval(async () => {
                        try {
                            const statusResponse = await fetch(`check-payment-status?orderId=${currentOrderId}`);
                            if (!statusResponse.ok) {
                                throw new Error(`HTTP error! status: ${statusResponse.status}`);
                            }

                            const statusData = await statusResponse.json();
                            if (statusData.status === 'PAID') {
                                clearInterval(checkPaymentStatus);
                                alert('Thanh toán thành công!');
                                window.location.href = 'receipt-auto-print?orderId=' + currentOrderId;
                            } else if (statusData.status === 'CANCELLED') {
                                clearInterval(checkPaymentStatus);
                                alert('Thanh toán đã bị hủy.');
                            }
                        } catch (error) {
                            console.error('Error checking payment status:', error);
                        }
                    }, 5000);

                    // Dừng kiểm tra sau 5 phút
                    setTimeout(() => {
                        clearInterval(checkPaymentStatus);
                    }, 300000);

                } catch (error) {
                    console.error('Error creating payment:', error);
                    alert('Có lỗi xảy ra khi tạo thanh toán. Vui lòng thử lại sau.');
                }
            });
        </script>
    </body>
</html>
