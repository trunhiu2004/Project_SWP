<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>POS Home</title>
        <!-- Font Awesome CDN -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
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
                                <option value="1">Customer 1</option>
                                <option value="2">Customer 2</option>
                            </select>
                        </div>

                        <button class="customer_action_btn">
                            <i class="material-icons">edit</i>
                        </button>

                        <button class="customer_action_btn">
                            <i class="material-icons">add</i>
                        </button>
                    </div>

                    <div class="order_table_header_row">
                        <div>Item</div>
                        <div>Price</div>
                        <div>Qty</div>
                        <div>Total</div>
                    </div>

                    <div class="order_holder">
                        <!-- Cart items will go here -->
                    </div>

                    <div id="bottom_absolute">
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

                    <div class="specific_category_items_holder1">
                        <!-- Example Product Items -->
                        <a href="#" class="single_item">
                            <img src="https://via.placeholder.com/80" alt="" width="80" height="80">
                            <p>Product 1</p>
                            <p>Price: $10.00</p>
                        </a>
                        <a href="#" class="single_item">
                            <img src="https://via.placeholder.com/80" alt="" width="80" height="80">
                            <p>Product 2</p>
                            <p>Price: $15.00</p>
                        </a>
                        <!-- Add more products as needed -->
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                // Initialize Select2
                $('.select2').select2({
                    theme: "classic",
                    minimumResultsForSearch: Infinity,
                    width: '100%',
                    dropdownCssClass: 'select2-dropdown-clean'
                });

                // Update current time
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
                    const dateTimeString = now.toLocaleDateString('en-US', options);
                    document.getElementById('current_time').textContent = dateTimeString;
                }

                setInterval(updateTime, 1000);
                updateTime();

                // Initialize Select2 with custom theme
                $('.select2').select2({
                    theme: "classic",
                    placeholder: "Select an option",
                    minimumResultsForSearch: Infinity, // Ẩn ô tìm kiếm trong dropdown
                    width: '100%'
                });

                //Full Screne Button
                $('.fullscreen-btn').click(function () {
                    if (!document.fullscreenElement) {
                        document.documentElement.requestFullscreen();
                        $(this).find('.material-icons').text('fullscreen_exit');
                    } else {
                        document.exitFullscreen();
                        $(this).find('.material-icons').text('fullscreen');
                    }
                });
            });
        </script>
    </body>
</html>
