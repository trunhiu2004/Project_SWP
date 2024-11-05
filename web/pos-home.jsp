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
        <!--<script charset="UTF-8" src="assets/js/POS/pos-home.js"></script>-->
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
                                <a href="javascript:void(0)" class="header_menu_icon" data-tippy-content="Profile" id="profileDropdownToggle">
                                    <span class="iconify" data-icon="solar:user-check-broken" data-width="22"></span>
                                </a>
                                <ul class="sub__menu" id="profileDropdown">
                                    <li><a href="#" id="viewProfileBtn">Xem thông tin</a></li>
                                    <li><a href="javascript:void(0)" onclick="openChangePasswordModal()">Đổi mật khẩu</a></li>
                                    <li><a href="logout">Đăng xuất</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="HomeAdmin" class="header_menu_icon" target="_blank" data-tippy-content="Dashboard">
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
                            <li><% if (request.getParameter("error") != null && request.getParameter("error").equals("unauthorized")) { %>
                                <div class="alert alert-danger" role="alert">
                                    Bạn không có quyền truy cập trang này.
                                </div>
                                <style>
                                    .alert {
                                        padding: 5px;
                                        border: 1px solid transparent;
                                        border-radius: 1px;
                                    }
                                    .alert-danger {
                                        color: #721c24;
                                        background-color: #f8d7da;
                                        border-color: #f5c6cb;
                                    }
                                </style>

                                <% }%></li>
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
                            <select class="select2" id="select_employee" disabled>
                                <option value="">Loading...</select>
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
        <!--        <div class="modal fade" id="qrPaymentModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Thanh toán QR</h5>
                                <button type="button" class="close" data-dismiss="modal">
                                    <span>&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                 PayOS Payment Form sẽ được nhúng vào đây 
                                <div id="payos-wrapper"></div>
                            </div>
                        </div>
                    </div>
                </div>      -->
        <!-- Change Password Modal -->
        <div id="changePasswordModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <h2>Đổi mật khẩu</h2>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <form id="changePasswordForm">
                        <div class="form-group">
                            <label for="currentPassword">Mật khẩu hiện tại:</label>
                            <input type="password" id="currentPassword" name="currentPassword" required>
                        </div>
                        <div class="form-group">
                            <label for="newPassword">Mật khẩu mới:</label>
                            <input type="password" id="newPassword" name="newPassword" required>
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Xác nhận mật khẩu mới:</label>
                            <input type="password" id="confirmPassword" name="confirmPassword" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-cancel">Hủy</button>
                    <button type="button" class="btn-save" onclick="changePassword()">Lưu</button>
                </div>
            </div>
        </div>
        <!--View Profile Modal-->
        <div id="profileModal" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <h2>Thông tin người dùng</h2>
                <div id="profileInfo">
                    <!-- Thông tin người dùng sẽ được thêm vào đây bằng JavaScript -->
                </div>
            </div>
        </div>
        <script>
            // Initialize functions when document is ready
            $(document).ready(function () {
                console.log('Document ready');
                console.log('jQuery version:', $.fn.jquery);
                console.log('Select2 loaded:', typeof $.fn.select2 !== 'undefined');

                console.log('Customer select element exists:', $('#customerSelect').length > 0);
                console.log('Customer select HTML:', $('#customerSelect')[0]?.outerHTML);

                console.log('Edit button exists:', document.querySelector('.customer_action_btn i.material-icons') !== null);

                initializeOtherSelects();
                initializeFeatures();
            });
            function initializeCustomerSelect() {
                console.log('Initializing customer select...');

                $('#customerSelect').select2({
                    placeholder: 'Chọn khách hàng',
                    allowClear: true,
                    width: '100%',
                    ajax: {
                        url: 'load-customers',
                        dataType: 'json',
                        delay: 250,
                        data: function (params) {
                            console.log('Search params:', params);
                            return {
                                search: params.term || ''
                            };
                        },
                        processResults: function (data) {
                            console.log('Received data:', data);
                            return {
                                results: $.map(data, function (customer) {
                                    return {
                                        id: customer.id,
                                        text: customer.name + ' - ' + customer.phone + ' (' + customer.type + ')'
                                    };
                                })
                            };
                        },
                        cache: false
                    },
                    minimumInputLength: 0
                }).on('select2:select', function (e) {
                    var data = e.params.data;
                    console.log('Selected customer ID:', data.id); // Log cụ thể ID

                    // Set customer vào session
                    $.ajax({
                        url: 'set-customer',
                        method: 'GET',
                        data: {id: data.id},
                        success: function (response) {
                            console.log('Set customer response:', response);
                            if (response.success) {
                                console.log('Customer set successfully, initializing order...'); // Thêm log
                                // Sau khi set customer thành công, tạo order mới
                                fetch('init-order', {
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/json',
                                    },
                                    credentials: 'same-origin' // Đảm bảo gửi cookies/session
                                })
                                        .then(response => {
                                            console.log('Raw init-order response:', response.status); // Thêm log
                                            return response.json();
                                        })
                                        .then(data => {
                                            console.log('Init order response data:', data); // Thêm log
                                            if (data.success) {
                                                document.getElementById('currentOrderId').value = data.orderId;
                                                console.log('Order initialized:', data.orderId);
                                            } else {
                                                console.error('Failed to initialize order:', data.error);
                                                alert(data.error || 'Không thể tạo đơn hàng mới');
                                            }
                                        })
                                        .catch(error => {
                                            console.error('Error initializing order:', error);
                                            alert('Có lỗi xảy ra khi tạo đơn hàng');
                                        });
                            } else {
                                console.error('Failed to set customer:', response); // Thêm log
                                alert(response.message || 'Có lỗi xảy ra khi chọn khách hàng');
                            }
                        },
                        error: function (xhr, status, error) {
                            console.error('Error setting customer:', {xhr, status, error}); // Log chi tiết hơn
                            alert('Có lỗi xảy ra khi chọn khách hàng');
                        }
                    });
                });
            }

            // Gọi hàm khi document ready
            $(document).ready(function () {
                initializeCustomerSelect();
            });

            // Format customer in dropdown
            function formatCustomer(customer) {
                if (!customer.id)
                    return customer.text;

                return $('<div class="customer-option">' +
                        '<div class="customer-name">' + customer.text + '</div>' +
                        '</div>');
            }

            // Initialize other Select2 elements
            function initializeOtherSelects() {
                $('.select2:not(#customerSelect)').select2({
                    theme: "classic",
                    minimumResultsForSearch: Infinity,
                    width: '100%',
                    dropdownCssClass: 'select2-dropdown-clean'
                });
            }

            // Initialize all features
            function initializeFeatures() {
                initializeStockBadges();
                initializeTimeUpdate();
                initializeFullscreenButton();
                initializeBarcodeScanner();
                initializeSearchProduct();
                initializeCancelButton();
                initializeCustomerModal();
                initializePaymentFeatures();
                fetchAndDisplayEmployeeName();
            }
            function fetchAndDisplayEmployeeName() {
                fetch('user-profile')
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            if (data && data.name) {
                                const $select = $('#select_employee');
                                $select.empty();
                                $select.append(new Option(data.name, '', true, true));

                                // Initialize select2 with specific styling
                                $select.select2({
                                    disabled: true,
                                    theme: "classic",
                                    minimumResultsForSearch: Infinity,
                                    width: '100%'
                                });
                            } else {
                                throw new Error('Invalid user data');
                            }
                        })
                        .catch(error => {
                            console.error('Error loading user name:', error);
                            const $select = $('#select_employee');
                            $select.empty();
                            $select.append(new Option('Error loading name', '', true, true));

                            $select.select2({
                                disabled: true,
                                theme: "classic",
                                minimumResultsForSearch: Infinity,
                                width: '100%'
                            });
                        });
            }

            function loadCustomerTypes() {
                return fetch('load-customer-types')
                        .then(response => response.json())
                        .then(types => {
                            // Lấy references đến cả hai select elements
                            const editSelect = document.getElementById('customerType');
                            const addSelect = document.getElementById('newCustomerType');

                            if (editSelect) {
                                editSelect.innerHTML = '';
                                types.forEach(type => {
                                    const option = document.createElement('option');
                                    option.value = type.customerTypeId;
                                    option.textContent = type.typeName;
                                    editSelect.appendChild(option);
                                });
                            }

                            if (addSelect) {
                                addSelect.innerHTML = '';
                                types.forEach(type => {
                                    const option = document.createElement('option');
                                    option.value = type.customerTypeId;
                                    option.textContent = type.typeName;
                                    addSelect.appendChild(option);
                                });
                            }
                        })
                        .catch(error => {
                            console.error('Error loading customer types:', error);
                        });
            }
