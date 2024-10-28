<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                                <a href="home.jsp" class="header_menu_icon" data-tippy-content="Dashboard">
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
                            <select class="select2" id="select_customer">
                                <option value="">Walk-in Customer</option>
                            </select>

                        </div>

                        <button class="customer_action_btn">
                            <i class="material-icons">edit</i>
                        </button>

                        <button class="customer_action_btn">
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
                                <i class="material-icons">pause</i>
                                Hold
                            </button>
                            <button class="bg__green">
                                <i class="material-icons">payment</i>
                                Payment
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
        </div>
        <script>
            $(document).ready(function () {
// Khởi tạo Select2 cho customer một lần duy nhất
                $('#select_customer').select2({
                    theme: "classic",
                    width: '100%',
                    placeholder: "Walk-in Customer",
                    allowClear: true,
                    ajax: {
                        url: 'load-customers',
                        dataType: 'json',
                        delay: 250,
                        processResults: function (data) {
                            const results = data.map(customer => ({
                                    id: customer.id,
                                    text: `${customer.name} (${customer.phone}) - ${customer.type}`
                                                            }));

                                                        results.unshift({
                                                            id: '',
                                                            text: 'Walk-in Customer'
                                                        });

                                                        return {results};
                                                    },
                                                    cache: true
                                                },
                                                minimumInputLength: 0
                                            });

// Event handlers cho select customer
                                            $('#select_customer')
                                                    .on('select2:open', () => console.log('Select2 opened'))
                                                    .on('select2:select', function (e) {
                                                        const customerId = e.params.data.id;

                                                        fetch('set-customer?id=' + (customerId || ''))
                                                                .then(response => response.json())
                                                                .then(data => {
                                                                    if (data.success) {
                                                                        console.log(customerId ?
                                                                                'Selected customer:' + data.customerName :
                                                                                'Set to walk-in customer'
                                                                                );
                                                                    } else {
                                                                        throw new Error(data.message || 'Error selecting customer');
                                                                    }
                                                                })
                                                                .catch(error => {
                                                                    console.error('Error:', error);
                                                                    alert('Error selecting customer');
                                                                });
                                                    });
                                            initializeStockBadges();
// Load dữ liệu customer ban đầu
                                            loadInitialCustomers();

// Khởi tạo các select2 khác
                                            $('.select2:not(#select_customer)').select2({
                                                theme: "classic",
                                                minimumResultsForSearch: Infinity,
                                                width: '100%',
                                                dropdownCssClass: 'select2-dropdown-clean'
                                            });

// Khởi tạo các tính năng khác
                                            initializeTimeUpdate();
                                            initializeFullscreenButton();
                                            initializeBarcodeScanner();
                                            initializeSearchProduct();
                                        });

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
                                                        if (!response.ok) {
                                                            throw new Error('Network response was not ok');
                                                        }
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
                                            console.log("Removing item with ID:", storeStockId);
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

                                            console.log('Searching for barcode:', barcode);

                                            fetch('search-product?barcode=' + encodeURIComponent(barcode))
                                                    .then(response => {
                                                        console.log('Response status:', response.status);
                                                        return response.json();
                                                    })
                                                    .then(data => {
                                                        console.log('Search result:', data);
                                                        if (data.error) {
                                                            alert(data.error);
                                                            return;
                                                        }

                                                        if (data.storeStockId) {
                                                            console.log('Found product, adding to cart...');
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

// Helper Functions
                                        function loadInitialCustomers() {
                                            $.ajax({
                                                url: 'load-customers',
                                                dataType: 'json'
                                            }).then(function (data) {
                                                console.log('Initial customers loaded:', data);

                                                const formattedData = data.map(customer => ({
                                                        id: customer.id,
                                                        text: `${customer.name} (${customer.phone}) - ${customer.type}`
                                                                        }));

                                                                    formattedData.unshift({
                                                                        id: '',
                                                                        text: 'Walk-in Customer'
                                                                    });

                                                                    const select = $('#select_customer');
                                                                    formattedData.forEach(item => {
                                                                        select.append(new Option(item.text, item.id, false, false));
                                                                    });

                                                                    select.val('').trigger('change');
                                                                });
                                                            }

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
                                                                    document.getElementById('current_time').textContent =
                                                                            now.toLocaleDateString('en-US', options);
                                                                }

                                                                setInterval(updateTime, 1000);
                                                                updateTime();
                                                            }

                                                            function initializeFullscreenButton() {
                                                                $('.fullscreen-btn').click(function () {
                                                                    if (!document.fullscreenElement) {
                                                                        document.documentElement.requestFullscreen();
                                                                        $(this).find('.material-icons').text('fullscreen_exit');
                                                                    } else {
                                                                        document.exitFullscreen();
                                                                        $(this).find('.material-icons').text('fullscreen');
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
                                                                                console.log('Scanning barcode:', this.value);
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
                                                                        const products = document.querySelectorAll('.product-card');

                                                                        products.forEach(product => {
                                                                            const name = product.querySelector('.product-name').textContent.toLowerCase();
                                                                            const shouldShow = name.includes(searchText);
                                                                            product.style.display = shouldShow ? '' : 'none';
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
                                                            // Lấy reference đến nút Cancel
                                                            const cancelButton = document.querySelector('.bg__red');

// Thêm event listener
                                                            cancelButton.addEventListener('click', function () {
                                                                // Hiển thị confirm dialog để tránh việc click nhầm
                                                                const confirmReset = confirm('Bạn có chắc muốn xóa toàn bộ giỏ hàng?');

                                                                if (confirmReset) {
                                                                    // Gửi request đến server để xóa giỏ hàng
                                                                    fetch('clear-cart', {
                                                                        method: 'POST',
                                                                        headers: {
                                                                            'Content-Type': 'application/x-www-form-urlencoded',
                                                                        }
                                                                    })
                                                                            .then(response => response.json())
                                                                            .then(data => {
                                                                                if (data.success) {
                                                                                    // Reload trang để cập nhật UI
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

        </script>
    </body>
</html>