// Cart Management Functions
            function addToCart(storeStockId) {
                window.location.href = 'add-to-cart?storeStockId=' + storeStockId;
            }

            function updateQuantity(storeStockId, action, value = null) {
                let data = new URLSearchParams();
                data.append('storeStockId', storeStockId);
                data.append('action', action);

                if (value !== null) {
                    data.append('quantity', value);
                }

                fetch('update-cart', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: data.toString()
                })
                        .then(response => {
                            if (!response.ok)
                                throw new Error('Network response was not ok');
                            return response.json();
                        })
                        .then(data => {
                            if (data.success) {
                                window.location.href = 'PoSHome';
                            } else {
                                alert(data.error || 'Error updating cart');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert('Error updating cart');
                        });
            }

            function removeFromCart(storeStockId) {
                if (confirm('Are you sure you want to remove this item?')) {
                    const id = parseInt(storeStockId);
                    if (isNaN(id)) {
                        alert('Invalid item ID');
                        return;
                    }

                    fetch('remove-from-cart?storeStockId=' + id)
                            .then(response => {
                                if (response.ok) {
                                    window.location.href = 'PoSHome';
                                } else {
                                    alert('Error removing item from cart');
                                }
                            })
                            .catch(error => {
                                console.error('Error:', error);
                                alert('Error removing item from cart');
                            });
                }
            }

// Barcode and Search Functions
            function searchProductByBarcode(barcode) {
                if (!barcode)
                    return;

                fetch('search-product?barcode=' + encodeURIComponent(barcode))
                        .then(response => response.json())
                        .then(data => {
                            if (data.error) {
                                alert(data.error);
                                return;
                            }

                            if (data.storeStockId) {
                                addToCart(data.storeStockId);
                            } else {
                                alert('Không tìm thấy sản phẩm');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert('Lỗi khi tìm kiếm sản phẩm');
                        });
            }

// Utility Functions
            function initializeTimeUpdate() {
                function updateTime() {
                    const now = new Date();
                    const options = {
                        weekday: 'long',
                        year: 'numeric',
                        month: 'long',
                        day: 'numeric',
                        hour: '2-digit',
                        minute: '2-digit',
                        second: '2-digit'
                    };
                    document.getElementById('current_time').textContent = now.toLocaleDateString('en-US', options);
                }

                setInterval(updateTime, 1000);
                updateTime();
            }

            function initializeFullscreenButton() {
                $('.fullscreen-btn').click(function () {
                    if (!document.fullscreenElement) {
                        document.documentElement.requestFullscreen();
                        $(this).find('.iconify').attr('data-icon', 'majesticons:close-line');
                    } else {
                        document.exitFullscreen();
                        $(this).find('.iconify').attr('data-icon', 'majesticons:open-line');
                    }
                });
            }

            function initializeBarcodeScanner() {
                const barcodeInput = document.querySelector('input[placeholder="Scan barcode"]');
                if (barcodeInput) {
                    barcodeInput.focus();
                    barcodeInput.addEventListener('keypress', function (e) {
                        if (e.key === 'Enter') {
                            e.preventDefault();
                            if (this.value.trim()) {
                                searchProductByBarcode(this.value.trim());
                                this.value = '';
                            }
                        }
                    });
                }
            }

            function initializeSearchProduct() {
                const searchInput = document.querySelector('input[placeholder="Search by name, code, category"]');
                if (searchInput) {
                    searchInput.addEventListener('input', function (e) {
                        const searchText = e.target.value.toLowerCase();
                        document.querySelectorAll('.product-card').forEach(product => {
                            const name = product.querySelector('.product-name').textContent.toLowerCase();
                            product.style.display = name.includes(searchText) ? '' : 'none';
                        });
                    });
                }
            }

            function initializeStockBadges() {
                document.querySelectorAll('.stock-badge').forEach(badge => {
                    const stock = parseInt(badge.textContent);
                    if (stock < 10) {
                        badge.setAttribute('data-stock', 'low');
                    }
                });
            }

            function initializeCancelButton() {
                const cancelButton = document.querySelector('.bg__red');
                if (cancelButton) {
                    cancelButton.addEventListener('click', function () {
                        if (confirm('Bạn có chắc muốn xóa toàn bộ giỏ hàng?')) {
                            fetch('clear-cart', {
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/x-www-form-urlencoded',
                                }
                            })
                                    .then(response => response.json())
                                    .then(data => {
                                        if (data.success) {
                                            window.location.reload();
                                        } else {
                                            alert('Có lỗi xảy ra khi xóa giỏ hàng');
                                        }
                                    })
                                    .catch(error => {
                                        console.error('Error:', error);
                                        alert('Có lỗi xảy ra khi xóa giỏ hàng');
                                    });
                        }
                    });
                }
            }
            function openEditCustomerModal() {
                console.log('Opening modal...');
                const modal = document.getElementById('editCustomerModal');
                const selectedCustomer = $('#customerSelect').select2('data')[0];

                console.log('Selected customer:', selectedCustomer);

                if (!selectedCustomer || !selectedCustomer.id) {
                    alert('Vui lòng chọn khách hàng trước');
                    return;
                }

                // Load customer types first
                loadCustomerTypes().then(() => {
                    // Then load customer data
                    fetch('edit-customer?id=' + selectedCustomer.id)
                            .then(response => {
                                console.log('Response:', response);
                                return response.json();
                            })
                            .then(customer => {
                                console.log('Customer data:', customer);
                                document.getElementById('customerId').value = customer.customerId;
                                document.getElementById('customerName').value = customer.customerName;
                                document.getElementById('customerPhone').value = customer.customerPhone;
                                document.getElementById('customerType').value = customer.customerType.customerTypeId;
                                modal.style.display = 'block';
                            })
                            .catch(error => {
                                console.error('Error:', error);
                                alert('Có lỗi xảy ra khi lấy thông tin khách hàng');
                            });
                });
            }
            function closeEditCustomerModal() {
                const modal = document.getElementById('editCustomerModal');
                modal.style.display = 'none';
            }

            function saveCustomerChanges() {
                const formData = new FormData(document.getElementById('editCustomerForm'));

                fetch('edit-customer', {
                    method: 'POST',
                    body: new URLSearchParams(formData)
                })
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                alert('Cập nhật thông tin khách hàng thành công');
                                closeEditCustomerModal();
                                // Refresh customer select
                                $('#customerSelect').val(null).trigger('change');
                                loadCustomers(); // Thêm hàm này nếu bạn cần refresh danh sách khách hàng
                            } else {
                                alert('Có lỗi xảy ra khi cập nhật thông tin khách hàng');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert('Có lỗi xảy ra khi cập nhật thông tin khách hàng');
                        });
            }
            function loadCustomers() {
                $('#customerSelect').select2('destroy'); // Hủy select2 hiện tại
                loadCustomerTypes(); // Load lại customer types
                initializeCustomerSelect(); // Khởi tạo lại select2
            }
            function initializeCustomerModal() {
                // Edit button click
                const editButton = document.getElementById('editCustomerBtn');
                if (editButton) {
                    editButton.addEventListener('click', openEditCustomerModal);
                    console.log('Edit button initialized');
                } else {
                    console.error('Edit button not found');
                }

                // Add button click
                const addButton = document.getElementById('addCustomerBtn');
                if (addButton) {
                    addButton.addEventListener('click', openAddCustomerModal);
                    console.log('Add button initialized');
                }

                // Edit Modal Events
                const editModal = document.getElementById('editCustomerModal');
                if (editModal) {
                    const editCloseButton = editModal.querySelector('.close');
                    const editCancelButton = editModal.querySelector('.btn-cancel');
                    const editSaveButton = editModal.querySelector('.btn-save');

                    if (editCloseButton)
                        editCloseButton.addEventListener('click', closeEditCustomerModal);
                    if (editCancelButton)
                        editCancelButton.addEventListener('click', closeEditCustomerModal);
                    if (editSaveButton)
                        editSaveButton.addEventListener('click', saveCustomerChanges);
                }

                // Add Modal Events
                const addModal = document.getElementById('addCustomerModal');
                if (addModal) {
                    const addCloseButton = addModal.querySelector('.close');
                    const addCancelButton = addModal.querySelector('.btn-cancel');
                    const addSaveButton = addModal.querySelector('.btn-save');

                    if (addCloseButton)
                        addCloseButton.addEventListener('click', closeAddCustomerModal);
                    if (addCancelButton)
                        addCancelButton.addEventListener('click', closeAddCustomerModal);
                    if (addSaveButton)
                        addSaveButton.addEventListener('click', saveNewCustomer);
                }

                // Modal close button
                const closeButton = document.querySelector('#editCustomerModal .close');
                if (closeButton) {
                    closeButton.addEventListener('click', closeEditCustomerModal);
                    console.log('Close button initialized');
                }

                // Modal cancel button
                const cancelButton = document.querySelector('#editCustomerModal .btn-cancel');
                if (cancelButton) {
                    cancelButton.addEventListener('click', closeEditCustomerModal);
                    console.log('Cancel button initialized');
                }

                // Modal save button
                const saveButton = document.querySelector('#editCustomerModal .btn-save');
                if (saveButton) {
                    saveButton.addEventListener('click', saveCustomerChanges);
                    console.log('Save button initialized');
                }
                loadCustomerTypes();

                // Close modals when clicking outside
                window.addEventListener('click', function (event) {
                    const editModal = document.getElementById('editCustomerModal');
                    const addModal = document.getElementById('addCustomerModal');

                    if (event.target === editModal) {
                        closeEditCustomerModal();
                    }
                    if (event.target === addModal) {
                        closeAddCustomerModal();
                    }
                });
            }
// Hàm mở modal thêm khách hàng
            function openAddCustomerModal() {
                console.log('Opening add customer modal...');
                const modal = document.getElementById('addCustomerModal');

                // Load customer types before showing modal
                loadCustomerTypes().then(() => {
                    modal.style.display = 'block';
                    // Reset form
                    document.getElementById('addCustomerForm').reset();
                });
            }

// Hàm đóng modal thêm khách hàng
            function closeAddCustomerModal() {
                const modal = document.getElementById('addCustomerModal');
                modal.style.display = 'none';
            }

// Hàm xử lý việc thêm khách hàng mới
            function saveNewCustomer() {
                const formData = new FormData(document.getElementById('addCustomerForm'));

                // Validate form
                const customerName = formData.get('customerName').trim();
                const customerPhone = formData.get('customerPhone').trim();

                if (!customerName || !customerPhone) {
                    alert('Vui lòng điền đầy đủ thông tin');
                    return;
                }

                if (!/^[0-9]{10}$/.test(customerPhone)) {
                    alert('Số điện thoại không hợp lệ');
                    return;
                }

                fetch('add-customer', {
                    method: 'POST',
                    body: new URLSearchParams(formData)
                })
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                alert('Thêm khách hàng mới thành công');
                                closeAddCustomerModal();

                                // Refresh customer select và chọn khách hàng mới
                                if (data.customerId) {
                                    loadCustomers().then(() => {
                                        $('#customerSelect').val(data.customerId).trigger('change');
                                    });
                                } else {
                                    loadCustomers();
                                }
                            } else {
                                alert(data.message || 'Có lỗi xảy ra khi thêm khách hàng');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert('Có lỗi xảy ra khi thêm khách hàng');
                        });
            }
// Payment Functions
            function initializePaymentFeatures() {
                initializeCashPayment();
                initializePaymentModals();
            }

            function initializeCashPayment() {
                const cashPaymentBtn = document.querySelector('.bg_hold');
                if (cashPaymentBtn) {
                    cashPaymentBtn.addEventListener('click', openCashPaymentModal);
                }
            }

            function initializePaymentModals() {
                // Cash Payment Modal Events
                const cashModal = document.getElementById('cashPaymentModal');
                if (cashModal) {
                    const closeButtons = cashModal.querySelectorAll('.close, .btn-secondary');
                    const confirmButton = cashModal.querySelector('#confirmPayment');
                    const receivedInput = cashModal.querySelector('#receivedAmount');

                    closeButtons.forEach(button => {
                        button.addEventListener('click', closeCashPaymentModal);
                    });

                    if (confirmButton) {
                        confirmButton.addEventListener('click', processCashPayment);
                    }

                    if (receivedInput) {
                        receivedInput.addEventListener('input', calculateChange);
                    }
                }

                // Receipt Modal Events
                const receiptModal = document.getElementById('receiptModal');
                if (receiptModal) {
                    const closeButtons = receiptModal.querySelectorAll('.close, .btn-secondary');
                    const printButton = receiptModal.querySelector('.btn-primary');

                    closeButtons.forEach(button => {
                        button.addEventListener('click', closeReceiptModal);
                    });

                    if (printButton) {
                        printButton.addEventListener('click', printReceipt);
                    }
                }
            }

            function openCashPaymentModal() {
                console.log('Opening cash payment modal...');
                const selectedCustomer = $('#customerSelect').select2('data')[0];

                // Validate customer selection
                if (!selectedCustomer || !selectedCustomer.id) {
                    alert('Vui lòng chọn khách hàng trước khi thanh toán');
                    return;
                }

                // Get total amount
                const totalAmountElement = document.querySelector('.cart-summary .summary-row span:last-child');
                if (!totalAmountElement) {
                    alert('Không thể lấy thông tin giỏ hàng');
                    return;
                }

                const totalAmount = parseFloat(totalAmountElement.textContent.replace(/[^\d]/g, ''));

                // Validate cart
                if (!totalAmount || totalAmount <= 0) {
                    alert('Giỏ hàng trống');
                    return;
                }

                // Open modal and set values
                document.getElementById('totalAmount').value = formatCurrency(totalAmount);
                document.getElementById('receivedAmount').value = '';
                document.getElementById('changeAmount').value = '';
                document.getElementById('cashPaymentModal').style.display = 'block';
                document.getElementById('receivedAmount').focus();
            }


            function closeCashPaymentModal() {
                document.getElementById('cashPaymentModal').style.display = 'none';
            }

            function closeReceiptModal() {
                document.getElementById('receiptModal').style.display = 'none';
                // Chỉ clear cart và reload trang sau khi đóng modal receipt
                clearCart().then(() => {
                    window.location.reload();
                });
            }

            function calculateChange() {
                const totalAmount = parseFloat(document.getElementById('totalAmount').value.replace(/[^\d]/g, ''));
                const receivedInput = document.getElementById('receivedAmount');
                const receivedAmount = parseFloat(receivedInput.value) || 0;
                const changeAmount = receivedAmount - totalAmount;

                // Validate input
                if (receivedAmount <= 0) {
                    document.getElementById('changeAmount').value = '';
                    document.getElementById('confirmPayment').disabled = true;
                    return;
                }

                document.getElementById('changeAmount').value = formatCurrency(Math.max(0, changeAmount));
                document.getElementById('confirmPayment').disabled = changeAmount < 0;
            }


            function processCashPayment() {
                const selectedCustomer = $('#customerSelect').select2('data')[0];
                const totalAmount = parseFloat(document.getElementById('totalAmount').value.replace(/[^\d]/g, ''));
                const receivedAmount = parseFloat(document.getElementById('receivedAmount').value);

                // Validate customer selection
                if (!selectedCustomer || !selectedCustomer.id) {
                    alert('Vui lòng chọn khách hàng');
                    return;
                }

                // Validate cart
                if (!totalAmount || totalAmount <= 0) {
                    alert('Giỏ hàng trống');
                    return;
                }

                // Validate received amount
                if (!receivedAmount) {
                    alert('Vui lòng nhập số tiền khách đưa');
                    return;
                }
                if (receivedAmount < totalAmount) {
                    alert('Số tiền khách đưa không đủ');
                    return;
                }

                const changeAmount = receivedAmount - totalAmount;
                // Disable nút thanh toán
                document.getElementById('confirmPayment').disabled = true;

                fetch('process-cash-payment', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({
                        customerId: selectedCustomer.id,
                        totalAmount: totalAmount,
                        receivedAmount: receivedAmount,
                        changeAmount: changeAmount
                    })
                })
                        .then(response => {
                            if (!response.ok) {
                                return response.text().then(text => {
                                    throw new Error(text || 'Có lỗi xảy ra');
                                });
                            }
                            return response.text();
                        })
                        .then(html => {
                            closeCashPaymentModal();
                            document.getElementById('receiptContent').innerHTML = html;
                            document.getElementById('receiptModal').style.display = 'block';

                            // Tự động in hoá đơn
                            setTimeout(() => {
                                printReceipt();
                            }, 500);
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert(error.message || 'Có lỗi xảy ra khi xử lý thanh toán');
                        })
                        .finally(() => {
                            document.getElementById('confirmPayment').disabled = false;
                        });
            }
            function clearCart() {
                return fetch('clear-cart', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    }
                })
                        .then(response => response.json())
                        .catch(error => {
                            console.error('Error:', error);
                        });
            }


            function printReceipt() {
                const printWindow = window.open('', '', 'height=600,width=800');
                printWindow.document.write('<html><head><title>Hóa đơn</title>');
                printWindow.document.write('<link rel="stylesheet" href="assets/css/receipt.css">');
                printWindow.document.write('</head><body>');
                printWindow.document.write(document.getElementById('receiptContent').innerHTML);
                printWindow.document.write('</body></html>');
                printWindow.document.close();

                // Đợi CSS load xong
                setTimeout(() => {
                    printWindow.print();
                    printWindow.onafterprint = function () {
                        printWindow.close();
                    };
                }, 500);
            }

            // Format currency utility function
            function formatCurrency(amount) {
                return new Intl.NumberFormat('vi-VN', {
                    style: 'currency',
                    currency: 'VND'
                }).format(amount);
            }
            function openChangePasswordModal() {
                document.getElementById('changePasswordModal').style.display = 'block';
            }

            function closeChangePasswordModal() {
                document.getElementById('changePasswordModal').style.display = 'none';
            }

            function changePassword() {
                const currentPassword = document.getElementById('currentPassword').value;
                const newPassword = document.getElementById('newPassword').value;
                const confirmPassword = document.getElementById('confirmPassword').value;

                if (newPassword !== confirmPassword) {
                    alert('Mật khẩu mới không khớp');
                    return;
                }

                fetch('profile?action=changePassword', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                        'X-Requested-With': 'XMLHttpRequest'
                    },
                    body: new URLSearchParams({
                        currentPassword: currentPassword,
                        newPassword: newPassword,
                        confirmPassword: confirmPassword
                    })
                })
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                alert('Đổi mật khẩu thành công');
                                closeChangePasswordModal();
                            } else {
                                alert(data.message || 'Đổi mật khẩu thất bại');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert('Có lỗi xảy ra khi đổi mật khẩu');
                        });
            }

            // Đóng modal khi click bên ngoài
            window.onclick = function (event) {
                if (event.target === document.getElementById('changePasswordModal')) {
                    closeChangePasswordModal();
                }
            };
            document.addEventListener('DOMContentLoaded', function () {
                const profileDropdownToggle = document.getElementById('profileDropdownToggle');
                const profileDropdown = document.getElementById('profileDropdown');
                const viewProfileBtn = document.getElementById('viewProfileBtn');
                const profileModal = document.getElementById('profileModal');
                const closeBtn = profileModal.querySelector('.close');
                const profileInfo = document.getElementById('profileInfo');

                console.log('viewProfileBtn:', viewProfileBtn); // Debug

                viewProfileBtn.addEventListener('click', function (e) {
                    e.preventDefault();
                    console.log('View profile button clicked'); // Debug
                    fetchUserProfile();
                });

                closeBtn.addEventListener('click', function () {
                    profileModal.style.display = 'none';
                });

                window.addEventListener('click', function (e) {
                    if (e.target == profileModal) {
                        profileModal.style.display = 'none';
                    }
                });

                function fetchUserProfile() {
                    console.log('Fetching user profile');
                    fetch('user-profile')
                            .then(response => {
                                console.log('Response:', response);
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                console.log('Data received:', data);
                                if (data && typeof data === 'object') {
                                    // Check if the data object has the expected properties
                                    if (data.name || data.email || data.phone || data.address) {
                                        displayUserProfile(data);
                                    } else {
                                        console.error('Data object is missing expected properties:', data);
                                        displayUserProfile(null); // This will show an error message in the modal
                                    }
                                } else {
                                    console.error('Invalid data format received:', data);
                                    displayUserProfile(null); // This will show an error message in the modal
                                }
                            })
                            .catch(error => {
                                console.error('Error:', error);
                                displayUserProfile(null); // This will show an error message in the modal
                            });
                }
                function displayUserProfile(user) {
                    console.log('Displaying user profile, received user object:', user);
                    const profileInfo = document.getElementById('profileInfo');

                    if (profileInfo && user) {
                        // Create elements individually
                        profileInfo.innerHTML = ''; // Clear existing content

                        // Name
                        const nameP = document.createElement('p');
                        const nameStrong = document.createElement('strong');
                        nameStrong.textContent = 'Tên: ';
                        nameP.appendChild(nameStrong);
                        nameP.appendChild(document.createTextNode(user.name));

                        // Email
                        const emailP = document.createElement('p');
                        const emailStrong = document.createElement('strong');
                        emailStrong.textContent = 'Email: ';
                        emailP.appendChild(emailStrong);
                        emailP.appendChild(document.createTextNode(user.email));

                        // Phone
                        const phoneP = document.createElement('p');
                        const phoneStrong = document.createElement('strong');
                        phoneStrong.textContent = 'Số điện thoại: ';
                        phoneP.appendChild(phoneStrong);
                        phoneP.appendChild(document.createTextNode(user.phone));

                        // Address
                        const addressP = document.createElement('p');
                        const addressStrong = document.createElement('strong');
                        addressStrong.textContent = 'Địa chỉ: ';
                        addressP.appendChild(addressStrong);
                        addressP.appendChild(document.createTextNode(user.address));

                        // Append all elements
                        profileInfo.appendChild(nameP);
                        profileInfo.appendChild(emailP);
                        profileInfo.appendChild(phoneP);
                        profileInfo.appendChild(addressP);

                        console.log('Profile info content set');
                        console.log('profileInfo content:', profileInfo.textContent);
                        console.log('Actual Data:', user, user.name, user.email, user.phone, user.address);
                    } else {
                        console.error('profileInfo element not found or user data is null');
                        if (profileInfo) {
                            const errorP = document.createElement('p');
                            errorP.textContent = 'Không thể tải thông tin người dùng.';
                            profileInfo.innerHTML = '';
                            profileInfo.appendChild(errorP);
                        }
                    }

                    const profileModal = document.getElementById('profileModal');
                    if (profileModal) {
                        profileModal.style.display = 'block';
                    }
                }

            });

        </script>
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
