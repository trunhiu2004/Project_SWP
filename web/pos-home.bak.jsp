<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Off POS | Retail POS and Stock Software</title>
  <!-- Favicon -->
  <link rel="shortcut icon"
    href="assets/images/6fd15bfae8a4874f86610e0279ad9e15.ico"
    type="image/x-icon">
  <!-- Iconify Font -->
  <script src="assets/iconify/js/iconify.min.js"></script>
  <!-- Font Awesome 6.5.1-->
  <link rel="stylesheet"
    href="assets/css/fontawesome-free-6.5.1-web/css/all.min.css">
  <link rel="stylesheet" href="assets/css/POS/css/style.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/fonts/google_font_POS.css" type="text/css">
  <link rel="stylesheet" href="assets/css/POS/css/font_awesome_all.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/sweetalert2-new.min.css" type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/perfect-scrollbar.css">
  <link rel="stylesheet"
    href="assets/css/POS/css/select2.min.css"
    type="text/css">
  <link rel="stylesheet" href="assets/css/POS/css/jquery-ui.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/keyboard.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/custom_theme.css" type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/main_screen.css" type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/pos-screen-loader.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/register_details.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/customModal.css" type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/jquery.dataTables.min.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/buttons.dataTables.min.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/custom_check_box.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/main_screen_finalize.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/main_screen_responsive.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/perfect-scrollbar1.css"
    type="text/css">
  <link rel="stylesheet" href="assets/css/notify/toastr.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/animate.min.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/datepicker.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/scale.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/tippy.css"
    type="text/css">
  <link rel="stylesheet"
    href="assets/css/POS/css/jquery.numpad.css">
  <link rel="stylesheet" href="assets/css/POS/css/preloader.css">
  <!-- POS Screen Final Responsive CSS -->
  <link rel="stylesheet"
    href="assets/css/POS/css/pos_responsive.css" type="text/css">
  <style>
    /* for dynamic language font load, used internal css */
    /* for check change of bangla language font */
    * {
      font-family: Outfit, sans-serif;
    }

    .slimScrollDivCategory .category_button {
      font-family: Outfit, sans-serif;
    }
    .specific_category_items_holder1 {
    display: flex;
    flex-wrap: wrap; /* Allows items to wrap to the next line */
    gap: 15px; /* Optional: Space between the items */
    max-height: 550px; /* Height at which the scroll bar will activate */
    overflow-y: auto; /* Enable vertical scroll when content overflows */
    overflow-x: hidden; /* Disable horizontal scroll */
    padding: 10px; /* Optional padding */
    background-color: #f9f9f9; /* Optional background color */
}


  </style>
</head>


<body>

  <!-- Preloader HTML -->
  <div class="main-preloader">
    <div class="loadingio-spinner-spin-nq4q5u6dq7r">
      <div class="ldio-x2uulkbinbj">
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
        <div>
          <div></div>
        </div>
      </div>
    </div>
  </div>

  <!-- Hidden Input For JS -->
  <input type="hidden" id="base_url" value="http://localhost:9999/SWP_Project/PoSHome/">
  <input type="hidden" id="last_sale_id" value="PmIWYw8CiKZcgJcKUPzXtw==">
  <input type="hidden" id="role" value="1">
  <input type="hidden" id="register_status" value="1">
  <input type="hidden" id="csrf_value_" value="">
  <input type="hidden" id="currency" value="?">
  <input type="hidden" id="op_precision" value="2">
  <input type="hidden" id="op_decimals_separator" value=".">
  <input type="hidden" id="op_thousands_separator" value=".">
  <input type="hidden" id="tax_is_gst" value="No">
  <input type="hidden" id="csrf_name_" value="ci_csrf_token">
  <input type="hidden" id="collect_tax" value="Yes">
  <input type="hidden" id="currency_hidden" value="?">
  <input type="hidden" id="print_format" value="A4 Print">
  <input type="hidden" id="invoice_print" value="web_browser">
  <input type="hidden" id="op_date_format" value="m/d/Y">
  <input type="hidden" id="gst_state_code" value="">
  <input type="hidden" id="direct_cart" value="Yes">
  <input type="hidden" id="default_customer" value="1">
  <input type="hidden" id="sms_enable_status" value="2">
  <input type="hidden" id="smtp_enable_status" value="2">
  <input type="hidden" id="send_invoice_whatsapp" value="Disable">
  <input type="hidden" id="default_payment_hidden" value="1">
  <input type="hidden" id="pos_total_payable_type" value="">
  <input type="hidden" id="onscreen_keyboard_status" value="Disable">
  <input type="hidden" id="view_purchase_price" value="Yes">
  <input type="hidden" id="tax_type" value="1">
  <input type="hidden" id="stripe_publish_key" value="XXXXXXXXXXXXXXXXXXXX">
  <input type="hidden" id="grocery_experience" value="Regular">
  <input type="hidden" id="generic_name_search_option" value="No">


  <input type="hidden" id="order_object">
  <input type="hidden" id="Place_Order">
  <input type="hidden" id="finalize_update_type">
  <input type="hidden" id="customer_credit_limit">
  <input type="hidden" id="customer_previous_due">
  <input type="hidden" id="customer" value="Customer">
  <input type="hidden" id="alert_check" name="alert_check">
  <input type="hidden" id="ok" value="OK">
  <input type="hidden" id="yes" value="Yes">
  <input type="hidden" id="dummy_data_delete_alert"
    value="Are you sure? your old added items and item categories will be removed">
  <input type="hidden" id="pharmacy_search_place_holder_pos" value="Name or Generic Name or Code">
  <input type="hidden" id="other_search_place_holder_pos" value="Name or Code or Category">
  <input type="hidden" id="The" value="The">
  <input type="hidden" id="selected_invoice_sale_customer" value="">
  <input type="hidden" id="alert" value="Alert">
  <input type="hidden" id="cancel" value="Cancel">
  <input type="hidden" id="note_lan" value="Note">
  <input type="hidden" id="no_hold" value="There is no hold!">
  <input type="hidden" id="a_error" value="error">
  <input type="hidden" id="select" value="Select">
  <input type="hidden" id="amount_txt" value="Amount">
  <input type="hidden" id="no_access" value="You have no access for this module">
  <input type="hidden" id="check_no_lan" value="Check No">
  <input type="hidden" id="cart_empty" value="Cart is empty!">
  <input type="hidden" id="mobile_no_lan" value="Mobile No">
  <input type="hidden" id="edit_warning" value="You can not edit Walk-in Customer">
  <input type="hidden" id="already_added" value="This payment method already added!">
  <input type="hidden" id="add_to_cart_text" value="Add To Cart">
  <input type="hidden" id="paypal_email_lan" value="Paypal Email">
  <input type="hidden" id="stripe_email_lan" value="Stripe Email">
  <input type="hidden" id="sale_date1" value="2024-10-17">
  <input type="hidden" id="cart_not_empty" value="Cart is not empty, want to proceed?">
  <input type="hidden" id="loyalty_point_txt" value="Loyalty Point">
  <input type="hidden" id="transaction_no_lan" value="Transaction No">
  <input type="hidden" id="register_close_text" value="Register closed successfully">
  <input type="hidden" id="field_is_required" value="field is required.">
  <input type="hidden" id="item_modal_status" value="View Stock in Sale">
  <input type="hidden" id="select_a_customer" value="Please Select a Customer">
  <input type="hidden" id="card_holder_name_lan" value="Card Holder Name">
  <input type="hidden" id="check_issue_date_lan" value="Check Issue Date">
  <input type="hidden" id="check_expiry_date_lan" value="Check Expiry Date">
  <input type="hidden" id="loyalty_point_error" value="">
  <input type="hidden" id="add_at_least_one_qty" value="Please add at least 1 quantity">
  <input type="hidden" id="sure_delete_this_sale" value="Are you sure to delete this sale?">
  <input type="hidden" id="card_holding_number_lan" value="Card Holding Number">
  <input type="hidden" id="last_future_sale_id" name="last_future_sale_id" class="last_future_sale_id">
  <input type="hidden" id="sure_delete_this_hold" value="Are you sure to delete this hold?">
  <input type="hidden" id="sure_delete_this_order" value="Are you sure to delete this order?">
  <input type="hidden" id="please_select_an_order" value="Please select an order to proceed!">
  <input type="hidden" id="tool_tip_loyalty_point" value="Total required loyalty point as per setting">
  <input type="hidden" id="please_select_hold_sale" value="Please select a Hold Sale to proceed!">
  <input type="hidden" id="no_permission_for_this_module" value="You have no permission for this module">
  <input type="hidden" id="product_display" value="Image View">
  <input type="hidden" id="The_discount_code_field_required" value="The discount code field is required">
  <input type="hidden" id="The_coupon_code_field_required" value="The Coupon Code field is required">
  <input type="hidden" id="cart_not_empty_want_to_clear" value="Cart is not empty, want to clear the cart?">
  <input type="hidden" id="are_you_delete_all_hold_sale" value="Are you sure to delete all hold sales?">
  <input type="hidden" id="loyalty_rate" value="0.1">
  <input type="hidden" id="loyalty_point_is_not_available" value="Loyalty Point is not available for this customer">
  <input type="hidden" id="Alternative_Medicine_will_shown_here" value="Alternative Medicines will be shown here">
  <input type="hidden" id="default_cursor_position" value="Barcode Box">
  <input type="hidden" id="your_added_payment_method_will_remove" value="Your previous payments will be removed">
  <input type="hidden" id="loyalty_point_not_applicable" value="Loyalty point not applicable for Walk in Customer!">
  <input type="hidden" id="copy_db_exp" value="Copy">
  <input type="hidden" id="print_db_exp" value="Print">
  <input type="hidden" id="excel_db_exp" value="Excel">
  <input type="hidden" id="csv_db_exp" value="CSV">
  <input type="hidden" id="pdf_db_exp" value="PDF">
  <input type="hidden" id="pdf_db_exp" value="PDF">





  <!-- Hidden Input For JS End -->

  <span class="loader1"></span>
  <span class="loader"></span>
  <span id="stop_refresh_for_search" class="d-none">Yes</span>

  <!-- Start Header Wrap -->
  <div class="wrapper fix">
    <!-- Header Desktop Area -->
    <div class="top_header_part">
      <!-- Left Header Menu List -->
      <div class="left_item">
        <div class="header_part_middle">
          <ul class="icon__menu">
            <li class="has__children main_menu">
              <a tabindex="-1" href="javascript:void(0)" class="header_menu_icon dropdown-menu"
                data-tippy-content="Main Menu">
                <iconify-icon icon="solar:user-check-broken" width="22"></iconify-icon>
              </a>
              <ul class="sub__menu custom_dropdown" role="menu">
                <li>
                  <a tabindex="-1" href="#">Change
                    Profile</a>
                </li>
                <li>
                  <a tabindex="-1" href="#">Change
                    Password</a>
                </li>
                <li>
                  <a tabindex="-1" href="#">Set Security
                    Question</a>
                </li>
                <li>
                  <a tabindex="-1" class="logOutTrigger" href="javascript:void(0)">Logout</a>
                </li>
              </ul>
            </li>



            <li>
              <a tabindex="-1" href="home.jsp" target="_blank"
                class="header_menu_icon" data-tippy-content="Dashboard">
                <iconify-icon icon="solar:chart-2-broken" width="22"></iconify-icon>
              </a>
            </li>

          </ul>
          <ul class="icon__menu">
            <li>
              <a tabindex="-1" href="javascript:void(0)" class="time__date">
                <iconify-icon icon="solar:clock-circle-broken" width="22"></iconify-icon>
              </a>
            </li>

          </ul>
        </div>
      </div>
      <!-- Left Header Menu List End-->

      <!-- Right Header Menu List -->
      <div class="header_part_right">

        <ul class="btn__menu">

          <li>
            <a tabindex="-1" href="javascript:void(0)" data-id="" class="bg__blue button_category_show_all">All</a>
          </li>
          <li class="has__children">
            <a tabindex="-1" href="javascript:void(0)"
              class="show__brand__list bg__blue off-pos-open-dropdown-menu">Brand</a>
            <div class="submenu-wrapper">
              <ul class="sub__menu brand__sub__menu">
                <li>
                  <a tabindex="-1" href="javascript:void(0)" data-id=""
                    class="category_button button_category_show_all brand_all_category">All</a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_35">
                    Amazon </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_34">
                    ?? ???? ????????? </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_33">
                    Nari </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_32">
                    Nalibon </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_31">
                    NIVEA </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_30">
                    Panasonic </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_29">
                    Singer </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_28">
                    Vision </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_27">
                    Walton </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_26">
                    Popular Pharmaceuticals Ltd. </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_25">
                    Square Pharmaceuticals PLC </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_24">
                    Biopharma Limited </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_23">
                    ACI Limited </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_22">
                    ACME Laboratories Ltd. </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_21">
                    Drug International Ltd. </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_20">
                    Beximco Pharmaceuticals Ltd. </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_19">
                    Penasonic </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_18">
                    Lenovo </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_17">
                    Microsoft </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_16">
                    LG </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_15">
                    Huawei </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_14">
                    Tenda </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_13">
                    TP Link </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_12">
                    Dlink </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_11">
                    Asus </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_10">
                    Dell </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_9">
                    HP </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_8">
                    Sony </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_7">
                    Samsung </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_6">
                    Apple </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_5">
                    Le Reve </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_3">
                    Arong </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_2">
                    Gentle Park </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_1">
                    Easy </a>
                </li>
              </ul>
            </div>
          </li>

          <li class="has__children sorting_item_wrapper">
            <a href="javascript:void(0)" class="bg__blue off-pos-open-dropdown-menu sorting_item_title">Most Selling</a>
            <div class="submenu-wrapper">
              <ul class="sub__menu">
                <li><a tabindex="-1" data-sort_id="1" class="sorting_item" href="javascript:void(0)">Most Selling</a>
                </li>
                <li><a tabindex="-1" data-sort_id="2" class="sorting_item" href="javascript:void(0)">Less Selling</a>
                </li>
                <li><a tabindex="-1" data-sort_id="3" class="sorting_item" href="javascript:void(0)">Not Selling</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="has__children">
            <a tabindex="-1" href="javascript:void(0)" class="bg__blue promo_filter">Promo</a>
          </li>
        </ul>
      </div>
      <!-- Right Header Menu List End -->
    </div>
    <!-- Header Desktop Area End -->


    <!-- Start Mobile  Top Header -->
    <div class="top_header_for_mobile">
      <div class="for-mobile-mode">
        <button type="button" class="show_product bg__grey">
          <iconify-icon iconify-icon icon="solar:list-heart-minimalistic-linear" width="22"></iconify-icon>
          <span>Products</span>
        </button>
        <button type="button" class="show_cart_list bg_hold">
          <iconify-icon icon="solar:cart-3-line-duotone" width="22"></iconify-icon>
          <span>Cart</span>
          <span class="mobile_cart_count"></span>
        </button>
        <button type="button" class="show_all_menu bg__green">
          <iconify-icon icon="solar:adhesive-plaster-outline" width="22"></iconify-icon>
          <span>Others</span>
        </button>
      </div>
    </div>
    <!-- End Mobile  Top Header -->


    <!-- Start Main Mart -->
    <!-- <div id="main_part" class="grocery_main_part_off main_part_pharmacy"> -->
    <div id="main_part" class="grocery_main_part_off main_part_pharmacy">
      <div class="main_middle">
        <div class="main_top">
          <div class="waiter_customer">
            <div class="single_button_middle_holder">
              <div class="search-holder">
                <div class="user_panner">
                  <select name="select_employee_id" id="select_employee_id" class="select2" tabindex="1">
                    <option value="">Select Employee</option>
                    <option value="67">Miss.Sara</option>
                    <option value="66">Miss.Sofia</option>
                    <option value="65">Mr.Alex</option>
                    <option value="64">Mr.John</option>
                    <option value="63">Miss.Nicola</option>
                  </select>
                </div>
                <div class="customer_pannel">
                  <select id="walk_in_customer" class="select2" tabindex="2">
                  </select>
                  <input type="hidden" name="old_sale_id" id="old_sale_id" value="">
                </div>
              </div>
              <div id="edit_add_customer_button_section">
                <a class="new-btn" id="edit_customer" href="javascript:void(0)">
                  <iconify-icon icon="solar:pen-broken" width="22"></iconify-icon>
                </a>
                <a class="new-btn" id="plus_button" href="javascript:void(0)">
                  <iconify-icon icon="solar:add-circle-broken" width="22"></iconify-icon>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="main_center">
          <div class="order_table_holder">
            <div class="order_table_header_row">
              <div class="single_header_column" id="single_order_item" style="display: inline-block; text-align: center;">Item</div>
              <div class="single_header_column" id="single_order_price">Price</div>
              <div class="single_header_column" id="single_order_qty">Quantity</div>

              <div class="single_header_column" id="single_order_total">Sub Total</div>
            </div>

            <div class="order_holder1">
                <div  style="display: inline-block; text-align: center; width: 200.13px; height: 31.2px;">abc</div>
              <div style="display: inline-block;text-align: center; width: 133.41px;  height: 31.2px;">abcd</div>
              <div style="display: inline-block;text-align: center; width: 100.06px;  height: 31.2px;">abcde</div>
              <div style="display: inline-block; text-align: center;width: 113.4px;  height: 31.2px;">abcdef</div>
            </div>
            <input type="hidden" id="edit_sale_customer" value="">
            <input type="hidden" id="edit_sale_customer_name" value="">
          </div>
        </div>

        <!-- End Top Items -->
        <div id="bottom_absolute">
          <div class="bottom__info">
            <div class="footer__content">
              <div class="item d-flex">
                <span class="mr-10">
                  <iconify-icon data-tippy-content="Note" id="open_note_modal" icon="solar:notebook-linear"
                    class="op_cursor_pointer bottom-iconify-color" width="22"></iconify-icon>
                </span>
                <span class="mr-10">
                  <iconify-icon data-tippy-content="Invoice Date" id="open_date_picker" icon="solar:calendar-broken"
                    class="icon_pick_date input-group date op_cursor_pointer datepicker_custom bottom-iconify-color"
                    width="22"></iconify-icon>
                </span>
                <span class="mr-10">
                  <iconify-icon data-tippy-content="Coupon Discount" icon="gridicons:coupon"
                    class="op_cursor_pointer bottom-iconify-color" id="coupon_discount_modal" width="22"></iconify-icon>
                </span>
              </div>
              <div class="item">
                <span class="cart-footer-title">Total: </span>
                <span class="p-l-3" id="sub_total_show">0.00 </span>
                <span id="sub_total" class="op_display_none"> 0.00</span>
                <span id="total_item_discount" class="op_display_none">0</span>
                <span id="discounted_sub_total_amount" class="op_display_none">0.00</span>
              </div>
              <!-- End Sub Total -->
              <div class="item">
                <div>
                  <span class="cart-footer-title">
                    Total Item:
                  </span>
                  <span id="total_items_in_cart_without_quantity">0</span> (<span
                    id="total_items_in_cart_with_quantity">0</span>)
                </div>
                <span id="total_items_in_cart" class="ir_display_none">0</span>
              </div>

              <div class="item">
                <span class="cart-footer-title">Charge: </span>
                <iconify-icon icon="solar:chat-round-money-broken" class="px-3 bottom-iconify-color" width="22"
                  id="open_charge_modal"></iconify-icon>
                <span id="show_charge_amount">0.00</span>
              </div>
              <div class="item no-need-for-waiter">
                <span class="cart-footer-title">
                  Discount:
                </span>
                <iconify-icon icon="solar:chat-round-money-broken" width="22" id="open_discount_modal"
                  class="bottom-iconify-color px-3"></iconify-icon>
                <span id="show_discount_amount">0.00</span>
                (<span id="all_items_discount">0.00</span>)
              </div>


              <!-- End Total Item -->
            </div>
            <div class="payable">
              <h1>Total Payable: <span id="total_payable">0.00</span></h1>
            </div>
            <div class="main_bottom p-0">
              <div class="button_group">
                <div class="cart_bottom_button">
                  <button class="bg__red off-btn d-flex align-items-center justify-content-center" id="cancel_button">
                    <iconify-icon icon="solar:close-circle-line-duotone" width="22"></iconify-icon>
                    <span class="p-l-3">
                      Cancel </span>
                  </button>
                </div>
                <div class="cart_bottom_buttons">
                  <button id="hold_sale" class="bg_hold off-btn d-flex align-items-center justify-content-center">
                    <iconify-icon icon="solar:rocket-2-line-duotone" width="22"></iconify-icon>
                    <span class="p-l-3">
                      Hold </span>
                  </button>
                </div>
                <div class="cart_bottom_buttons">
                  <button class="off-btn bg__green d-flex align-items-center justify-content-center"
                    id="place_order_operation">
                    <iconify-icon icon="solar:wad-of-money-broken" width="22"></iconify-icon>
                    <span id="place_edit_order" class="p-l-3">
                      Payment </span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Left Area -->
      <div class="main_right">
        <div class="right_side_search_add_item">
          <div class="filter-form">
            <div>
              <i class="fas fa-search"></i>
              <input class="op_dim_placeholder" type="text" autocomplete="off" name="search" id="search" autofocus
                placeholder="Name or Generic Name or Code or Category" onfocus="this.select();">
            </div>
            <div></div>
            <div>
              <i class="fas fa-barcode"></i>
              <input type="text" autocomplete="off" name="search" class="search_barcode_p" id="search_barcode"
                placeholder="Barcode" onfocus="this.select();">
            </div>
          </div>
        </div>
        <div class="op_position_relative" id="main_item_holder">
          


          <div class="item">
            <div id="secondary_item_holder">
              <div class="category_items1">
                <div id="searched_item_found1" class="specific_category_items_holder1">
                  <div class="single-inner-div grocery_single_off">
                      <c:forEach items="${store}" var="s">
                    <a href="#" item-type="General_Product" plain-id="487" data-last_purchase_price="310" is_promo="No"
                      data-whole_sale_price="340" data-sale_price="350" class="single_item  all_brand brand_0 "
                      id="item_487" style="text-decoration: none; display: inline-block;">
                      <div class="single-item-img">
                        <img src="assets/images/product/${s.getInventory().getProduct().getImage()}" alt=""
                          class="d-block" width="80px" height="80px">
                      </div>
                      <p class="item_name" data-tippy-content="${s.getInventory().getProduct().getName()}">${s.getInventory().getProduct().getName()}</p>
                      <p class="generic_name d-none" data-tippy-content=""></p>
                      <p class="">SP: <span id="">
                              <c:choose>
                                                    <c:when test="${s.getDiscount()== null}">
                                                        <td>${s.getInventory().getProduct().getPrice()}</td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td>${s.getDiscount().getPriceSell()}</td>
                                                    </c:otherwise>
                                                </c:choose></span></p>
                      <span
                        class="item_vat_percentage d-none">[{"tax_field_id":"1","tax_field_company_id":"1","tax_field_name":"CGST","tax_field_percentage":0},{"tax_field_id":"1","tax_field_company_id":"1","tax_field_name":"SGST","tax_field_percentage":0},{"tax_field_id":"1","tax_field_company_id":"1","tax_field_name":"IGST","tax_field_percentage":0},{"tax_field_id":"1","tax_field_company_id":"1","tax_field_name":"VAT","tax_field_percentage":0}]</span>
                    </a>
                </c:forEach>
                  </div>
                </div>
                 
              </div>
                
                


            </div>
          </div>
        </div>
      </div>
      <!-- End Main Mart -->
    </div>
    <!-- End Header Wrap -->

    <!-- Start Add Item Modal -->
    <div id="item_modal" class="modal">
      <div class="modal-content" id="add_to_cart_item_modal_content">
        <h1 class="modal-header-custom main_header">
          <span id="edit_item_modal_header">&nbsp;</span>
          <a href="javascript:void(0)" class="alertCloseIcon close_item_modal">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="item-modal-body">
          <span id="variation_parent" class="op_display_none"></span>
          <span id="modal_item_name" class="op_display_none"></span>
          <span id="modal_is_promo" class="op_display_none"></span>
          <span id="modal_promo_buy_qty" class="op_display_none"></span>
          <span id="modal_promo_get_qty" class="op_display_none"></span>
          <span id="modal_promo_discount" class="op_display_none"></span>
          <span id="modal_promo_item_id" class="op_display_none"></span>
          <span id="modal_promo_type" class="op_display_none"></span>
          <span id="modal_item_row" class="op_display_none">0</span>
          <span id="modal_item_id" class="op_display_none"></span>
          <span id="modal_item_type" class="op_display_none"></span>
          <span id="modal_item_sale_unit" class="op_display_none"></span>
          <span id="modal_item_price" class="op_display_none"></span>
          <span id="modal_item_vat_percentage" class="op_display_none"></span>
          <div class="sec1_inside" id="sec1_2"><span id="item_quantity_modal" class="op_display_none">1</span></div>
          <div class="sec1_inside op_display_none" id="sec1_3"> <span id="modal_item_price_variable"
              class="op_display_none">0</span><span id="modal_item_price_variable_without_discount">0</span><span
              id="modal_discount_amount" class="op_display_none">0</span>
          </div>
          <input type="hidden" id="sale_usal_qty_modal" name="sale_usal_qty_modal" value="">
          <input type="hidden" id="allow_less_sale" name="allow_less_sale" value="No">

          <div class="combo_product_html_render">
            <ul class="combo_modal_header">
              <li>SN</li>
              <li class="text-center d-flex align-items-center justify-content-center"
                data-tippy-content="Click on checkbox to show this item in invoice.">INV <iconify-icon
                  icon="solar:info-circle-bold"></iconify-icon></li>
              <li class="text-center d-flex align-items-center justify-content-center"
                data-tippy-content="Click on checkbox to sale this items.">Cart <iconify-icon
                  icon="solar:info-circle-bold"></iconify-icon></li>
              <li>Name</li>
              <li>Quantity</li>
              <li>Unit Price</li>
              <li>Subtotal</li>
              <li>Seller</li>
            </ul>
            <ul class="combo_modal_body"></ul>
          </div>

          <div class="variationProductHtmlRenderWrap">
            <b class="op_margin_bottom_10 op_display_block item_type_variation_heading"></b>
            <div class="variationProductHtmlRender">
            </div>
          </div>

          <div class="op_display_none" id="modal_discount_section">
            <p class="op_modal_discount">Discount</p>
          </div>
          <div class="item-modal-top-header">
            <div class="expiry_imei_serial Available_IMEI_Srial">
              <b class="op_margin_bottom_10 op_display_block item_type_heading"></b>
              <select name="expiry_imei_serial" id="IMEI_Serial" class="form-control select2">
              </select>
              <div class="alert pos_error_counter alert-error error-msg expiry_imei_serial_msg_contnr ">
                <p id="expiry_imei_serial_err_msg"></p>
              </div>
            </div>
            <div class="modal_stock_wrapper">
              <b class="op_margin_bottom_10">&nbsp;</b>
              <p><b>Current Stock</b>: <span class="current_stock_t">0</span></p>
              <input type="hidden" id="current_stock_hidden">
            </div>
            <div id="seller_wrapper">
              <b class="op_margin_bottom_10 op_display_block">Employee</b>
              <select id="seller_id" class="select2">
                <option value="">Select Employee</option>
                <option value="67">Miss.Sara</option>
                <option value="66">Miss.Sofia</option>
                <option value="65">Mr.Alex</option>
                <option value="64">Mr.John</option>
                <option value="63">Miss.Nicola</option>
              </select>
            </div>
          </div>

          <!-- Promotion -->
          <div class="promotion-wrap text-center">
            <div class="promotion-text" id="promotion-text"></div>
          </div>
          <!-- Promotion End -->

          <ul class="model_price_list">
            <li>
              <input tabindex="-1" id="radio_btn_3" type="radio" class="sale_price_class" name="model_price"
                value="modal_sale_price">
              <label tabindex="-1" for="radio_btn_3" class="sale_price_active radio_btn_label model_price_three"
                data-tippy-content="Sale Price: ">
                Sale Price:
                <span class="s_sale" id="s_price"></span>
              </label>
            </li>
            <li class="service_disabled">
              <input tabindex="-1" id="radio_btn_2" type="radio" class="whole_price_class" name="model_price"
                value="modal_whole_sale_price"> <label tabindex="-1" for="radio_btn_2"
                data-tippy-content="Whole Sale Price: "
                class="model_price_three whole_price_active radio_btn_label op_display_none">
                WSP: <span class="s_sale" id="w_s_price"></span>
              </label>
            </li>
            <li class="service_disabled">
              <input tabindex="-1" disabled id="radio_btn_1" type="radio" name="model_price"
                value="modal_purchase_price"> <label tabindex="-1"
                data-tippy-content="Last Purchase Price/ Purchase Price: " for="radio_btn_1"
                class="model_price_three radio_btn_label op_display_none">
                LPP/PP: <span class="s_sale" id="m_p_price"></span>
              </label>
            </li>
          </ul>




          <ul class="price_input_field op_margin_bottom_10">
            <li>
              <b class="op_margin_bottom_10 op_display_block">Price</b>
              <input type="hidden" id="modal_item_last_purchase_price_input_field" value="">
              <input tabindex="0" type="text" autocomplete="off" id="modal_item_price_input_field" onfocus="select();"
                class="op_width_100_p op_center" value="">
            </li>
            <li class="modal_qty_area">
              <b class="op_margin_bottom_10 op_display_block">Quantity</b>
              <div class="input-group">
                <button tabindex="-1" type="button"
                  class="new-btn input-group-text modal_decrease_item_table decrease item_enable_disable">
                  <iconify-icon icon="solar:minus-circle-broken" width="22"></iconify-icon>
                </button>
                <input tabindex="0" type="text" autocomplete="off" id="item_quantity_modal_input" onfocus="select();"
                  class="op_width_100_p op_center integerchk item_enable_disable" value="1">
                <button tabindex="-1" type="button"
                  class="new-btn input-group-text modal_increase_item_table increase item_enable_disable">
                  <iconify-icon icon="solar:add-circle-broken" width="22"></iconify-icon>
                </button>
                <span class="input-group-text" id="sale_unit_name_modal">N/A</span>
              </div>
            </li>
            <li>
              <b class="op_margin_bottom_10 op_display_block">Discount</b>
              <input tabindex="0" type="text" class="op_width_100_p op_center" autocomplete="off" onfocus="select();"
                id="modal_discount" placeholder="eg: 10 or 10%">
            </li>
          </ul>


          <div class="margin-top-10 text-right"><b>Total</b>&nbsp;&nbsp;&nbsp; <span id="modal_total_price">0</span>
          </div>
          <div>
            <div class="op_margin_bottom_10"><b>Note</b></div>
            <textarea tabindex="0" name="item_note" id="modal_item_note" placeholder="Note" maxlength="500"
              class="w-100"></textarea>
            <input type="hidden" name="modal_item_g_w" id="modal_item_g_w">
          </div>
          <div id="variation_items">
          </div>
          <div class="modal-footer mt-10">
            <button tabindex="0" class="cardBtn off_pos_btn bg__base" id="add_to_cart">Add To Cart</button>
            <button tabindex="0" class="close_item_modal off_pos_btn bg__red" id="item_modal_close">Cancel</button>
          </div>
        </div>
      </div>
    </div>
    <!-- End Add Item Modal -->

    <!--Start Add Customer modal -->
    <div id="add_customer_modal" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
        <h1 class="main_header">
          <span id="add_or_edit_text">&nbsp;</span>
          <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <form class="customer_add_modal_info_holder">
          <input type="hidden" id="customer_id_modal" value="">
          <div class="customer_section">
            <p class="input_level">Name <span class="op_color_red">*</span></p>
            <input type="text" autocomplete="off" class="add_customer_modal_input" id="customer_name_modal"
              placeholder="Name" required>
            <div class="alert alert-error error-msg name_err_msg_contnr modal_err_msg">
              <p id="name_err_msg"></p>
            </div>
          </div>
          <div class="customer_section">
            <p class="input_level">Phone <span class="op_color_red">*</span></p>
            <input type="text" autocomplete="off" class="add_customer_modal_input" id="customer_phone_modal"
              placeholder="Phone" required>
            <div class="alert alert-error error-msg phone_err_msg_contnr modal_err_msg">
              <p id="phone_err_msg"></p>
            </div>
          </div>
          <div class="customer_section">
            <p class="input_level">Email</p>
            <input type="email" class="add_customer_modal_input" id="customer_email_modal" placeholder="Email">
            <div class="alert alert-error error-msg email_err_msg_contnr modal_err_msg">
              <p id="email_err_msg"></p>
            </div>
          </div>
          <div class="customer_section">
            <div class="customer_balance_type">
              <div>
                <p class="input_level">Opening Balance</p>
                <input type="text" autocomplete="off" class="add_customer_modal_input integerchk"
                  id="customer_previous_due_modal" placeholder="Opening Balance">
              </div>
              <div class="mr_15">
                <p class="input_level">Opening Balance Type</p>
                <select class="form-control select2" name="opening_balance_type" id="opening_balance_type">
                  <option value="Debit">Debit</option>
                  <option value="Credit">Credit</option>
                </select>
              </div>
            </div>
          </div>
          <div class="customer_section">
            <p class="input_level">Credit Limit</p>
            <input type="text" autocomplete="off" class="add_customer_modal_input integerchk"
              id="customer_credit_limit_modal" placeholder="Credit Limit">
          </div>
          <div class="customer_section">
            <p class="input_level">Default Discount</p>
            <input type="text" autocomplete="off" class="add_customer_modal_input integerchkPercent"
              id="customer_discount_modal" placeholder="10 or 10%">
            <div class="alert alert-error error-msg discount_err_msg_contnr modal_err_msg">
              <p id="discount_err_msg"></p>
            </div>
          </div>
          <div class="customer_section">
            <p class="input_level">Customer Type</p>
            <select class="form-control  select2 op_width_100_p" id="customer_price_type" name="customer_price_type">
              <option value="1" selected="selected">Retail</option>
              <option value="2">Wholesale</option>
            </select>
          </div>
          <div class="customer_section">
            <p class="input_level">Group</p>
            <select class="form-control  select2 op_width_100_p" id="customer_group_id_modal"
              name="customer_group_id_modal">
              <option value="">Select</option>
              <option value="5">Indian</option>
              <option value="4">Europian</option>
              <option value="3">Karela</option>
              <option value="2">Tamil Nadu</option>
              <option value="1">BD</option>
            </select>
          </div>
          <div class="customer_section">
            <p class="input_level">Delivery Address</p>
            <input type="text" class="add_customer_modal_input" id="customer_delivery_address_modal"
              placeholder="Delivery Address">
          </div>
          <div class="customer_section">
            <p class="input_level">Date Of Birth</p>
            <input autocomplete="off" placeholder="Date Of Birth" type="text" readonly class="add_customer_modal_input "
              id="customer_dob_modal" data-datable="yyyymmdd" data-datable-divider=" - ">
          </div>
          <div class="customer_section">
            <p class="input_level">Date Of Anniversary</p>
            <input placeholder="Date Of Anniversary" autocomplete="off" type="text" readonly
              class="add_customer_modal_input " id="customer_doa_modal" data-datable="yyyymmdd"
              data-datable-divider=" - ">
          </div>


        </form>
        <div class="p-10">
          <button id="add_customer" class="bg__base px-25">Submit</button>
          <button class="bg__red px-25 cancel_customer_modal">Cancel</button>
        </div>
      </div>
    </div>
    <!--End Add Customer modal -->

    <!-- Start SMS setting modal -->
    <div id="show_qty_sms_setting_modal" class="modal op_padding_top_20">
      <div class="modal-content">
        <h2 class="op_center op_margin_top_1">POS Settings</h2>
        <div class="customedr_add_modal_info_holder">
          <label class="op_cursor_pointer op_padding_left_17">
            <input type="checkbox" name="qty_setting_check" value="Yes" id="qty_setting_check"> Check stock when selling
          </label>
        </div>
        <div class="section7 fix">
          <div class="sec7_inside op_float_left op_display_inline" id="sec7_1"><button
              class="op_padding_left_28 op_padding_right_28" id="cancel_set_qty_alert_sms_setting">Cancel</button></div>
          <div class="sec7_inside op_float_right op_display_inline" id="sec7_2"><button
              class="op_padding_left_28 op_padding_right_28" id="add_post_setting">Submit</button></div>
        </div>
      </div>
    </div>
    <!-- End SMS setting modal -->

    <!-- Start Sale Hold Modal -->
    <div id="show_sale_hold_modal" class="modal">
      <div class="modal-content">
        <h1 class="main_header">Hold Sales <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="hold_sale_modal_info_holder fix">
          <div class="detail_hold_sale_holder fix">
            <div class="hold_sale_left fix">
              <div class="hold_list_holder fix">
                <div class="header_row fix">
                  <div class="first_column column fix text-left pl-1">No</div>
                  <div class="second_column column fix">Customer</div>
                  <div class="third_column column fix">Date Time</div>
                </div>
                <div class="detail_holder fix">
                  <div class="single_hold_sale fix">
                    <div class="first_column column fix"></div>
                    <div class="second_column column fix"></div>
                    <div class="third_column column fix">Table</div>
                  </div>
                  <div class="single_hold_sale fix">
                    <div class="first_column column fix"></div>
                    <div class="second_column column fix">Walk-In-Customer</div>
                    <div class="third_column column fix">Table</div>
                  </div>
                </div>
                <div class="delete_all_hold_sales_container fix">
                  <button class="bg__red" id="delete_all_hold_sales_button">Delete all Hold Sales</button>
                </div>
              </div>
            </div>
            <div class="hold_sale_right fix">
              <div class="top">
                <div class="top_middle">
                  <h1>Sale Details</h1>
                  <div class="waiter_customer_table">
                    <div class="customer fix"><span class="op_font_weight_b">Customer: </span><span
                        class="op_display_none" id="hold_customer_id"></span><span id="hold_customer_name"></span></div>
                  </div>
                  <div class="item_modifier_details item_modifier_body">
                    <div class="modifier_item_header">
                      <div class="first_column_header column_hold">Item</div>
                      <div class="second_column_header column_hold text-center">Price</div>
                      <div class="third_column_header column_hold text-center">Qty</div>
                      <div class="forth_column_header column_hold text-center">Discount</div>
                      <div class="fifth_column_header column_hold text-right">Total</div>
                    </div>
                    <div class="modifier_item_details_holder hold_sale_height">
                    </div>
                  </div>
                  <div class="item_modifier_details">
                    <div class="bottom_total_calculation_hold footer-content-hold">
                      <div class="item">
                        <span>Sub Total: </span>
                        <span id="sub_total_show_hold">0.00</span>
                      </div>
                      <div class="item">
                        <span>Total Item: </span>
                        <span id="total_items_in_cart_hold">0</span> (<span id="total_items_qty_in_cart_hold">0</span>)
                        <span id="sub_total_hold" class="ir_display_none">0.00</span>
                        <span id="total_item_discount_hold" class="ir_display_none">0.00</span>
                        <span id="discounted_sub_total_amount_hold" class="ir_display_none">0.00</span>
                      </div>
                      <div class="item">
                        <span>Tax: </span>
                        <span id="hold_all_tax_amount"></span>
                      </div>
                      <div class="item">
                        <span>Charge: </span>
                        <span id="delivery_charge_hold"> 0.00</span>
                      </div>
                      <div class="item">
                        <span>Discount: </span>
                        <span>
                          <span id="sub_total_discount_hold">0.00</span> (<span
                            id="all_items_discount_hold">0.00</span>)
                        </span>
                      </div>
                    </div>
                    <h1 class="modal_payable">
                      <span>Total Payable: </span>
                      <span id="total_payable_hold">0.00</span>
                    </h1>
                  </div>
                </div>
              </div>
              <div class="button_holder hold_sale_right_buttom">
                <button class="bg__green" id="hold_edit_in_cart_button">Edit in Cart</button>
                <button class="bg__red" id="hold_delete_button">Delete</button>
                <button class="bg_hold" id="hold_sales_close_button">Cancel</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Sale Hold Modal -->


    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Off POS | Retail POS and Stock Software</title>
      <!-- Favicon -->
      <link rel="shortcut icon"
        href="assets/images/6fd15bfae8a4874f86610e0279ad9e15.ico"
        type="image/x-icon">
      <!-- Iconify Font -->
      <script src="assets/iconify/js/iconify.min.js"></script>
      <!-- Font Awesome 6.5.1-->
      <link rel="stylesheet"
        href="assets/css/fontawesome-free-6.5.1-web/css/all.min.css">
      <link rel="stylesheet" href="assets/css/POS/css/style.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/fonts/google_font_POS.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/font_awesome_all.css" type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/sweetalert2-new.min.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/perfect-scrollbar.css">
      <link rel="stylesheet"
        href="assets/css/POS/css/select2.min.css"
        type="text/css">
      <link rel="stylesheet" href="assets/css/POS/css/jquery-ui.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/keyboard.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/custom_theme.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/main_screen.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/pos-screen-loader.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/register_details.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/customModal.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/jquery.dataTables.min.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/buttons.dataTables.min.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/custom_check_box.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/main_screen_finalize.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/main_screen_responsive.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/perfect-scrollbar1.css"
        type="text/css">
      <link rel="stylesheet" href="assets/css/notify/toastr.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/animate.min.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/datepicker.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/scale.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/tippy.css"
        type="text/css">
      <link rel="stylesheet"
        href="assets/css/POS/css/jquery.numpad.css">
      <link rel="stylesheet"
        href="assets/css/POS/css/preloader.css">
      <!-- POS Screen Final Responsive CSS -->
      <link rel="stylesheet"
        href="assets/css/POS/css/pos_responsive.css"
        type="text/css">
      <style>
        /* for dynamic language font load, used internal css */
        /* for check change of bangla language font */
        * {
          font-family: Outfit, sans-serif;
        }

        .slimScrollDivCategory .category_button {
          font-family: Outfit, sans-serif;
        }
      </style>
    </head>


    <body>

      <!-- Preloader HTML -->
      <div class="main-preloader">
        <div class="loadingio-spinner-spin-nq4q5u6dq7r">
          <div class="ldio-x2uulkbinbj">
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
          </div>
        </div>
      </div>

      <!-- Hidden Input For JS -->
      <input type="hidden" id="base_url" value="http://localhost:9999/SWP_Project/PoSHome/">
      <input type="hidden" id="last_sale_id" value="PmIWYw8CiKZcgJcKUPzXtw==">
      <input type="hidden" id="role" value="1">
      <input type="hidden" id="register_status" value="1">
      <input type="hidden" id="csrf_value_" value="">
      <input type="hidden" id="currency" value="?">
      <input type="hidden" id="op_precision" value="2">
      <input type="hidden" id="op_decimals_separator" value=".">
      <input type="hidden" id="op_thousands_separator" value=".">
      <input type="hidden" id="tax_is_gst" value="No">
      <input type="hidden" id="csrf_name_" value="ci_csrf_token">
      <input type="hidden" id="collect_tax" value="Yes">
      <input type="hidden" id="currency_hidden" value="?">
      <input type="hidden" id="print_format" value="A4 Print">
      <input type="hidden" id="invoice_print" value="web_browser">
      <input type="hidden" id="op_date_format" value="m/d/Y">
      <input type="hidden" id="gst_state_code" value="">
      <input type="hidden" id="direct_cart" value="Yes">
      <input type="hidden" id="default_customer" value="1">
      <input type="hidden" id="sms_enable_status" value="2">
      <input type="hidden" id="smtp_enable_status" value="2">
      <input type="hidden" id="send_invoice_whatsapp" value="Disable">
      <input type="hidden" id="default_payment_hidden" value="1">
      <input type="hidden" id="pos_total_payable_type" value="">
      <input type="hidden" id="onscreen_keyboard_status" value="Disable">
      <input type="hidden" id="view_purchase_price" value="Yes">
      <input type="hidden" id="tax_type" value="1">
      <input type="hidden" id="stripe_publish_key" value="XXXXXXXXXXXXXXXXXXXX">
      <input type="hidden" id="grocery_experience" value="Regular">
      <input type="hidden" id="generic_name_search_option" value="No">


      <input type="hidden" id="order_object">
      <input type="hidden" id="Place_Order">
      <input type="hidden" id="finalize_update_type">
      <input type="hidden" id="customer_credit_limit">
      <input type="hidden" id="customer_previous_due">
      <input type="hidden" id="customer" value="Customer">
      <input type="hidden" id="alert_check" name="alert_check">
      <input type="hidden" id="ok" value="OK">
      <input type="hidden" id="yes" value="Yes">
      <input type="hidden" id="dummy_data_delete_alert"
        value="Are you sure? your old added items and item categories will be removed">
      <input type="hidden" id="pharmacy_search_place_holder_pos" value="Name or Generic Name or Code">
      <input type="hidden" id="other_search_place_holder_pos" value="Name or Code or Category">
      <input type="hidden" id="The" value="The">
      <input type="hidden" id="selected_invoice_sale_customer" value="">
      <input type="hidden" id="alert" value="Alert">
      <input type="hidden" id="cancel" value="Cancel">
      <input type="hidden" id="note_lan" value="Note">
      <input type="hidden" id="no_hold" value="There is no hold!">
      <input type="hidden" id="a_error" value="error">
      <input type="hidden" id="select" value="Select">
      <input type="hidden" id="amount_txt" value="Amount">
      <input type="hidden" id="no_access" value="You have no access for this module">
      <input type="hidden" id="check_no_lan" value="Check No">
      <input type="hidden" id="cart_empty" value="Cart is empty!">
      <input type="hidden" id="mobile_no_lan" value="Mobile No">
      <input type="hidden" id="edit_warning" value="You can not edit Walk-in Customer">
      <input type="hidden" id="already_added" value="This payment method already added!">
      <input type="hidden" id="add_to_cart_text" value="Add To Cart">
      <input type="hidden" id="paypal_email_lan" value="Paypal Email">
      <input type="hidden" id="stripe_email_lan" value="Stripe Email">
      <input type="hidden" id="sale_date1" value="2024-10-17">
      <input type="hidden" id="cart_not_empty" value="Cart is not empty, want to proceed?">
      <input type="hidden" id="loyalty_point_txt" value="Loyalty Point">
      <input type="hidden" id="transaction_no_lan" value="Transaction No">
      <input type="hidden" id="register_close_text" value="Register closed successfully">
      <input type="hidden" id="field_is_required" value="field is required.">
      <input type="hidden" id="item_modal_status" value="View Stock in Sale">
      <input type="hidden" id="select_a_customer" value="Please Select a Customer">
      <input type="hidden" id="card_holder_name_lan" value="Card Holder Name">
      <input type="hidden" id="check_issue_date_lan" value="Check Issue Date">
      <input type="hidden" id="check_expiry_date_lan" value="Check Expiry Date">
      <input type="hidden" id="loyalty_point_error" value="">
      <input type="hidden" id="add_at_least_one_qty" value="Please add at least 1 quantity">
      <input type="hidden" id="sure_delete_this_sale" value="Are you sure to delete this sale?">
      <input type="hidden" id="card_holding_number_lan" value="Card Holding Number">
      <input type="hidden" id="last_future_sale_id" name="last_future_sale_id" class="last_future_sale_id">
      <input type="hidden" id="sure_delete_this_hold" value="Are you sure to delete this hold?">
      <input type="hidden" id="sure_delete_this_order" value="Are you sure to delete this order?">
      <input type="hidden" id="please_select_an_order" value="Please select an order to proceed!">
      <input type="hidden" id="tool_tip_loyalty_point" value="Total required loyalty point as per setting">
      <input type="hidden" id="please_select_hold_sale" value="Please select a Hold Sale to proceed!">
      <input type="hidden" id="no_permission_for_this_module" value="You have no permission for this module">
      <input type="hidden" id="product_display" value="Image View">
      <input type="hidden" id="The_discount_code_field_required" value="The discount code field is required">
      <input type="hidden" id="The_coupon_code_field_required" value="The Coupon Code field is required">
      <input type="hidden" id="cart_not_empty_want_to_clear" value="Cart is not empty, want to clear the cart?">
      <input type="hidden" id="are_you_delete_all_hold_sale" value="Are you sure to delete all hold sales?">
      <input type="hidden" id="loyalty_rate" value="0.1">
      <input type="hidden" id="loyalty_point_is_not_available" value="Loyalty Point is not available for this customer">
      <input type="hidden" id="Alternative_Medicine_will_shown_here" value="Alternative Medicines will be shown here">
      <input type="hidden" id="default_cursor_position" value="Barcode Box">
      <input type="hidden" id="your_added_payment_method_will_remove" value="Your previous payments will be removed">
      <input type="hidden" id="loyalty_point_not_applicable" value="Loyalty point not applicable for Walk in Customer!">
      <input type="hidden" id="copy_db_exp" value="Copy">
      <input type="hidden" id="print_db_exp" value="Print">
      <input type="hidden" id="excel_db_exp" value="Excel">
      <input type="hidden" id="csv_db_exp" value="CSV">
      <input type="hidden" id="pdf_db_exp" value="PDF">
      <input type="hidden" id="pdf_db_exp" value="PDF">





      <!-- Hidden Input For JS End -->

      <span class="loader1"></span>
      <span class="loader"></span>
      <span id="stop_refresh_for_search" class="d-none">Yes</span>

      <!-- Start Header Wrap -->
      <div class="wrapper fix">
        <!-- Header Desktop Area -->
        <div class="top_header_part">
          <!-- Left Header Menu List -->
          <div class="left_item">
            <div class="header_part_middle">
              <ul class="icon__menu">
                <li class="has__children main_menu">
                  <a tabindex="-1" href="javascript:void(0)" class="header_menu_icon dropdown-menu"
                    data-tippy-content="Main Menu">
                    <iconify-icon icon="solar:user-check-broken" width="22"></iconify-icon>
                  </a>
                  <ul class="sub__menu custom_dropdown" role="menu">
                    <li>
                      <a tabindex="-1" href="#">Change
                        Profile</a>
                    </li>
                    <li>
                      <a tabindex="-1" href="#">Change
                        Password</a>
                    </li>
                    <li>
                      <a tabindex="-1" href="#">Set
                        Security Question</a>
                    </li>
                    <li>
                      <a tabindex="-1" class="logOutTrigger" href="javascript:void(0)">Logout</a>
                    </li>
                  </ul>
                </li>
                <!-- Langulage -->
                <li class="has__children languages">
                  <a tabindex="-1" href="javascript:void(0)" class="header_menu_icon dropdown-menu"
                    data-tippy-content="Language">
                    <iconify-icon icon="ion:language" width="22"></iconify-icon>
                  </a>
                  <ul class="sub__menu" role="menu">
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>Arabic</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>Bangla</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>English</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>French</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>Hindi</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>Sinhala</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>Spanish</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="#">
                        <span>Urdu</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!-- Langulage End-->
                <li>
                  <a tabindex="-1" href="javascript:void(0)" id="open_hold_sales" class="header_menu_icon"
                    data-tippy-content="Open Draft Sales">
                    <iconify-icon icon="solar:adhesive-plaster-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li><a tabindex="-1" href="javascript:void(0)" class="header_menu_icon" id="print_last_invoice"
                    data-tippy-content="Print Last Invoice"><iconify-icon icon="solar:printer-broken"
                      width="22"></iconify-icon></a></li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" id="last_ten_sales_button" class="header_menu_icon"
                    data-tippy-content="Recent Sales"><iconify-icon icon="solar:history-broken"
                      width="22"></iconify-icon></a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" id="calculator_button"
                    class="header_menu_icon calculator_button" data-tippy-content="Calculator"> <iconify-icon
                      icon="solar:calculator-minimalistic-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" id="register_details"
                    class="header_menu_icon register_details" data-tippy-content="Register">
                    <iconify-icon icon="solar:document-add-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" id="keyboard_short_cut" class="header_menu_icon "
                    data-tippy-content="Keyboard Shortcut">
                    <iconify-icon icon="solar:keyboard-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li>
                  <a tabindex="-1" href="home.jsp"
                    target="_blank" class="header_menu_icon" data-tippy-content="Dashboard">
                    <iconify-icon icon="solar:chart-2-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li>
                  <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/customer-panel"
                    class="header_menu_icon" target="_blank" data-tippy-content="Customer Panel">
                    <iconify-icon icon="solar:monitor-broken" width="22"></iconify-icon>
                  </a>
                </li>
              </ul>
              <ul class="icon__menu">
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="time__date">
                    <iconify-icon icon="solar:clock-circle-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" class="header_menu_icon fullscreen"
                    data-tippy-content="Full Screen">
                    <iconify-icon icon="solar:maximize-square-3-broken" width="22"></iconify-icon>
                  </a>
                </li>
                <li>
                  <a tabindex="-1" href="javascript:void(0)" data-tippy-content="Main Menu" id="open__menu"
                    class="header_menu_icon">
                    <iconify-icon icon="ri:menu-fold-fill" width="22"></iconify-icon>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <!-- Left Header Menu List End-->

          <!-- Right Header Menu List -->
          <div class="header_part_right">
            <span class="header-outlet">Trader Joe&#039;s (Cambridge)</span>
            <ul class="btn__menu">
              <li>
                <div class="switchary_wrap"
                  data-tippy-content="This button is disabled for demo. to check medicine shop experience please check medicine demo!">
                  <select id="grocery_experience_el" class="select2" disabled>
                    <option value="">POS Experience</option>
                    <option value="Regular" selected>Regular</option>
                    <option value="Medicine">Medicine</option>
                    <option value="Grocery">Grocery</option>
                  </select>
                </div>
              </li>
              <li>
                <a tabindex="-1" href="javascript:void(0)" data-id="" class="bg__blue button_category_show_all">All</a>
              </li>
              <li class="has__children">
                <a tabindex="-1" href="javascript:void(0)"
                  class="show__brand__list bg__blue off-pos-open-dropdown-menu">Brand</a>
                <div class="submenu-wrapper">
                  <ul class="sub__menu brand__sub__menu">
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" data-id=""
                        class="category_button button_category_show_all brand_all_category">All</a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_35">
                        Amazon </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_34">
                        ?? ???? ????????? </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_33">
                        Nari </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_32">
                        Nalibon </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_31">
                        NIVEA </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_30">
                        Panasonic </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_29">
                        Singer </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_28">
                        Vision </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_27">
                        Walton </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_26">
                        Popular Pharmaceuticals Ltd. </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_25">
                        Square Pharmaceuticals PLC </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_24">
                        Biopharma Limited </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_23">
                        ACI Limited </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_22">
                        ACME Laboratories Ltd. </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_21">
                        Drug International Ltd. </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_20">
                        Beximco Pharmaceuticals Ltd. </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_19">
                        Penasonic </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_18">
                        Lenovo </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_17">
                        Microsoft </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_16">
                        LG </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_15">
                        Huawei </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_14">
                        Tenda </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_13">
                        TP Link </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_12">
                        Dlink </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_11">
                        Asus </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_10">
                        Dell </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_9">
                        HP </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_8">
                        Sony </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_7">
                        Samsung </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_6">
                        Apple </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_5">
                        Le Reve </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_3">
                        Arong </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_2">
                        Gentle Park </a>
                    </li>
                    <li>
                      <a tabindex="-1" href="javascript:void(0)" class="brand_button" id="brand_category_1">
                        Easy </a>
                    </li>
                  </ul>
                </div>
              </li>

              <li class="has__children sorting_item_wrapper">
                <a href="javascript:void(0)" class="bg__blue off-pos-open-dropdown-menu sorting_item_title">Most
                  Selling</a>
                <div class="submenu-wrapper">
                  <ul class="sub__menu">
                    <li><a tabindex="-1" data-sort_id="1" class="sorting_item" href="javascript:void(0)">Most
                        Selling</a></li>
                    <li><a tabindex="-1" data-sort_id="2" class="sorting_item" href="javascript:void(0)">Less
                        Selling</a></li>
                    <li><a tabindex="-1" data-sort_id="3" class="sorting_item" href="javascript:void(0)">Not Selling</a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="has__children">
                <a tabindex="-1" href="javascript:void(0)" class="bg__blue promo_filter">Promo</a>
              </li>
            </ul>
          </div>
          <!-- Right Header Menu List End -->
        </div>
        <!-- Header Desktop Area End -->


        <!-- Start Mobile  Top Header -->
        <div class="top_header_for_mobile">
          <div class="for-mobile-mode">
            <button type="button" class="show_product bg__grey">
              <iconify-icon iconify-icon icon="solar:list-heart-minimalistic-linear" width="22"></iconify-icon>
              <span>Products</span>
            </button>
            <button type="button" class="show_cart_list bg_hold">
              <iconify-icon icon="solar:cart-3-line-duotone" width="22"></iconify-icon>
              <span>Cart</span>
              <span class="mobile_cart_count"></span>
            </button>
            <button type="button" class="show_all_menu bg__green">
              <iconify-icon icon="solar:adhesive-plaster-outline" width="22"></iconify-icon>
              <span>Others</span>
            </button>
          </div>
        </div>
        <!-- End Mobile  Top Header -->


        <!-- Start Main Mart -->
        <!-- <div id="main_part" class="grocery_main_part_off main_part_pharmacy"> -->
        <div id="main_part" class="grocery_main_part_off main_part_pharmacy">
          <div class="main_middle">
            <div class="main_top">
              <div class="waiter_customer">
                <div class="single_button_middle_holder">

                  <div id="edit_add_customer_button_section">
                    <a class="new-btn" id="edit_customer" href="javascript:void(0)">
                      <iconify-icon icon="solar:pen-broken" width="22"></iconify-icon>
                    </a>
                    <a class="new-btn" id="plus_button" href="javascript:void(0)">
                      <iconify-icon icon="solar:add-circle-broken" width="22"></iconify-icon>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="main_center">
              <div class="order_table_holder">
                <div class="order_table_header_row">
                  <div class="single_header_column" id="single_order_item">Item</div>
                  <div class="single_header_column" id="single_order_price">Price</div>
                  <div class="single_header_column" id="single_order_qty">Qty</div>
                  <div class="single_header_column" id="single_order_discount">Discount</div>
                  <div class="single_header_column" id="single_order_total">Sub Total</div>
                </div>

                <div class="order_holder">
                </div>
                <input type="hidden" id="edit_sale_customer" value="">
                <input type="hidden" id="edit_sale_customer_name" value="">
              </div>
            </div>

            <!-- End Top Items -->
            <div id="bottom_absolute">
              <div class="bottom__info">
                <div class="footer__content">
                  <div class="item d-flex">
                    <span class="mr-10">
                      <iconify-icon data-tippy-content="Note" id="open_note_modal" icon="solar:notebook-linear"
                        class="op_cursor_pointer bottom-iconify-color" width="22"></iconify-icon>
                    </span>
                    <span class="mr-10">
                      <iconify-icon data-tippy-content="Invoice Date" id="open_date_picker" icon="solar:calendar-broken"
                        class="icon_pick_date input-group date op_cursor_pointer datepicker_custom bottom-iconify-color"
                        width="22"></iconify-icon>
                    </span>
                    <span class="mr-10">
                      <iconify-icon data-tippy-content="Coupon Discount" icon="gridicons:coupon"
                        class="op_cursor_pointer bottom-iconify-color" id="coupon_discount_modal"
                        width="22"></iconify-icon>
                    </span>
                  </div>
                  <div class="item">
                    <span class="cart-footer-title">Total: </span>
                    <span class="p-l-3" id="sub_total_show">0.00 </span>
                    <span id="sub_total" class="op_display_none"> 0.00</span>
                    <span id="total_item_discount" class="op_display_none">0</span>
                    <span id="discounted_sub_total_amount" class="op_display_none">0.00</span>
                  </div>
                  <!-- End Sub Total -->
                  <div class="item">
                    <div>
                      <span class="cart-footer-title">
                        Total Item:
                      </span>
                      <span id="total_items_in_cart_without_quantity">0</span> (<span
                        id="total_items_in_cart_with_quantity">0</span>)
                    </div>
                    <span id="total_items_in_cart" class="ir_display_none">0</span>
                  </div>
                  <div class="item">
                    <span class="cart-footer-title">Tax:</span>
                    <iconify-icon icon="solar:eye-broken" class="bottom-iconify-color px-3 cursor-pointer"
                      id="open_tax_modal" width="22"></iconify-icon>
                    <span id="show_vat_modal">0.00</span>
                  </div>
                  <div class="item">
                    <span class="cart-footer-title">Charge: </span>
                    <iconify-icon icon="solar:chat-round-money-broken" class="px-3 bottom-iconify-color" width="22"
                      id="open_charge_modal"></iconify-icon>
                    <span id="show_charge_amount">0.00</span>
                  </div>
                  <div class="item no-need-for-waiter">
                    <span class="cart-footer-title">
                      Discount:
                    </span>
                    <iconify-icon icon="solar:chat-round-money-broken" width="22" id="open_discount_modal"
                      class="bottom-iconify-color px-3"></iconify-icon>
                    <span id="show_discount_amount">0.00</span>
                    (<span id="all_items_discount">0.00</span>)
                  </div>
                  <div class="item">
                    <span class="cart-footer-title">Delivery Partner: </span>
                    <iconify-icon icon="solar:users-group-rounded-broken"
                      class="bottom-iconify-color px-3 cursor-pointer" width="22"
                      id="open_deliverypartner_modal"></iconify-icon>
                    <span id="delivery_partner_info" data-partner-id="0"></span>
                  </div>
                  <div class="item">
                    <span class="cart-footer-title">Rounding: </span>
                    <span id="rounding" class="p-l-3">0.00</span>
                  </div>
                  <!-- End Total Item -->
                </div>
                <div class="payable">
                  <h1>Total Payable: <span id="total_payable">0.00</span></h1>
                </div>
                <div class="main_bottom p-0">
                  <div class="button_group">
                    <div class="cart_bottom_button">
                      <button class="bg__red off-btn d-flex align-items-center justify-content-center"
                        id="cancel_button">
                        <iconify-icon icon="solar:close-circle-line-duotone" width="22"></iconify-icon>
                        <span class="p-l-3">
                          Cancel </span>
                      </button>
                    </div>
                    <div class="cart_bottom_buttons">
                      <button id="hold_sale" class="bg_hold off-btn d-flex align-items-center justify-content-center">
                        <iconify-icon icon="solar:rocket-2-line-duotone" width="22"></iconify-icon>
                        <span class="p-l-3">
                          Hold </span>
                      </button>
                    </div>
                    <div class="cart_bottom_buttons">
                      <button class="off-btn bg__green d-flex align-items-center justify-content-center"
                        id="place_order_operation">
                        <iconify-icon icon="solar:wad-of-money-broken" width="22"></iconify-icon>
                        <span id="place_edit_order" class="p-l-3">
                          Payment </span>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End Left Area -->
          <div class="main_right">
            <div class="right_side_search_add_item">
              <div class="filter-form">
                <div>
                  <i class="fas fa-search"></i>
                  <input class="op_dim_placeholder" type="text" autocomplete="off" name="search" id="search" autofocus
                    placeholder="Name or Generic Name or Code or Category" onfocus="this.select();">
                </div>
                <div></div>
                <div>
                  <i class="fas fa-barcode"></i>
                  <input type="text" autocomplete="off" name="search" class="search_barcode_p" id="search_barcode"
                    placeholder="Barcode" onfocus="this.select();">
                </div>
              </div>
            </div>
            <div class="op_position_relative" id="main_item_holder">
              <div class="slimScrollDivCategory">
                <button
                  class="category_button op_margin_bottom_5 op_box_shadow op_mb_10 element element-2 button_category_show_all button_category_show_all_left category_active_design"
                  data-id="">All</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="1">Food and Grocery</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="2">Clothes</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="3">Electronics</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="4">Mobile</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="5">Medicine</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="6">Service</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="7">Power Bank</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="8">Power Bank</button>
                <button
                  class="category_button category_active_trigger op_width_100_p op_margin_bottom_6 op_box_shadow op_mb_10"
                  data-id="9">Tata ace</button>
              </div>

              <div class="item">
                <div id="secondary_item_holder">
                  <div class="category_items">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Main Mart -->
      </div>
      <!-- End Header Wrap -->

      <!-- Start Add Item Modal -->
      <div id="item_modal" class="modal">
        <div class="modal-content" id="add_to_cart_item_modal_content">
          <h1 class="modal-header-custom main_header">
            <span id="edit_item_modal_header">&nbsp;</span>
            <a href="javascript:void(0)" class="alertCloseIcon close_item_modal">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="item-modal-body">
            <span id="variation_parent" class="op_display_none"></span>
            <span id="modal_item_name" class="op_display_none"></span>
            <span id="modal_is_promo" class="op_display_none"></span>
            <span id="modal_promo_buy_qty" class="op_display_none"></span>
            <span id="modal_promo_get_qty" class="op_display_none"></span>
            <span id="modal_promo_discount" class="op_display_none"></span>
            <span id="modal_promo_item_id" class="op_display_none"></span>
            <span id="modal_promo_type" class="op_display_none"></span>
            <span id="modal_item_row" class="op_display_none">0</span>
            <span id="modal_item_id" class="op_display_none"></span>
            <span id="modal_item_type" class="op_display_none"></span>
            <span id="modal_item_sale_unit" class="op_display_none"></span>
            <span id="modal_item_price" class="op_display_none"></span>
            <span id="modal_item_vat_percentage" class="op_display_none"></span>
            <div class="sec1_inside" id="sec1_2"><span id="item_quantity_modal" class="op_display_none">1</span></div>
            <div class="sec1_inside op_display_none" id="sec1_3"> <span id="modal_item_price_variable"
                class="op_display_none">0</span><span id="modal_item_price_variable_without_discount">0</span><span
                id="modal_discount_amount" class="op_display_none">0</span>
            </div>
            <input type="hidden" id="sale_usal_qty_modal" name="sale_usal_qty_modal" value="">
            <input type="hidden" id="allow_less_sale" name="allow_less_sale" value="No">

            <div class="combo_product_html_render">
              <ul class="combo_modal_header">
                <li>SN</li>
                <li class="text-center d-flex align-items-center justify-content-center"
                  data-tippy-content="Click on checkbox to show this item in invoice.">INV <iconify-icon
                    icon="solar:info-circle-bold"></iconify-icon></li>
                <li class="text-center d-flex align-items-center justify-content-center"
                  data-tippy-content="Click on checkbox to sale this items.">Cart <iconify-icon
                    icon="solar:info-circle-bold"></iconify-icon></li>
                <li>Name</li>
                <li>Quantity</li>
                <li>Unit Price</li>
                <li>Subtotal</li>
                <li>Seller</li>
              </ul>
              <ul class="combo_modal_body"></ul>
            </div>

            <div class="variationProductHtmlRenderWrap">
              <b class="op_margin_bottom_10 op_display_block item_type_variation_heading"></b>
              <div class="variationProductHtmlRender">
              </div>
            </div>

            <div class="op_display_none" id="modal_discount_section">
              <p class="op_modal_discount">Discount</p>
            </div>
            <div class="item-modal-top-header">
              <div class="expiry_imei_serial Available_IMEI_Srial">
                <b class="op_margin_bottom_10 op_display_block item_type_heading"></b>
                <select name="expiry_imei_serial" id="IMEI_Serial" class="form-control select2">
                </select>
                <div class="alert pos_error_counter alert-error error-msg expiry_imei_serial_msg_contnr ">
                  <p id="expiry_imei_serial_err_msg"></p>
                </div>
              </div>
              <div class="modal_stock_wrapper">
                <b class="op_margin_bottom_10">&nbsp;</b>
                <p><b>Current Stock</b>: <span class="current_stock_t">0</span></p>
                <input type="hidden" id="current_stock_hidden">
              </div>
              <div id="seller_wrapper">
                <b class="op_margin_bottom_10 op_display_block">Employee</b>
                <select id="seller_id" class="select2">
                  <option value="">Select Employee</option>
                  <option value="67">Miss.Sara</option>
                  <option value="66">Miss.Sofia</option>
                  <option value="65">Mr.Alex</option>
                  <option value="64">Mr.John</option>
                  <option value="63">Miss.Nicola</option>
                </select>
              </div>
            </div>

            <!-- Promotion -->
            <div class="promotion-wrap text-center">
              <div class="promotion-text" id="promotion-text"></div>
            </div>
            <!-- Promotion End -->

            <ul class="model_price_list">
              <li>
                <input tabindex="-1" id="radio_btn_3" type="radio" class="sale_price_class" name="model_price"
                  value="modal_sale_price">
                <label tabindex="-1" for="radio_btn_3" class="sale_price_active radio_btn_label model_price_three"
                  data-tippy-content="Sale Price: ">
                  Sale Price:
                  <span class="s_sale" id="s_price"></span>
                </label>
              </li>
              <li class="service_disabled">
                <input tabindex="-1" id="radio_btn_2" type="radio" class="whole_price_class" name="model_price"
                  value="modal_whole_sale_price"> <label tabindex="-1" for="radio_btn_2"
                  data-tippy-content="Whole Sale Price: "
                  class="model_price_three whole_price_active radio_btn_label op_display_none">
                  WSP: <span class="s_sale" id="w_s_price"></span>
                </label>
              </li>
              <li class="service_disabled">
                <input tabindex="-1" disabled id="radio_btn_1" type="radio" name="model_price"
                  value="modal_purchase_price"> <label tabindex="-1"
                  data-tippy-content="Last Purchase Price/ Purchase Price: " for="radio_btn_1"
                  class="model_price_three radio_btn_label op_display_none">
                  LPP/PP: <span class="s_sale" id="m_p_price"></span>
                </label>
              </li>
            </ul>




            <ul class="price_input_field op_margin_bottom_10">
              <li>
                <b class="op_margin_bottom_10 op_display_block">Price</b>
                <input type="hidden" id="modal_item_last_purchase_price_input_field" value="">
                <input tabindex="0" type="text" autocomplete="off" id="modal_item_price_input_field" onfocus="select();"
                  class="op_width_100_p op_center" value="">
              </li>
              <li class="modal_qty_area">
                <b class="op_margin_bottom_10 op_display_block">Quantity</b>
                <div class="input-group">
                  <button tabindex="-1" type="button"
                    class="new-btn input-group-text modal_decrease_item_table decrease item_enable_disable">
                    <iconify-icon icon="solar:minus-circle-broken" width="22"></iconify-icon>
                  </button>
                  <input tabindex="0" type="text" autocomplete="off" id="item_quantity_modal_input" onfocus="select();"
                    class="op_width_100_p op_center integerchk item_enable_disable" value="1">
                  <button tabindex="-1" type="button"
                    class="new-btn input-group-text modal_increase_item_table increase item_enable_disable">
                    <iconify-icon icon="solar:add-circle-broken" width="22"></iconify-icon>
                  </button>
                  <span class="input-group-text" id="sale_unit_name_modal">N/A</span>
                </div>
              </li>
              <li>
                <b class="op_margin_bottom_10 op_display_block">Discount</b>
                <input tabindex="0" type="text" class="op_width_100_p op_center" autocomplete="off" onfocus="select();"
                  id="modal_discount" placeholder="eg: 10 or 10%">
              </li>
            </ul>


            <div class="margin-top-10 text-right"><b>Total</b>&nbsp;&nbsp;&nbsp; <span id="modal_total_price">0</span>
            </div>
            <div>
              <div class="op_margin_bottom_10"><b>Note</b></div>
              <textarea tabindex="0" name="item_note" id="modal_item_note" placeholder="Note" maxlength="500"
                class="w-100"></textarea>
              <input type="hidden" name="modal_item_g_w" id="modal_item_g_w">
            </div>
            <div id="variation_items">
            </div>
            <div class="modal-footer mt-10">
              <button tabindex="0" class="cardBtn off_pos_btn bg__base" id="add_to_cart">Add To Cart</button>
              <button tabindex="0" class="close_item_modal off_pos_btn bg__red" id="item_modal_close">Cancel</button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Add Item Modal -->

      <!--Start Add Customer modal -->
      <div id="add_customer_modal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
          <h1 class="main_header">
            <span id="add_or_edit_text">&nbsp;</span>
            <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <form class="customer_add_modal_info_holder">
            <input type="hidden" id="customer_id_modal" value="">
            <div class="customer_section">
              <p class="input_level">Name <span class="op_color_red">*</span></p>
              <input type="text" autocomplete="off" class="add_customer_modal_input" id="customer_name_modal"
                placeholder="Name" required>
              <div class="alert alert-error error-msg name_err_msg_contnr modal_err_msg">
                <p id="name_err_msg"></p>
              </div>
            </div>
            <div class="customer_section">
              <p class="input_level">Phone <span class="op_color_red">*</span></p>
              <input type="text" autocomplete="off" class="add_customer_modal_input" id="customer_phone_modal"
                placeholder="Phone" required>
              <div class="alert alert-error error-msg phone_err_msg_contnr modal_err_msg">
                <p id="phone_err_msg"></p>
              </div>
            </div>
            <div class="customer_section">
              <p class="input_level">Email</p>
              <input type="email" class="add_customer_modal_input" id="customer_email_modal" placeholder="Email">
              <div class="alert alert-error error-msg email_err_msg_contnr modal_err_msg">
                <p id="email_err_msg"></p>
              </div>
            </div>
            <div class="customer_section">
              <div class="customer_balance_type">
                <div>
                  <p class="input_level">Opening Balance</p>
                  <input type="text" autocomplete="off" class="add_customer_modal_input integerchk"
                    id="customer_previous_due_modal" placeholder="Opening Balance">
                </div>
                <div class="mr_15">
                  <p class="input_level">Opening Balance Type</p>
                  <select class="form-control select2" name="opening_balance_type" id="opening_balance_type">
                    <option value="Debit">Debit</option>
                    <option value="Credit">Credit</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="customer_section">
              <p class="input_level">Credit Limit</p>
              <input type="text" autocomplete="off" class="add_customer_modal_input integerchk"
                id="customer_credit_limit_modal" placeholder="Credit Limit">
            </div>
            <div class="customer_section">
              <p class="input_level">Default Discount</p>
              <input type="text" autocomplete="off" class="add_customer_modal_input integerchkPercent"
                id="customer_discount_modal" placeholder="10 or 10%">
              <div class="alert alert-error error-msg discount_err_msg_contnr modal_err_msg">
                <p id="discount_err_msg"></p>
              </div>
            </div>
            <div class="customer_section">
              <p class="input_level">Customer Type</p>
              <select class="form-control  select2 op_width_100_p" id="customer_price_type" name="customer_price_type">
                <option value="1" selected="selected">Retail</option>
                <option value="2">Wholesale</option>
              </select>
            </div>
            <div class="customer_section">
              <p class="input_level">Group</p>
              <select class="form-control  select2 op_width_100_p" id="customer_group_id_modal"
                name="customer_group_id_modal">
                <option value="">Select</option>
                <option value="5">Indian</option>
                <option value="4">Europian</option>
                <option value="3">Karela</option>
                <option value="2">Tamil Nadu</option>
                <option value="1">BD</option>
              </select>
            </div>
            <div class="customer_section">
              <p class="input_level">Delivery Address</p>
              <input type="text" class="add_customer_modal_input" id="customer_delivery_address_modal"
                placeholder="Delivery Address">
            </div>
            <div class="customer_section">
              <p class="input_level">Date Of Birth</p>
              <input autocomplete="off" placeholder="Date Of Birth" type="text" readonly
                class="add_customer_modal_input " id="customer_dob_modal" data-datable="yyyymmdd"
                data-datable-divider=" - ">
            </div>
            <div class="customer_section">
              <p class="input_level">Date Of Anniversary</p>
              <input placeholder="Date Of Anniversary" autocomplete="off" type="text" readonly
                class="add_customer_modal_input " id="customer_doa_modal" data-datable="yyyymmdd"
                data-datable-divider=" - ">
            </div>


          </form>
          <div class="p-10">
            <button id="add_customer" class="bg__base px-25">Submit</button>
            <button class="bg__red px-25 cancel_customer_modal">Cancel</button>
          </div>
        </div>
      </div>
      <!--End Add Customer modal -->

      <!-- Start SMS setting modal -->
      <div id="show_qty_sms_setting_modal" class="modal op_padding_top_20">
        <div class="modal-content">
          <h2 class="op_center op_margin_top_1">POS Settings</h2>
          <div class="customedr_add_modal_info_holder">
            <label class="op_cursor_pointer op_padding_left_17">
              <input type="checkbox" name="qty_setting_check" value="Yes" id="qty_setting_check"> Check stock when
              selling </label>
          </div>
          <div class="section7 fix">
            <div class="sec7_inside op_float_left op_display_inline" id="sec7_1"><button
                class="op_padding_left_28 op_padding_right_28" id="cancel_set_qty_alert_sms_setting">Cancel</button>
            </div>
            <div class="sec7_inside op_float_right op_display_inline" id="sec7_2"><button
                class="op_padding_left_28 op_padding_right_28" id="add_post_setting">Submit</button></div>
          </div>
        </div>
      </div>
      <!-- End SMS setting modal -->

      <!-- Start Sale Hold Modal -->
      <div id="show_sale_hold_modal" class="modal">
        <div class="modal-content">
          <h1 class="main_header">Hold Sales <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="hold_sale_modal_info_holder fix">
            <div class="detail_hold_sale_holder fix">
              <div class="hold_sale_left fix">
                <div class="hold_list_holder fix">
                  <div class="header_row fix">
                    <div class="first_column column fix text-left pl-1">No</div>
                    <div class="second_column column fix">Customer</div>
                    <div class="third_column column fix">Date Time</div>
                  </div>
                  <div class="detail_holder fix">
                    <div class="single_hold_sale fix">
                      <div class="first_column column fix"></div>
                      <div class="second_column column fix"></div>
                      <div class="third_column column fix">Table</div>
                    </div>
                    <div class="single_hold_sale fix">
                      <div class="first_column column fix"></div>
                      <div class="second_column column fix">Walk-In-Customer</div>
                      <div class="third_column column fix">Table</div>
                    </div>
                  </div>
                  <div class="delete_all_hold_sales_container fix">
                    <button class="bg__red" id="delete_all_hold_sales_button">Delete all Hold Sales</button>
                  </div>
                </div>
              </div>
              <div class="hold_sale_right fix">
                <div class="top">
                  <div class="top_middle">
                    <h1>Sale Details</h1>
                    <div class="waiter_customer_table">
                      <div class="customer fix"><span class="op_font_weight_b">Customer: </span><span
                          class="op_display_none" id="hold_customer_id"></span><span id="hold_customer_name"></span>
                      </div>
                    </div>
                    <div class="item_modifier_details item_modifier_body">
                      <div class="modifier_item_header">
                        <div class="first_column_header column_hold">Item</div>
                        <div class="second_column_header column_hold text-center">Price</div>
                        <div class="third_column_header column_hold text-center">Qty</div>
                        <div class="forth_column_header column_hold text-center">Discount</div>
                        <div class="fifth_column_header column_hold text-right">Total</div>
                      </div>
                      <div class="modifier_item_details_holder hold_sale_height">
                      </div>
                    </div>
                    <div class="item_modifier_details">
                      <div class="bottom_total_calculation_hold footer-content-hold">
                        <div class="item">
                          <span>Sub Total: </span>
                          <span id="sub_total_show_hold">0.00</span>
                        </div>
                        <div class="item">
                          <span>Total Item: </span>
                          <span id="total_items_in_cart_hold">0</span> (<span
                            id="total_items_qty_in_cart_hold">0</span>)
                          <span id="sub_total_hold" class="ir_display_none">0.00</span>
                          <span id="total_item_discount_hold" class="ir_display_none">0.00</span>
                          <span id="discounted_sub_total_amount_hold" class="ir_display_none">0.00</span>
                        </div>
                        <div class="item">
                          <span>Tax: </span>
                          <span id="hold_all_tax_amount"></span>
                        </div>
                        <div class="item">
                          <span>Charge: </span>
                          <span id="delivery_charge_hold"> 0.00</span>
                        </div>
                        <div class="item">
                          <span>Discount: </span>
                          <span>
                            <span id="sub_total_discount_hold">0.00</span> (<span
                              id="all_items_discount_hold">0.00</span>)
                          </span>
                        </div>
                      </div>
                      <h1 class="modal_payable">
                        <span>Total Payable: </span>
                        <span id="total_payable_hold">0.00</span>
                      </h1>
                    </div>
                  </div>
                </div>
                <div class="button_holder hold_sale_right_buttom">
                  <button class="bg__green" id="hold_edit_in_cart_button">Edit in Cart</button>
                  <button class="bg__red" id="hold_delete_button">Delete</button>
                  <button class="bg_hold" id="hold_sales_close_button">Cancel</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Sale Hold Modal -->

      <!-- Start Keyboard Shortcut Modal -->
      <div id="show_keyboard_short_cut" class="modal">
        <div class="modal-content">
          <h1 class="main_header">Keyboard Shortcut <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="keyboard_short_cut_modal_body">
            <table class="table table-striped w-100">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th class="text-left" scope="col">Key</th>
                  <th class="text-left" scope="col">Value</th>
                </tr>
              </thead>
              <tbody>
                <tr class="my-10">
                  <th scope="row">1</th>
                  <td>Alt + p</td>
                  <td>Purchase Price</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">2</th>
                  <td>Alt + s</td>
                  <td>Sale Price</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">3</th>
                  <td>Alt + w</td>
                  <td>Whole Sale Price</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">4</th>
                  <td>Alt + c</td>
                  <td>Add Customer</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">5</th>
                  <td>Alt + d</td>
                  <td>Draft Sale</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">6</th>
                  <td>Alt + t</td>
                  <td>Last Ten Sale</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">7</th>
                  <td>Alt + r</td>
                  <td>View Register</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">8</th>
                  <td>Alt + e</td>
                  <td>Open Calculator</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">9</th>
                  <td>Alt + k</td>
                  <td>Open Shortcut</td>
                </tr>
                <tr>
                  <th colspan="3">
                    <h3 class="text-start">Sale Shortcut</h3>
                  </th>
                </tr>
                <tr class="my-10">
                  <th scope="row">10</th>
                  <td>Shift + p</td>
                  <td>Payment or Place Order</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">11</th>
                  <td>Shift + c</td>
                  <td>Cancel or clear cart data</td>
                </tr>
                <tr>
                  <th colspan="3">
                    <h3 class="text-start">Sale Shortcut when grocery experience is active</h3>
                  </th>
                </tr>
                <tr class="my-10">
                  <th scope="row">12</th>
                  <td>ArrowDown</td>
                  <td>Move to next item</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">13</th>
                  <td>ArrowUp</td>
                  <td>Move to previous item</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">14</th>
                  <td>ArrowRight</td>
                  <td>Move to generic medicine</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">15</th>
                  <td>ArrowRight</td>
                  <td>Move to main product</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">16</th>
                  <td>Enter</td>
                  <td>Enter to go sale next step</td>
                </tr>
                <tr>
                  <th colspan="3">
                    <h3 class="text-start">Sale Shortcut when item modal is active</h3>
                  </th>
                </tr>
                <tr class="my-10">
                  <th scope="row">17</th>
                  <td>Shift + a</td>
                  <td>Item add to cart</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">18</th>
                  <td>Shift + c</td>
                  <td>Close item modal</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">19</th>
                  <td>Tab</td>
                  <td>swith 1 element to another</td>
                </tr>
                <tr>
                  <th colspan="3">
                    <h3 class="text-start">Sale Shortcut when finalize payment modal active</h3>
                  </th>
                </tr>
                <tr class="my-10">
                  <th scope="row">20</th>
                  <td>ArrowDown</td>
                  <td>Move to next payment</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">21</th>
                  <td>ArrowUp</td>
                  <td>Move to previous payment</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">22</th>
                  <td>Shift + a</td>
                  <td>Add Payment</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">23</th>
                  <td>Shift + q</td>
                  <td>Quick Payment</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">24</th>
                  <td>Shift + r</td>
                  <td>Clar Quick Payment</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">25</th>
                  <td>Shift + s</td>
                  <td>Active SMS Check Box</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">26</th>
                  <td>Shift + e</td>
                  <td>Active Email Check Box</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">27</th>
                  <td>Shift + w</td>
                  <td>Active Whatsapp Check Box</td>
                </tr>
                <tr class="my-10">
                  <th scope="row">28</th>
                  <td>Shift + c</td>
                  <td>Cancel Finalize Modal</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!-- End Keyboard Shortcut Modal -->

      <!-- Start Last 10 Sale Modal -->
      <div id="show_last_ten_sales_modal" class="modal op_max_width_1050">
        <div class="modal-content modal-xl" id="modal_content_last_ten_sales">
          <h1 class="main_header">Sales <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="last_ten_sales_modal_info_holder">
            <div class="mobile_last_ten_sale op_display_flex op_justify_space_between op_margin_bottom_10">
              <input type="text" name="date_c" id="date_c" placeholder="Date" autocomplete="off"
                class="form-control date_sale op_width_100_p">
              <select class="select2 op_width_100_p" name="customer_c" id="customer_c">
                <option value="">Customer</option>
                <option value="1">Walk-in Customer </option>
                <option value="80">Mr.Thomas (01629171720)</option>
                <option value="81">Mr.Gabrial (+8801401748845)</option>
                <option value="82">Mr.Alex (01987434455)</option>
                <option value="83">Miss.Juniya (+8801302986732)</option>
                <option value="84">Mr.John (01987434455)</option>
                <option value="86">Miss.Victoriya (01987434455)</option>
                <option value="87">test (00909)</option>
                <option value="88">gg (1111)</option>
                <option value="89">ENAMUL HOQUE (09864468763)</option>
                <option value="90">???? (01773962493)</option>
                <option value="91">???? (01773962493)</option>
                <option value="92">Khaled Mahmud (01613100083)</option>
                <option value="93">Blanka (73737267183373)</option>
                <option value="94">????????? ?????? (77777)</option>
                <option value="95">reda (0660905432)</option>
                <option value="96">Ali (0660908756)</option>
                <option value="97">dmagi (0660905125)</option>
                <option value="98">Dmagi (0555443322)</option>
                <option value="99">smail (0660905135)</option>
                <option value="100">zihad (01718109798)</option>
                <option value="101">ergtretretretret (75785875785785)</option>
                <option value="102">Gg (987)</option>
                <option value="103">??? (090)</option>
              </select>
              <input autocomplete="off" type="text" id="invoice_c" name="invoice_c" placeholder="Invoice No"
                class="form-control op_width_100_p">
              <button class="search_sale bg__blue">
                Search </button>
            </div>

            <div class="last_ten_sales_holder fix">
              <div class="hold_sale_left fix hold_sale_left_height">
                <div class="hold_list_holder fix">
                  <div class="header_row fix">
                    <div class="first_column column fix">Invoice No</div>
                    <div class="second_column column fix">Customer</div>
                    <div class="third_column column fix">Date Time</div>
                  </div>
                  <div class="detail_holder fix op_overflow_auto">
                    <div class="single_hold_sale fix">
                      <div class="first_column column fix">09</div>
                      <div class="second_column column fix">Walk-In-Customer</div>
                      <div class="third_column column fix">Table 8</div>
                    </div>
                    <div class="single_hold_sale fix">
                      <div class="first_column column fix">08</div>
                      <div class="second_column column fix">Walk-In-Customer</div>
                      <div class="third_column column fix">Table 7</div>
                    </div>
                    <div class="single_hold_sale fix">
                      <div class="first_column column fix">07</div>
                      <div class="second_column column fix">Walk-In-Customer</div>
                      <div class="third_column column fix">Table 7</div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="hold_sale_right fix hold_sale_right_height">
                <div class="top fix">
                  <div class="top_middle fix">
                    <h1>Sale Details</h1>
                    <div class="waiter_customer_table fix">
                      <div class="fix op_sale_details_info">
                        <span class="op_font_weight_b">Invoice No: </span>
                        <span id="last_10_order_invoice_no"></span>
                      </div>
                      <div class="fix op_sale_details_info">
                        <span class="op_font_weight_b">Date Time: </span>
                        <span id="last_10_order_date_time"></span>
                      </div>
                    </div>
                    <div class="waiter_customer_table fix">
                      <div class="customer fix"><span class="op_font_weight_b">Customer: </span><span
                          class="op_display_none" id="last_10_customer_id"></span><span
                          id="last_10_customer_name"></span> <span id="last_ten_customer_mobile"></span></div>
                    </div>
                    <div class="item_modifier_details item_modifier_details_body fix">
                      <div class="modifier_item_header">
                        <div class="first_column_header column_hold">Item</div>
                        <div class="second_column_header column_hold">Price</div>
                        <div class="third_column_header column_hold">Qty</div>
                        <div class="forth_column_header column_hold">Discount</div>
                        <div class="fifth_column_header column_hold">Total</div>
                      </div>
                      <div class="modifier_item_details_holder last_10_sel_height">
                      </div>
                    </div>
                    <div class="item_modifier_details fix">
                      <div class="bottom_total_calculation_hold footer-content op_padding_10_important">
                        <div class="single_row">
                          <div class="label">Sub Total:</div>
                          <div class="third_column"> <span id="sub_total_show_last_10">0.00</span>
                            <span id="sub_total_last_10" class="op_display_none">0.00</span>
                            <span id="total_item_discount_last_10" class="op_display_none">0.00</span>
                            <span id="discounted_sub_total_amount_last_10" class="op_display_none">0.00</span>
                          </div>
                        </div>
                        <div class="single_row">
                          <div class="label">Total Item: <span id="total_items_in_cart_last_10">0.00</span> (<span
                              id="total_items_qty_in_cart_last_10">0.00</span>)</div>
                        </div>

                        <div class="single_row">
                          <div class="label">Tax:</div>
                          <span id="all_items_vat_last_10"
                            class="op_overflow_auto op_display_block op_height_20">0.00</span>
                        </div>
                        <div class="single_row">
                          <div class="label">Charge:</div>
                          <span id="delivery_charge_last_10">0.00</span>
                        </div>
                        <div class="single_row">
                          <div class="label">Discount:</div>
                          <span id="sub_total_discount_last_10">0.00</span>
                          (<span id="all_items_discount_last_10">0.00</span>)
                        </div>
                      </div>
                      <div class="total_payable">
                        <span class="label">Total Payable</span>
                        <span class="second_column"><span id="total_payable_last_10">0.00</span></span>
                      </div>
                      <div class="footer-content bottom_total_calculation_hold">
                        <div class="single_row">
                          <div class="label">Paid Amount:</div>
                          <div class="second_column"> <span id="paid_amount_last_10">0.00</span></div>
                        </div>
                        <div class="single_row">
                          <div class="label">Due Amount:</div>
                          <div class="third_column"> <span id="due_amount_last_10">0.00</span></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="button_holder hold_sale_right_bottom">
                  <button id="last_ten_print_invoice_button" class="bg__grey">Print Invoice</button>
                  <button id="last_ten_print_challan_button" class="bg__grey">Print Challan</button>
                  <button id="last_ten_sales_edit_buttons" class="bg_hold">Edit</button>
                  <button id="last_ten_delete_button" class="bg__red">Delete</button>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- Start Last 10 Sale Modal -->

      <!-- Start Keyboard Shortcut Modal -->
      <div id="show_keyboard_shortcut_modal" class="modal">
        <div class="modal-content" id="modal_content_keyboard_shortcut">
          <h1 class="main_header">Keyboard Shortcuts <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="last_ten_sales_modal_info_holder fix">
            <div class="last_ten_sales_holder fix">
              <div class="header_row fix">
                <table class="w-100">
                  <tr>
                    <td class="op_center op_width_30_p">Ctrl+Alt+C</td>
                    <td class="op_center op_width_10_p">=</td>
                    <td class="op_left op_width_49_p">Select Customer</td>
                  </tr>

                  <tr>
                    <td class="op_center op_width_49_p">Ctrl+Alt+S</td>
                    <td class="op_center op_width_2_p">=</td>
                    <td class="op_left op_width_49_p">Search Product</td>
                  </tr>

                  <tr>
                    <td class="op_center op_width_49_p">Ctrl+Alt+B</td>
                    <td class="op_center op_width_2_p">=</td>
                    <td class="op_left op_width_49_p">Select Customer</td>
                  </tr>

                  <tr>
                    <td class="op_center op_width_49_p">Ctrl+Alt+P</td>
                    <td class="op_center op_width_2_p">=</td>
                    <td class="op_left op_width_49_p">Payment</td>
                  </tr>

                  <tr>
                    <td class="op_center op_width_49_p">Ctrl+Alt+H</td>
                    <td class="op_center op_width_2_p">=</td>
                    <td class="op_left op_width_49_p">Hold a Sale</td>
                  </tr>

                  <tr>
                    <td class="op_center op_width_49_p">Ctrl+Alt+O</td>
                    <td class="op_center op_width_2_p">=</td>
                    <td class="op_left op_width_49_p">Open Hold Sales</td>
                  </tr>

                  <tr>
                    <td class="op_center op_width_49_p">Ctrl+Alt+A</td>
                    <td class="op_center op_width_2_p">=</td>
                    <td class="op_left op_width_49_p">Cancel a Sale</td>
                  </tr>
                </table>
                <p>&nbsp;</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Keyboard Shortcut Modal -->

      <!-- Start sale hold modal -->
      <div id="generate_sale_hold_modal" class="modal">
        <div class="modal-content" id="modal_content_generate_hold_sales">
          <h1 class="main_header">Hold <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="generate_hold_sale_modal_info_holder fix">
            <label>Hold Number <span class="op_color_red">*</span></label>
            <input type="text" autocomplete="off" id="hold_generate_input" placeholder="Hold Number">
            <div class="d-felx margin-top-10">
              <button id="hold_cart_info" class="bg__blue">Submit</button>
              <button id="close_hold_modal" class="bg__red">Cancel</button>
            </div>
          </div>

        </div>
      </div>
      <!-- End sale hold modal -->

      <!-- The table modal please read -->
      <div id="please_read_modal" class="modal">
        <div class="modal-content" id="modal_please_read_details">
          <p class="cross_button_to_close" id="please_read_close_button_cross">&times;</p>
          <h1 id="please_read_modal_header">Please Read</h1>
          <div class="help_modal_info_holder fix">
            <p class="para_type_1">Modify Order:</p>
            <p class="para_type_2">If you need to add some new item to an order, please select a running order from left
              and click on Modify Order. We have a perfect mechanism for modifying an order, please do that from there
              and please dont be confused to do that here, this is only table management section of an order.</p>
            <p class="para_type_1">What you can do here:</p>
            <p class="para_type_2">An order may contain many person sitting in multiple tables, so you can select
              multiple tables for an order You can not set person more than available sit for in a table You can proceed
              without selecting table because some people may can gather, take tea and go out As a table can have
              availability of several chairs and sometime those are sharable, so you can select multiple order in a
              table</p>
            <button id="please_read_close_button">Close</button>
          </div>
        </div>
      </div>
      <!-- End table modal please read modal -->

      <!-- Finalize Order Modal Start -->
      <div id="finalize_order_modal" class="modal">
        <div class="modal-content" id="modal_finalize_order_details">
          <h1 id="modal_finalize_header">
            Finalize Sale <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>

          <span id="modal_finalize_sale_id" class="op_display_none"></span>
          <div class="finalize_order_body">
            <div class="payment-list order-payment-list">
              <div class="finalize-button-wrap">
                <div class="payment_btn_toggler">
                  <button type="button" class="btn payment_ctrl payment_mthod_ctrl active">Payment Method</button>
                  <button type="button" class="btn payment_ctrl payment_details_ctrl">Payment Details</button>
                </div>
              </div>
              <ul class="list-for-payment-type ps finalize-p-active" id="finalize_payment_method">
                <li class="head">
                  <b>Payment Method</b>
                </li>
                <li class="payment_element active_m">
                  <a data-type_value="Cash" class=" active set_payment account_type" data-id="1"
                    href="javascript:void(0)">Cash</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="Bank_Account" class="set_no_access  set_payment account_type" data-id="2"
                    href="javascript:void(0)">Bank</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="Paypal" class="set_no_access  set_payment account_type" data-id="3"
                    href="javascript:void(0)">Paypal</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="Stripe" class="set_no_access  set_payment account_type" data-id="4"
                    href="javascript:void(0)">Stripe</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="Loyalty Point" class="set_no_access  set_payment account_type" data-id="5"
                    href="javascript:void(0)">Loyalty Point</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="Select" class="set_no_access  set_payment account_type" data-id="6"
                    href="javascript:void(0)">Voucher</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="Cash" class="set_no_access  set_payment account_type" data-id="7"
                    href="javascript:void(0)">sajeeb</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="?????" class="set_no_access  set_payment account_type" data-id="9"
                    href="javascript:void(0)">???? ???????</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="?????" class="set_no_access  set_payment account_type" data-id="10"
                    href="javascript:void(0)">???? ???????</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="?????" class="set_no_access  set_payment account_type" data-id="11"
                    href="javascript:void(0)">???? ???????</a>
                </li>
                <li class="payment_element ">
                  <a data-type_value="?????" class="set_no_access  set_payment account_type" data-id="12"
                    href="javascript:void(0)">???? ???????</a>
                </li>
                <li class=""> <a id="change_currency_btn" class="change_currency_btn" href="javascript:void(0)">Change
                    Currency</a> </li>
              </ul>
              <!-- <ul id="list">
                        <li class="trigger active">
                            <a href="javascript:void(0)">A</a>
                        </li>
                        <li class="trigger">
                            <a href="javascript:void(0)">B</a>
                        </li>
                        <li class="trigger">
                            <a href="javascript:void(0)">C</a>
                        </li>
                        <li class="trigger">
                            <a href="javascript:void(0)">A</a>
                        </li>
                    </ul> -->
              <input type="hidden" id="account_type" name="account_type">
            </div>
            <div class="payment_content_wrap finalize-p-inactive">
              <div class="customer_previous_due_mobile op_mb_7">
                <div class="finalize-mobile-view">
                  <p><b>Customer:</b> <span class="finalize_mobile_customer"></span></p>
                  <div class="text-rigth">
                    <p class="text-red"><b>Opening Balance:</b> <span class="finalize_mobile_op_balance"></span></p>
                    <p class="d-flex justify-content-end text-red"><span class="d-none"><b>Change Amount:</b></span>
                      <span class="finalize-changes-amt-mobile"></span>
                    </p>
                  </div>
                </div>
              </div>
              <div class="payment_content_left_side">
                <div class="payment_top">
                  <div class="c_d_flex justify-content-between">
                    <h4 class="name-of-payment set_no_access my-0" id="payment_preview">Cash Payment</h4>
                    <div class="customer_and_previous_due_info">
                      <div class="previous_due_div">
                        <div class="d-flex" id="previous_due_wrap">
                          <div class="finalize-customer-name mr-10"></div>
                          <span class="change_amount_color mr-10">Opening Balance: </span>&nbsp;
                          <span class="change_amount_color" id="previous_due_show"></span>
                          <img id="cash_img" alt="cash image"
                            src="assets/images/pos/dollar_sign.png">
                        </div>
                      </div>
                      <div class="loyalty_point_div">
                        <div class="d-flex">
                          <span class="change_amount_color mr-10">Available Loyalty Point: </span>&nbsp;
                          <span class="change_amount_color" id="available_loyalty_point"></span>
                        </div>
                      </div>
                      <div class="previous_due_div">
                        <div class="change_amount_color text-center">
                          <b><span class="change_amount_div display_none change_amount_p ml-10">Change
                              Amount</span></b><br>
                          <span class="change_amount_font change_amount_div display_none change_amount_p"
                            id="change_amount_div_">0</span>
                          <input type="hidden" id="hidden_given_amount" class="d-none"></input>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="payment_field_wrap">
                    <div class="input-field cash_div f_focus easy-get">
                      <label class="label set_no_access">Given Amount</label>
                      <input type="text" placeholder="Given Amount" onfocus="select();"
                        class="add_customer_modal_input set_no_access easy-put" id="finalize_given_amount_input">
                    </div>
                    <div class="input-field cash_div">
                      <label class="label set_no_access">Change Amount</label>
                      <input tabindex="-1" type="text" placeholder="Change Amount" onfocus="select();"
                        class="add_customer_modal_input set_no_access" id="finalize_change_amount_input">
                    </div>
                    <div class="input-field easy-get">
                      <label class="label set_no_access amount_txt">Amount</label>
                      <input tabindex="-1" type="text" placeholder="Amount"
                        class="add_customer_modal_input set_no_access easy-put" id="finalize_amount_input">
                    </div>
                    <div class="btns">
                      <button class="add-btn start_animation set_no_access" id="add_payment"><b>Add</b></button>
                    </div>
                  </div>
                </div>
              </div>
              <div id="show_account_type" class="show_account_type">
              </div>
              <!-- End Top Payment AddPart -->
              <div>
                <ul class="finalize_modal_is_mul_currency">
                  <li class="w-48 pe-3">
                    <select class="form-control select2 multi_currency w-100" id="multi_currency">
                      <option data-multi_currency="0" value="">Change Currency</option>
                      <option data-multi_currency="4100" value="?">?</option>
                      <option data-multi_currency="48.23" value="egp">egp</option>
                      <option data-multi_currency="2800" value="fc">fc</option>
                      <option data-multi_currency="" value="idr">idr</option>
                      <option data-multi_currency="0.032" value="Riyal">Riyal</option>
                      <option data-multi_currency="0.0026" value="Dinar Kwt">Dinar Kwt</option>
                      <option data-multi_currency="0.71" value="Rupee">Rupee</option>
                      <option data-multi_currency="0.0078" value="EURO">EURO</option>
                      <option data-multi_currency="1" value="USD">USD</option>
                    </select>
                  </li>
                  <li class="w-2"></li>
                  <li class="w-45">
                    <input type="text" placeholder="Amount" onfocus="select();" readonly id="multi_currency_amount"
                      class="custom_field w-100">
                  </li>
                  <li class="w-5 remove_multi_currency_wrap  color-red">
                    <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-id="${item_id}"
                      class="remove_multi_currency ps-1"></iconify-icon>
                  </li>
                </ul>
              </div>
              <div class="key-pad">
                <div class="left-keys">
                  <input type="hidden" value="" id="is_multi_currency">
                  <input type="hidden" value="" id="multi_currency_rate">
                  <div class="paid-list-wrapper">
                    <div class="w_100_p">
                      <p class="empty_title"></p>
                      <ul class="paid-list pl-0" id="payment_list_div">
                      </ul>
                    </div>
                    <div class="right-content">
                      <div class="item">
                        <h3 class="title">Payable</h3>
                        <p><span data-original_payable="" id="finalize_total_payable">0.00</span></p>
                      </div>

                      <div class="item">
                        <h3 class="title">Paid</h3>
                        <p><span class="spincrement" id="finalize_total_paid">0.00</span></p>
                      </div>

                      <div class="item">
                        <h3 class="title">Due</h3>
                        <p><span class="spincrement" id="finalize_total_due">0.00</span></p>
                      </div>
                      <button type="button" class="new-btn justify-content-center" id="open_finalize_cart_details">Cart
                        Details</button>
                    </div>
                  </div>
                </div>
                <div class="right-keys">
                  <ul class="key-list">
                    <li><a id="open_finalize_discount" href="javascript:void(0)">Discount</a></li>
                    <li><a data-amount="" data-is_denomination=""
                        class="set_no_access get_quick_cash set_default_quick_cach" href="javascript:void(0)">0.00</a>
                    </li>
                    <li class="third">
                      <ul>
                        <li><a data-is_denomination="yes" data-amount="1" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">1</a></li>
                        <li><a data-is_denomination="yes" data-amount="5" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">5</a></li>
                        <li><a data-is_denomination="yes" data-amount="10" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">10</a></li>
                        <li><a data-is_denomination="yes" data-amount="10" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">10</a></li>
                        <li><a data-is_denomination="yes" data-amount="20" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">20</a></li>
                        <li><a data-is_denomination="yes" data-amount="20" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">20</a></li>
                        <li><a data-is_denomination="yes" data-amount="50" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">50</a></li>
                        <li><a data-is_denomination="yes" data-amount="100" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">100</a></li>
                        <li><a data-is_denomination="yes" data-amount="200" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">200</a></li>
                        <li><a data-is_denomination="yes" data-amount="500" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">500</a></li>
                        <li><a data-is_denomination="yes" data-amount="1000" class="set_no_access get_quick_cash"
                            href="javascript:void(0)">1000</a></li>
                      </ul>
                    </li>
                    <li class="clear">
                      <a href="javascript:void(0)"
                        class="new-btn-danger justify-content-center clear-btn clear_quick_data set_no_access">Clear</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="sms-email-mobile d-flex justify-content-end my-20">

                <label class="container op_margin_top_6 op_color_dim_grey mr-10 send_sms_finalize"> Send Invoice Via SMS
                  <input class="sms_enable_status" type="checkbox" name="send_invoice_sms">
                  <span class="checkmark"></span>
                </label>
                <label class="container op_margin_top_6 op_color_dim_grey  mr-10 send_email_finalize"> Send Invoice Via
                  Email <input class="smtp_enable_status" type="checkbox" name="send_invoice_email">
                  <span class="checkmark"></span>
                </label>
              </div>
            </div>
          </div>
          <div class="btn__box ">
            <button class="bg__red" id="finalize_order_cancel_button">Cancel</button>
            <button class="bg__green" id="finalize_order_button">Submit</button>
          </div>
        </div>
      </div>
      <!-- Finalize Order Modal End -->

      <!-- Start Mobile View All Menu -->
      <div class="all__menus mobile_other_menu">
        <ul class="menu__list">
          <div>
            <li class="it_has_children no-need-for-waiter">
              <a href="javascript:void(0)">
                <iconify-icon icon="solar:user-check-broken" width="18"></iconify-icon>
                Main Menu </a>
              <ul class="sub_menu" role="menu">
                <li>
                  <a href="#">
                    Change Profile</a>
                </li>
                <li>
                  <a href="#">
                    Change Password</a>
                </li>
                <li>
                  <a href="#">
                    Set Security Question</a>
                </li>
                <li>
                  <a class="logOutTrigger" href="javascript:void(0)">Logout</a>
                </li>
              </ul>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="javascript:void(0)" class="open_hold_sales">
                <iconify-icon icon="solar:adhesive-plaster-broken" width="18"></iconify-icon>
                Open Draft Sales </a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="javascript:void(0)" class="last_ten_sales_button">
                <iconify-icon icon="solar:history-broken" width="18"></iconify-icon>
                Recent Sales </a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="javascript:void(0)" class="register_details">
                <iconify-icon icon="solar:document-add-broken" width="18"></iconify-icon>
                Register </a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="home.jsp">
                <iconify-icon icon="solar:chart-2-broken" width="18"></iconify-icon>
                Dashboard</a></a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <span>Grocery Experience</span>
              <div class="switchary_wrap">
                <input id="grocery_experience_el" type="checkbox" class="checkbox" />
                <label for="grocery_experience_el" class="switch"
                  data-tippy-content="Keep On to use better experience for grocery and medicine or change pos screen layout.">
                  <span class="switch__circle">
                    <span class="switch__circle-inner"></span>
                  </span>
                  <span class="switch__left">Off</span>
                  <span class="switch__right">On</span>
                </label>
              </div>
            </li>
          </div>
          <div>
            <li class="it_has_children languages">
              <a href="javascript:void(0)" class="header_menu_icon dropdown-menu" data-tippy-content="Language">
                <iconify-icon icon="ion:language" width="18"></iconify-icon>
                Language </a>
              <ul class="sub_menu mobile_ln_submenu" role="menu">
                <li data-lang="English">
                  <a href="#">
                    <span>Arabic</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>Bangla</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>English</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>French</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>Hindi</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>Sinhala</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>Spanish</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="#">
                    <span>Urdu</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="javascript:void(0)" class="print_last_invoice">
                <iconify-icon icon="solar:printer-broken" width="18"></iconify-icon>
                Print Last Invoice </a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="javascript:void(0)" id="calculator_button" class="calculator_button">
                <iconify-icon icon="solar:calculator-minimalistic-broken" width="18"></iconify-icon>
                Calculator </a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="javascript:void(0)" class="keyboard_short_cut">
                <iconify-icon icon="solar:keyboard-broken" width="18"></iconify-icon>
                Keyboard Shortcut </a>
            </li>
            <li class="mobile_menu_click_for_hide">
              <a href="https://doorsoft-demo.com/off_pos/all_types/customer-panel">
                <iconify-icon icon="solar:monitor-broken" width="18"></iconify-icon>
                Customer Panel </a>
            </li>
          </div>
        </ul>
      </div>
      <!-- End Mobile View All Menu -->




      <div class="overlayForCalculator"></div>
      <div id="calculator_main">
        <div class="calculator">
          <input type="text" autocomplete="off" readonly>
          <div class="row">
            <div class="key">1</div>
            <div class="key">2</div>
            <div class="key">3</div>
            <div class="key last">0</div>
          </div>
          <div class="row">
            <div class="key">4</div>
            <div class="key">5</div>
            <div class="key">6</div>
            <div class="key last action instant">cl</div>
          </div>
          <div class="row">
            <div class="key">7</div>
            <div class="key">8</div>
            <div class="key">9</div>
            <div class="key last action instant">=</div>
          </div>
          <div class="row">
            <div class="key action">+</div>
            <div class="key action">-</div>
            <div class="key action">x</div>
            <div class="key action">/</div>
          </div>
        </div>
      </div>

      <input type="hidden" value="2" name="cal_open_status" id="cal_open_status">
      <div id="modify_button_tool_tip" class="op_choose_this">
        <h1 class="title op_choose_this_title">Choose This For:</h1>
        <p class="op_choose_this_for">1. Add New Item</p>
        <p class="op_choose_this_for">2. Change Table</p>
        <p class="op_choose_this_for">3. Change anything in an Order</p>
      </div>
      <div id="direct_invoice_button_tool_tip" class="op_choose_this">
        <h1 class="title op_choose_this_title">For Fast Food Restaurants</h1>
      </div>

      <!-- New Custom Animated Modal Start -->
      <div class="pos__modal__overlay"></div>
      <div class="pos__modal__overlay2"></div>
      <!-- New Custom Animated Modal End -->

      <!-- Discount Modal Start -->
      <div id="discount_modal" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">Discount <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="discunt_check_modal">
              <label>Discount Permission Code</label>
              <input type="text" onfocus="select()" class="form-control discount_permission_code" value=""
                placeholder="Discount Permission Code">
              <div class="alert pos_error_counter alert-error error-msg">
                <p class="discount_err_message"></p>
              </div>
            </div>
            <div class="easy-get discount_field">
              <label>Discount in percentage (eg: 10%)</label>
              <input type="text" onfocus="select()" class="form-control total_disc easy-put" placeholder="eg: 10 or 10%"
                id="sub_total_discount">
              <span class="ir_display_none" id="sub_total_discount_amount"></span>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" id="submit_discount_custom" class="bg__blue px-20 bg__blue">Submit</button>
            <button type="button" id="cancel_discount_modal" class="cancel px-20 bg__red">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Discount Modal End -->

      <!-- Finalize Discount Modal Start -->
      <div id="finalize_discount_modal" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">Discount <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="discunt_check_modal px_10">
              <label>Discount Permission Code</label>
              <input type="text" onfocus="select()" class="form-control discount_permission_code_f" value=""
                placeholder="Discount Permission Code">
              <div class="alert pos_error_counter alert-error error-msg">
                <p class="discount_err_message"></p>
              </div>
            </div>

            <div class="px_10 margin-top-10">
              <label>Value (eg: 10 or 30)</label>
              <input type="text" class="integerchk" placeholder="eg: 10 or 30" id="sub_total_discount_finalize">
              <span class="ir_display_none"></span>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="finalize_dis_submit bg__blue">Submit</button>
            <button type="button" class="cancel_modal bg__red remove_discount">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Finalize Discount Modal End -->


      <!-- Finalize Cart Details -->
      <div id="finalize_cart_details_modal" class="modal">
        <input type="hidden" id="cart_modal_total_item" value="">
        <input type="hidden" id="cart_modal_total_subtotal" value="">
        <input type="hidden" id="cart_modal_total_discount" value="">
        <input type="hidden" id="cart_modal_total_discount_all" value="">
        <input type="hidden" id="cart_modal_total_discount_for_subtotal" value="">
        <input type="hidden" id="cart_modal_total_tax" value="">
        <input type="hidden" id="cart_modal_total_charge" value="">
        <input type="hidden" id="cart_modal_total_tips" value="">
        <input type="hidden" id="cart_modal_total_rounding" value="">
        <!-- Modal content -->
        <div class="modal-content">
          <h1 class="modal-header-custom">
            Cart Details <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="modal-body-content">
            <div class="item-cart-details-item-list item_cart_details_header">
              <span><b>Item</b></span>
              <span class="text-center"><b>Price</b></span>
              <span class="text-center"><b>Quantity</b></span>
              <span class="text-center"><b>Discount</b></span>
              <span class="text-center"><b>Subtotal</b></span>
            </div>
            <div class="finalize_item_details">
            </div>
            <div class="item-cart-details-item-list cart_details_footer">
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="cancel_modal bg__red">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Finalize Cart Details End -->

      <!-- Open Service Charge Modal Start -->
      <div id="charge_modal" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">
            Charge <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="form-group mt-3">
              <!--  -->
              <label for="charge_type">Type</label>
              <select id="charge_type" class="select2">
                <option value="delivery">Delivery</option>
                <option value="service">Service</option>
              </select>
            </div>
            <div class="form-group margin-top-15 easy-get">
              <label>Amount</label>
              <input type="text" autocomplete="off" class="form-control easy-put integerchk" placeholder="Amount"
                value="0.00" id="delivery_charge">
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="submit bg__blue px-20 delivery_charge_submit">Submit</button>
            <button type="button" class="cancel bg__red px-20">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Open Service Charge Modal End -->


      <!-- Open Delivery Partner Modal Start -->
      <div id="delivery_partner" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">
            Delivery Partner <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="form-group mt-3">
              <label for="delivery_partner_list">Delivery Partner</label>
              <select id="delivery_partner_list" class="select2 form-control">
                <option>Select</option>
                <option value="7">Ecom Express</option>
                <option value="6">DTDC</option>
                <option value="5">Blue Dart</option>
                <option value="4">FexEX</option>
                <option value="3">DHL Service</option>
                <option value="2">Pathao</option>
                <option value="1">Daraz</option>
              </select>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="submit bg__blue px-20" id="delivery_partner_submit">Submit</button>
            <button type="button" class="cancel bg__red px-20">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Open Delivery Partner Modal Modal End -->

      <!-- Note Modal Start -->
      <div id="note_modal" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">
            Note <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="op_margin_top_10">
              <label for="note">Note</label>
              <textarea class="op_height_80" autocomplete="off" placeholder="Note" id="note"></textarea>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="submit bg__blue px-20">Submit</button>
            <button type="button" class="cancel bg__red px-20">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Note Modal End -->


      <!-- Coupon Discount Modal Start -->
      <div id="coupon_discount" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">
            Discount coupon (on entire sale) <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="op_margin_top_10 form-group">
              <label for="coupon_code">Coupon Code</label>
              <input type="text" class="op_height_80 form-control" name="coupon_code" autocomplete="off"
                placeholder="Coupon Code" id="coupon_code">
            </div>
            <div class="alert pos_error_counter alert-error error-msg">
              <p class="coupon_err_message"></p>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="bg__blue px-20 coupon_code_submit">Submit</button>
            <button type="button" class="cancel bg__red px-20">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Coupon Discount End -->

      <!-- Ragister Modal Start -->
      <div class="cus_pos_modal modal" id="register_modal">
        <h1 class="main_header">
          Register Details <a href="javascript:void(0)" class="alertCloseIcon pos__modal__close">
            <i data-feather="x"></i>
          </a>
        </h1>

        <div class="pos__modal__body scrollbar-macosx">
          <div class="default_inner_body" id="register_details_content_o">
            <input type="hidden" class="datatable_name" data-title="Register Details" data-id_name="datatable">
            <div class="html_content">
            </div>
          </div>
        </div>
        <footer class="pos__modal__footer">
          <div class="right_box">
            <button type="button" id="register_close" class="btn bg__grey">Close Register</button>
            <button type="button" class="modal_hide_register btn bg__red">Cancel</button>
          </div>
        </footer>
      </div>
      <!-- Ragister Modal End -->

      <!-- Tax Modal Start -->
      <div id="tax_modal" class="modal">
        <div class="modal-content">
          <h1 class="modal-header-custom">Tax Details <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="content">
              <table class="tax-modal-table">
                <thead>
                  <tr>
                    <th>Tax Name</th>
                    <th>Tax Percent</th>
                  </tr>
                </thead>
                <tbody id="tax_row_show">

                </tbody>
              </table>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="cancel bg__red">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Tax Modal End -->



      <!-- Promo Modal -->
      <div id="show_all_promo" class="modal">
        <div class="modal-content modal_content_hold_sales">
          <h1 class="main_header">Promotion Items <a href="javascript:void(0)" class="alertCloseIcon">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="main-content-wrapper">
            <div class="promo_modal_wrap">
              <div class="promo_modal_header">
                <div class="promo-h-item">
                  <h5>Title</h5>
                </div>
                <div class="promo-h-item">
                  <h5>Type</h5>
                </div>
                <div class="promo-h-item">
                  <h5>Item</h5>
                </div>
                <div class="promo-h-item">
                  <h5>Discount</h5>
                </div>
              </div>
              <div class="promo_modal_body">
              </div>
            </div>
          </div>
          <div class="btn__box">
            <button type="button" class="cancel bg__red">Cancel</button>
          </div>
        </div>
      </div>
      <!-- Promo Modal End -->

      <!-- POS Sidebar Start -->
      <aside id="pos__sidebar">
        <div class="brand__logo op_center">
          <a href="#">
            <img
              src="assets/images/pos/1c89efb05f2bda6fb4e61365e3bb61dd.png"
              width="50" alt="Logo Image">
          </a>
        </div>
        <ul class="pos__menu__list">
          <li class="have_sub_menu2">
            <a href="#">
              <iconify-icon icon="solar:home-broken" width="30"></iconify-icon>
              <span>
                Home </span>
            </a>
          </li>



          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:widget-2-broken" width="30"></iconify-icon>
              <span>Outlets</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-25" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Outlet </a>
              </li>
              <li data-access="list-25" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Outlet </a>
              </li>
            </ul>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:cart-large-broken" width="30"></iconify-icon>
              <span>Sales</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="pos-138" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:cart-large-broken" width="15"></iconify-icon>
                  POS Screen </a>
              </li>
              <li data-access="list-138" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Sale </a>
              </li>
              <li data-access="add-147" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Customer </a>
              </li>
              <li data-access="list-147" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Customer </a>
              </li>
              <li data-access="add-154" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Customer Group </a>
              </li>
              <li data-access="list-154" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Customer Group </a>
              </li>
              <li data-access="add-133" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Promotion </a>
              </li>
              <li data-access="list-133" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Promotion </a>
              </li>
              <li data-access="add-159" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Delivery Partner </a>
              </li>
              <li data-access="list-159" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Delivery Partner </a>
              </li>
            </ul>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:list-heart-broken" width="30"></iconify-icon>
              <span>Item/Product</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-49" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Item </a>
              </li>
              <li data-access="list-49" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Item </a>
              </li>
              <li data-access="list-49" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  Bulk Item Update </a>
              </li>
              <li data-access="add-60" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Item Category </a>
              </li>
              <li data-access="list-60" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Item Category </a>
              </li>
              <li data-access="add-304" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Rack </a>
              </li>
              <li data-access="list-304" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Rack </a>
              </li>

              <li data-access="add-65" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Unit </a>
              </li>
              <li data-access="list-65" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Unit </a>
              </li>
              <li data-access="add-70" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Variation Attribute </a>
              </li>
              <li data-access="list-70" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Variation Attribute </a>
              </li>
              <li data-access="add-297" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Brand </a>
              </li>
              <li data-access="list-297" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Brand </a>
              </li>
            </ul>
          </li>
          <li data-access="view-30" class="have_sub_menu2 menu_assign_class">
            <a href="home.jsp">
              <iconify-icon icon="solar:chart-2-broken" width="30"></iconify-icon>
              <span>&nbsp;Dashboard</span>
            </a>
          </li>
          <li data-access="view-164" class="have_sub_menu2">
            <a href="#">
              <iconify-icon icon="solar:database-broken" width="30"></iconify-icon>
              <span>
                Stock </span>
            </a>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:archive-broken" width="30"></iconify-icon>
              <span>Purchase</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-109" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Purchase </a>
              </li>
              <li data-access="list-109" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Purchase </a>
              </li>
              <li data-access="add-117" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Supplier/addEditSupplier">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Supplier </a>
              </li>
              <li data-access="list-117" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Supplier/suppliers">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Supplier </a>
              </li>
            </ul>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:card-recive-broken" width="30"></iconify-icon>
              <span>Customer Receive</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-198" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Customer_due_receive/addCustomerDueReceive">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Customer Receive </a>
              </li>
              <li data-access="list-198" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Customer_due_receive/customerDueReceives">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Customer Receive </a>
              </li>
            </ul>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:card-send-broken" width="30"></iconify-icon>
              <span>Supplier Payment</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-192" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/SupplierPayment/addSupplierPayment">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Supplier Payment </a>
              </li>
              <li data-access="list-192" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/SupplierPayment/supplierPayments">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Supplier Payment </a>
              </li>
            </ul>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:wallet-money-broken" width="30"></iconify-icon>
              <span>Accounting</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-218" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/PaymentMethod/addEditPaymentMethod">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Account </a>
              </li>
              <li data-access="list-218" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/PaymentMethod/paymentMethods">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Account </a>
              </li>
              <li data-access="add-223" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Deposit/addEditDeposit">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Deposit Or Withdraw </a>
              </li>
              <li data-access="list-223" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Deposit/deposits">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Deposit Or Withdraw </a>
              </li>
              <li data-access="list-228" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Accounting/balanceStatement">
                  <iconify-icon icon="solar:notebook-broken" width="18"></iconify-icon>
                  Balance Statement </a>
              </li>
              <li data-access="list-230" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Accounting/trialBalance">
                  <iconify-icon icon="solar:book-2-broken" width="18"></iconify-icon>
                  Trial Balance </a>
              </li>
              <li data-access="list-232" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Accounting/balanceSheet">
                  <iconify-icon icon="solar:notebook-bookmark-broken" width="18"></iconify-icon>
                  Balance Sheet </a>
              </li>
            </ul>
          </li>
       

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:diagram-down-broken" width="30"></iconify-icon>
              <span>Report</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="register_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/registerReport">
                  <iconify-icon icon="solar:book-broken" width="18"></iconify-icon>
                  Register Report </a>
              </li>
              <li data-access="zReport-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/zReport">
                  <iconify-icon icon="solar:bookmark-square-minimalistic-broken" width="18"></iconify-icon>
                  Z Report </a>
              </li>
              <li data-access="daily_summary_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/dailySummaryReport">
                  <iconify-icon icon="solar:clipboard-list-broken" width="18"></iconify-icon>
                  Daily Summary Report </a>
              </li>
              <li data-access="sale_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/saleReport">
                  <iconify-icon icon="solar:cart-check-broken" width="18"></iconify-icon>
                  Sale Report </a>
              </li>
              <li data-access="service_sale_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/serviceSaleReport">
                  <iconify-icon icon="solar:hand-stars-broken" width="18"></iconify-icon>
                  Service Sale Report </a>
              </li>
              <li data-access="service_sale_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/comboServiceReport">
                  <iconify-icon icon="solar:hand-stars-broken" width="18"></iconify-icon>
                  Combo Service Report </a>
              </li>
              <li data-access="stock_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/stockReport">
                  <iconify-icon icon="solar:atom-broken" width="18"></iconify-icon>
                  Stock Report </a>
              </li>
              <li data-access="employee_sale_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/employeeSaleReport">
                  <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                  Employee Sale Report </a>
              </li>
              <li data-access="customer_receive_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/customerDueReceiveReport">
                  <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                  Customer Receive Report </a>
              </li>
              <li data-access="attendance_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/attendanceReport">
                  <iconify-icon icon="solar:clock-square-broken" width="18"></iconify-icon>
                  Attendance Report </a>
              </li>
              <li data-access="product_profit_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/productProfitReport">
                  <iconify-icon icon="solar:dollar-broken" width="18"></iconify-icon>
                  Product Profit Report </a>
              </li>
              <li data-access="supplier_ledger-249" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                  Supplier Ledger </a>
              </li>
              <li data-access="supplier_balance_report-249" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:banknote-broken" width="18"></iconify-icon>
                  Supplier Balance Report </a>
              </li>

              <li data-access="customer_ledger-249" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                  Customer Ledger </a>
              </li>
              <li data-access="customer_balance_report-249" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:banknote-broken" width="18"></iconify-icon>
                  Customer Balance Report </a>
              </li>
              <li data-access="servicing_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/servicingReport">
                  <iconify-icon icon="solar:sunrise-broken" width="18"></iconify-icon>
                  Servicing Report </a>
              </li>
              <li data-access="product_sale_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/productSaleReport">
                  <iconify-icon icon="solar:list-heart-broken" width="18"></iconify-icon>
                  Product Sale Report </a>
              </li>


              <li data-access="tax_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/taxReport">
                  <iconify-icon icon="solar:target-broken" width="18"></iconify-icon>
                  Tax Report </a>
              </li>
              <li data-access="detailed_sale_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/detailedSaleReport">
                  <iconify-icon icon="solar:cart-check-broken" width="18"></iconify-icon>
                  Detailed Sale Report </a>
              </li>

              <li data-access="low_stock_report-249" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:database-broken" width="18"></iconify-icon>
                  Low Stock Report </a>
              </li>
              <li data-access="profit_loss_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/profitLossReport">
                  <iconify-icon icon="solar:money-bag-broken" width="18"></iconify-icon>
                  Profit Loss Report </a>
              </li>
              <li data-access="purchase_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/purchaseReportByDate">
                  <iconify-icon icon="solar:archive-broken" width="18"></iconify-icon>
                  Purchase Report </a>
              </li>
              <li data-access="product_purchase_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/productPurchaseReport">
                  <iconify-icon icon="solar:archive-broken" width="18"></iconify-icon>
                  Product Purchase Report </a>
              </li>
              <li data-access="expense_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/expenseReport">
                  <iconify-icon icon="solar:rewind-forward-broken" width="18"></iconify-icon>
                  Expense Report </a>
              </li>
              <li data-access="income_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/incomeReport">
                  <iconify-icon icon="solar:rewind-back-broken" width="18"></iconify-icon>
                  Income Report </a>
              </li>
              <li data-access="salary_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/salaryReport">
                  <iconify-icon icon="solar:transmission-broken" width="18"></iconify-icon>
                  Salary Report </a>
              </li>
              <li data-access="purchase_return_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/purchaseReturnReport">
                  <iconify-icon icon="solar:multiple-forward-right-broken" width="18"></iconify-icon>
                  Purchase Return Report </a>
              </li>
              <li data-access="sale_return_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/saleReturnReport">
                  <iconify-icon icon="solar:multiple-forward-left-broken" width="18"></iconify-icon>
                  Sale Return Report </a>
              </li>
              <li data-access="damage_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/damageReport">
                  <iconify-icon icon="solar:trash-bin-minimalistic-broken" width="18"></iconify-icon>
                  Damage Report </a>
              </li>
              <li data-access="installment_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/installmentReport">
                  <iconify-icon icon="solar:layers-broken" width="18"></iconify-icon>
                  Installment Report </a>
              </li>
              <li data-access="installment_due_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/installmentDueReport">
                  <iconify-icon icon="solar:layers-broken" width="18"></iconify-icon>
                  Installment Due Report </a>
              </li>
              <li data-access="item_tracing_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/itemMoving">
                  <iconify-icon icon="solar:list-heart-broken" width="18"></iconify-icon>
                  Item Movement Report </a>
              </li>
              <li data-access="price_history_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/priceHistory">
                  <iconify-icon icon="solar:chat-round-money-broken" width="18"></iconify-icon>
                  Price History Report </a>
              </li>
              <li data-access="cash_flow_report-249" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:hand-money-broken" width="18"></iconify-icon>
                  Cash Flow Report </a>
              </li>

              <li data-access="available_loyalty_point-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/availableLoyaltyPointReport">
                  <iconify-icon icon="solar:diploma-broken" width="18"></iconify-icon>
                  Available Loyalty Point Report </a>
              </li>
              <li data-access="usage_loyalty_point-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Report/usageLoyaltyPointReport">
                  <iconify-icon icon="solar:diploma-verified-broken" width="18"></iconify-icon>
                  Usage Loyalty Point Report </a>
              </li>
            </ul>
          </li>

          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:rewind-forward-broken" width="30"></iconify-icon>
              <span>Expense</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-172" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Expense </a>
              </li>
              <li data-access="list-172" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Expense </a>
              </li>
              <li data-access="add-177" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Expense Category </a>
              </li>
              <li data-access="list-177" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Expense Category </a>
              </li>
            </ul>
          </li>
          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:rewind-back-broken" width="30"></iconify-icon>
              <span>Income</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-182" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Income </a>
              </li>
              <li data-access="list-182" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Income </a>
              </li>
              <li data-access="add-187" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Income Item </a>
              </li>
              <li data-access="list-187" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Income Item </a>
              </li>
            </ul>
          </li>


          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:multiple-forward-left-broken" width="30"></iconify-icon>
              <span>Sale Return</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-204" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Sale Return </a>
              </li>
              <li data-access="list-204" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Sale Return </a>
              </li>
            </ul>
          </li>
          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:multiple-forward-right-broken" width="30"></iconify-icon>
              <span>Purchase Return</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="add-211" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase_return/addEditPurchaseReturn">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Purchase Return </a>
              </li>
              <li data-access="list-211" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase_return/purchaseReturns">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Purchase Return </a>
              </li>
            </ul>
          </li>


          <li class="have_sub_menu">
            <a href="javascript:void(0)">
              <iconify-icon icon="solar:settings-broken" width="30"></iconify-icon>
              <span>Setting</span>
            </a>
            <div class="triangle"></div>
            <ul class="sub__menu__list">
              <li data-access="edit-1" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:settings-broken" width="18"></iconify-icon>
                  Setting </a>
              </li>
              <li data-access="whatsappSetting-327" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:settings-minimalistic-broken" width="18"></iconify-icon>
                  WhatsApp Setting </a>
              </li>
              <li data-access="add-3" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Denomination </a>
              </li>
              <li data-access="list-3" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Denominations </a>
              </li>
              <li data-access="add-340" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Counter </a>
              </li>
              <li data-access="list-340" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Counter </a>
              </li>
              <li data-access="edit-8" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Tax_setting/tax">
                  <iconify-icon icon="solar:target-broken" width="18"></iconify-icon>
                  Tax Setting </a>
              </li>
              <li data-access="edit-10" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:letter-unread-broken" width="18"></iconify-icon>
                  Email Setting </a>
              </li>
              <li data-access="edit-12" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Short_message_service/smsService">
                  <iconify-icon icon="solar:letter-opened-broken" width="18"></iconify-icon>
                  SMS Settings </a>
              </li>
              <li data-access="edit-14" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Printer/printerSetup">
                  <iconify-icon icon="solar:printer-broken" width="18"></iconify-icon>
                  Printer Setup </a>
              </li>
              <li data-access="edit-23" class="menu_assign_class d-block">
                <a href="#">
                  <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                  White Label </a>
              </li>
              <li data-access="edit-23" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                  Login Page </a>
              </li>

              <li data-access="edit-335" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:password-broken" width="18"></iconify-icon>
                  Payment Getway </a>
              </li>
              <li data-access="add-311" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Multiple Currency </a>
              </li>
              <li data-access="list-311" class="menu_assign_class">
                <a href="#">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Multiple Currency </a>
              </li>
              <li data-access="add_dummy_data-325" class="menu_assign_class">
                <a class="add_dummy_data" href="#">
                  <iconify-icon icon="solar:import-broken" width="18"></iconify-icon>
                  Import Dummy Data </a>
              </li>

              <li data-access="deleteDummyData-329" class="menu_assign_class">
                <a class="delete" href="#">
                  <iconify-icon icon="solar:trash-bin-2-broken" width="18"></iconify-icon>
                  Delete Dummy Data </a>
              </li>
              <li data-access="wipeTransactionalData-331" class="menu_assign_class">
                <a class="delete" href="#">
                  <iconify-icon icon="solar:transfer-horizontal-broken" width="18"></iconify-icon>
                  Wipe Transactional Data </a>
              </li>
              <li data-access="wipeAllData-333" class="menu_assign_class">
                <a class="delete" href="#">
                  <iconify-icon icon="solar:translation-broken" width="18"></iconify-icon>
                  Wipe All Data </a>
              </li>
            </ul>
          </li>
        </ul>
      </aside>
      <div class="sidebar_sub_menu">
      </div>
      <!-- TOP Start-->
      <script src="assets/js/POS/jquery-3.3.1.min.js"></script>
      <script src="assets/js/POS/jquery-ui.js"></script>
      <script src="assets/js/POS/jquery.slimscroll.min.js"></script>
      <script src="assets/js/POS/sweetalert2-new.all.min.js"></script>
      <script
        src="assets/js/POS/select2.full.min.js"></script>
      <script src="assets/js/POS/calculator.js"></script>
      <script
        src="assets/js/POS/jquery.keyboard.js"></script>
      <script
        src="assets/js/POS/jquery.mousewheel.js"></script>
      <script
        src="assets/js/POS/jquery.keyboard.extension-typing.js"></script>
      <script
        src="assets/js/POS/jquery.keyboard.extension-autocomplete.js"></script>
      <script
        src="assets/js/POS/jquery.keyboard.extension-caret.js"></script>
      <!-- TOP End-->
      <script src="assets/js/POS/toastr.js"></script>
      <script src="assets/js/POS/marquee.js"></script>
      <script src="assets/js/POS/datable.js"></script>
      <script src="assets/js/POS/jquery.cookie.js"></script>
      <script src="assets/js/POS/feather.min.js"></script>
      <script src="assets/js/POS/howler.min.js"></script>
      <script
        src="assets/js/POS/perfect-scrollbar.min.js"></script>
      <script src="assets/js/POS/popper.js"></script>
      <script src="assets/js/POS/tippy.js"></script>
      <script
        src="assets/js/POS/datepicker.js"></script>
      <script
        src="assets/js/POS/dataTables.buttons.min.js"></script>
      <script
        src="assets/js/POS/jquery.dataTables.min.js"></script>
      <script
        src="assets/js/POS/dataTables.bootstrap.min.js"></script>
      <script
        src="assets/js/POS/dataTables.bootstrap4.min.js"></script>
      <script
        src="assets/js/POS/dataTables.buttons.min.js"></script>
      <script
        src="assets/js/POS/buttons.html5.min.js"></script>
      <script
        src="assets/js/POS/buttons.print.min.js"></script>
      <script src="assets/js/POS/jszip.min.js"></script>
      <script src="assets/js/POS/pdfmake.min.js"></script>
      <!-- Plugin Js End -->
      <!-- Custom JS Start -->
      <script src="assets/js/POS/pos_script.js"></script>
      <script src="assets/js/POS/register_details.js"></script>
      <!-- Custom JS End -->

      <!-- ################ Script Start ################ -->
      <script>
        window.menu_objects = ['edit-1', 'add-3', 'edit-3', 'delete-3', 'list-3', 'edit-8', 'edit-10', 'edit-12', 'add-14', 'edit-14', 'delete-14', 'list-14', 'edit-19', 'edit-21', 'edit-23', 'add-25', 'edit-25', 'delete-25', 'list-25', 'view-30', 'add-32', 'edit-32', 'delete-32', 'list-32', 'add-37', 'edit-37', 'delete-37', 'list-37', 'add-42', 'edit-42', 'delete-42', 'list-42', 'view-47', 'add-49', 'edit-49', 'view-49', 'delete-49', 'list-49', 'upload_item-49', 'upload_photo-49', 'bulkdelete-49', 'print_barcode-49', 'print_label-49', 'add-60', 'edit-60', 'delete-60', 'list-60', 'add-65', 'edit-65', 'delete-65', 'list-65', 'add-70', 'edit-70', 'delete-70', 'list-70', 'add-75', 'edit-75', 'delete-75', 'list-75', 'add-80', 'edit-80', 'delete-80', 'list-80', 'filter-85', 'add-87', 'edit-87', 'delete-87', 'list-87', 'print-87', 'add-93', 'edit-93', 'view-93', 'delete-93', 'list-93', 'sms_send-93', 'add-100', 'edit-100', 'view-100', 'delete-100', 'list-100', 'print-100', 'installment_collection-100', 'due_installment-100', 'add-109', 'edit-109', 'view-109', 'delete-109', 'list-109', 'print-109', 'print_barcode-109', 'add-117', 'edit-117', 'view-117', 'delete-117', 'list-117', 'debit_supplier-117', 'credit_supplier-117', 'add-125', 'edit-125', 'view-125', 'delete-125', 'list-125', 'status_change-125', 'challan_invoice-125', 'add-133', 'edit-133', 'delete-133', 'list-133', 'pos-138', 'add-138', 'edit-138', 'delete-138', 'list-138', 'invoice-138', 'challan-138', 'delivery_status-138', 'add-147', 'edit-147', 'view-147', 'delete-147', 'list-147', 'bulk_upload-147', 'add-154', 'edit-154', 'delete-154', 'list-154', 'add-159', 'edit-159', 'delete-159', 'list-159', 'view-164', 'add-166', 'edit-166', 'view-166', 'delete-166', 'list-166', 'add-172', 'edit-172', 'delete-172', 'list-172', 'add-177', 'edit-177', 'delete-177', 'list-177', 'add-182', 'edit-182', 'delete-182', 'list-182', 'add-187', 'edit-187', 'delete-187', 'list-187', 'add-192', 'edit-192', 'delete-192', 'list-192', 'receipt-192', 'add-198', 'edit-198', 'delete-198', 'list-198', 'print-198', 'add-204', 'edit-204', 'view-204', 'delete-204', 'list-204', 'print-204', 'add-211', 'edit-211', 'view-211', 'delete-211', 'list-211', 'print-211', 'add-218', 'edit-218', 'delete-218', 'list-218', 'add-223', 'edit-223', 'delete-223', 'list-223', 'list-228', 'list-230', 'list-232', 'add-234', 'edit-234', 'delete-234', 'list-234', 'add-239', 'edit-239', 'view-239', 'delete-239', 'list-239', 'copy-239', 'print-239', 'update-247', 'register_report-249', 'customer_receive_report-249', 'daily_summary_report-249', 'sale_report-249', 'service_sale_report-249', 'employee_sale_report-249', 'product_sale_report-249', 'detailed_sale_report-249', 'stock_report-249', 'low_stock_report-249', 'profit_loss_report-249', 'product_profit_report-249', 'attendance_report-249', 'supplier_ledger-249', 'supplier_balance_report-249', 'customer_balance_report-249', 'customer_ledger-249', 'purchase_report-249', 'product_purchase_report-249', 'expense_report-249', 'income_report-249', 'salary_report-249', 'purchase_return_report-249', 'sale_return_report-249', 'damage_report-249', 'installment_report-249', 'installment_due_report-249', 'tax_report-249', 'servicing_report-249', 'item_tracing_report-249', 'price_history_report-249', 'cash_flow_report-249', 'add-282', 'edit-282', 'delete-282', 'list-282', 'add-287', 'edit-287', 'delete-287', 'list-287', 'change_profile-287', 'change_password-287', 'set_security_quatation-287', 'activate_user-287', 'deactivate_user-287', 'add-297', 'edit-297', 'delete-297', 'list-297', 'sort-302', 'add-304', 'edit-304', 'delete-304', 'list-304', 'status-75', 'print-75', 'add-311', 'edit-311', 'delete-311', 'list-311', 'zReport-249', 'discountPermission-287', 'uninstall-318', 'list-320', 'unreadList-320', 'marakAllAsRead-320', 'delete-320', 'add_dummy_data-325', 'whatsappSetting-327', 'deleteDummyData-329', 'wipeTransactionalData-331', 'wipeAllData-333', 'edit-335', 'salePriceModify-287', 'available_loyalty_point-249', 'usage_loyalty_point-249', 'add-1', 'edit-340', 'delete-340', 'list-340', 'combo_item_report-249', 'view_purchase_price-138', 'enable_disable_status-49', 'enable_disable_status-49', 'enable_disable_status-49'];
      </script>
    </body>

    </html>


    <!-- Start Last 10 Sale Modal -->
    <div id="show_last_ten_sales_modal" class="modal op_max_width_1050">
      <div class="modal-content modal-xl" id="modal_content_last_ten_sales">
        <h1 class="main_header">Sales <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="last_ten_sales_modal_info_holder">
          <div class="mobile_last_ten_sale op_display_flex op_justify_space_between op_margin_bottom_10">
            <input type="text" name="date_c" id="date_c" placeholder="Date" autocomplete="off"
              class="form-control date_sale op_width_100_p">
            <select class="select2 op_width_100_p" name="customer_c" id="customer_c">
              <option value="">Customer</option>
              <option value="1">Walk-in Customer </option>
              <option value="80">Mr.Thomas (01629171720)</option>
              <option value="81">Mr.Gabrial (+8801401748845)</option>
              <option value="82">Mr.Alex (01987434455)</option>
              <option value="83">Miss.Juniya (+8801302986732)</option>
              <option value="84">Mr.John (01987434455)</option>
              <option value="86">Miss.Victoriya (01987434455)</option>
              <option value="87">test (00909)</option>
              <option value="88">gg (1111)</option>
              <option value="89">ENAMUL HOQUE (09864468763)</option>
              <option value="90">???? (01773962493)</option>
              <option value="91">???? (01773962493)</option>
              <option value="92">Khaled Mahmud (01613100083)</option>
              <option value="93">Blanka (73737267183373)</option>
              <option value="94">????????? ?????? (77777)</option>
              <option value="95">reda (0660905432)</option>
              <option value="96">Ali (0660908756)</option>
              <option value="97">dmagi (0660905125)</option>
              <option value="98">Dmagi (0555443322)</option>
              <option value="99">smail (0660905135)</option>
              <option value="100">zihad (01718109798)</option>
              <option value="101">ergtretretretret (75785875785785)</option>
              <option value="102">Gg (987)</option>
              <option value="103">??? (090)</option>
            </select>
            <input autocomplete="off" type="text" id="invoice_c" name="invoice_c" placeholder="Invoice No"
              class="form-control op_width_100_p">
            <button class="search_sale bg__blue">
              Search </button>
          </div>

          <div class="last_ten_sales_holder fix">
            <div class="hold_sale_left fix hold_sale_left_height">
              <div class="hold_list_holder fix">
                <div class="header_row fix">
                  <div class="first_column column fix">Invoice No</div>
                  <div class="second_column column fix">Customer</div>
                  <div class="third_column column fix">Date Time</div>
                </div>
                <div class="detail_holder fix op_overflow_auto">
                  <div class="single_hold_sale fix">
                    <div class="first_column column fix">09</div>
                    <div class="second_column column fix">Walk-In-Customer</div>
                    <div class="third_column column fix">Table 8</div>
                  </div>
                  <div class="single_hold_sale fix">
                    <div class="first_column column fix">08</div>
                    <div class="second_column column fix">Walk-In-Customer</div>
                    <div class="third_column column fix">Table 7</div>
                  </div>
                  <div class="single_hold_sale fix">
                    <div class="first_column column fix">07</div>
                    <div class="second_column column fix">Walk-In-Customer</div>
                    <div class="third_column column fix">Table 7</div>
                  </div>
                </div>
              </div>
            </div>
            <div class="hold_sale_right fix hold_sale_right_height">
              <div class="top fix">
                <div class="top_middle fix">
                  <h1>Sale Details</h1>
                  <div class="waiter_customer_table fix">
                    <div class="fix op_sale_details_info">
                      <span class="op_font_weight_b">Invoice No: </span>
                      <span id="last_10_order_invoice_no"></span>
                    </div>
                    <div class="fix op_sale_details_info">
                      <span class="op_font_weight_b">Date Time: </span>
                      <span id="last_10_order_date_time"></span>
                    </div>
                  </div>
                  <div class="waiter_customer_table fix">
                    <div class="customer fix"><span class="op_font_weight_b">Customer: </span><span
                        class="op_display_none" id="last_10_customer_id"></span><span id="last_10_customer_name"></span>
                      <span id="last_ten_customer_mobile"></span>
                    </div>
                  </div>
                  <div class="item_modifier_details item_modifier_details_body fix">
                    <div class="modifier_item_header">
                      <div class="first_column_header column_hold">Item</div>
                      <div class="second_column_header column_hold">Price</div>
                      <div class="third_column_header column_hold">Qty</div>
                      <div class="forth_column_header column_hold">Discount</div>
                      <div class="fifth_column_header column_hold">Total</div>
                    </div>
                    <div class="modifier_item_details_holder last_10_sel_height">
                    </div>
                  </div>
                  <div class="item_modifier_details fix">
                    <div class="bottom_total_calculation_hold footer-content op_padding_10_important">
                      <div class="single_row">
                        <div class="label">Sub Total:</div>
                        <div class="third_column"> <span id="sub_total_show_last_10">0.00</span>
                          <span id="sub_total_last_10" class="op_display_none">0.00</span>
                          <span id="total_item_discount_last_10" class="op_display_none">0.00</span>
                          <span id="discounted_sub_total_amount_last_10" class="op_display_none">0.00</span>
                        </div>
                      </div>
                      <div class="single_row">
                        <div class="label">Total Item: <span id="total_items_in_cart_last_10">0.00</span> (<span
                            id="total_items_qty_in_cart_last_10">0.00</span>)</div>
                      </div>

                      <div class="single_row">
                        <div class="label">Tax:</div>
                        <span id="all_items_vat_last_10"
                          class="op_overflow_auto op_display_block op_height_20">0.00</span>
                      </div>
                      <div class="single_row">
                        <div class="label">Charge:</div>
                        <span id="delivery_charge_last_10">0.00</span>
                      </div>
                      <div class="single_row">
                        <div class="label">Discount:</div>
                        <span id="sub_total_discount_last_10">0.00</span>
                        (<span id="all_items_discount_last_10">0.00</span>)
                      </div>
                    </div>
                    <div class="total_payable">
                      <span class="label">Total Payable</span>
                      <span class="second_column"><span id="total_payable_last_10">0.00</span></span>
                    </div>
                    <div class="footer-content bottom_total_calculation_hold">
                      <div class="single_row">
                        <div class="label">Paid Amount:</div>
                        <div class="second_column"> <span id="paid_amount_last_10">0.00</span></div>
                      </div>
                      <div class="single_row">
                        <div class="label">Due Amount:</div>
                        <div class="third_column"> <span id="due_amount_last_10">0.00</span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="button_holder hold_sale_right_bottom">
                <button id="last_ten_print_invoice_button" class="bg__grey">Print Invoice</button>
                <button id="last_ten_print_challan_button" class="bg__grey">Print Challan</button>
                <button id="last_ten_sales_edit_buttons" class="bg_hold">Edit</button>
                <button id="last_ten_delete_button" class="bg__red">Delete</button>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>




    <input type="hidden" value="2" name="cal_open_status" id="cal_open_status">
    <div id="modify_button_tool_tip" class="op_choose_this">
      <h1 class="title op_choose_this_title">Choose This For:</h1>
      <p class="op_choose_this_for">1. Add New Item</p>
      <p class="op_choose_this_for">2. Change Table</p>
      <p class="op_choose_this_for">3. Change anything in an Order</p>
    </div>
    <div id="direct_invoice_button_tool_tip" class="op_choose_this">
      <h1 class="title op_choose_this_title">For Fast Food Restaurants</h1>
    </div>

    <!-- New Custom Animated Modal Start -->
    <div class="pos__modal__overlay"></div>
    <div class="pos__modal__overlay2"></div>
    <!-- New Custom Animated Modal End -->

    <!-- Discount Modal Start -->
    <div id="discount_modal" class="modal">
      <div class="modal-content">
        <h1 class="modal-header-custom">Discount <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="discunt_check_modal">
            <label>Discount Permission Code</label>
            <input type="text" onfocus="select()" class="form-control discount_permission_code" value=""
              placeholder="Discount Permission Code">
            <div class="alert pos_error_counter alert-error error-msg">
              <p class="discount_err_message"></p>
            </div>
          </div>
          <div class="easy-get discount_field">
            <label>Discount in percentage (eg: 10%)</label>
            <input type="text" onfocus="select()" class="form-control total_disc easy-put" placeholder="eg: 10 or 10%"
              id="sub_total_discount">
            <span class="ir_display_none" id="sub_total_discount_amount"></span>
          </div>
        </div>
        <div class="btn__box">
          <button type="button" id="submit_discount_custom" class="bg__blue px-20 bg__blue">Submit</button>
          <button type="button" id="cancel_discount_modal" class="cancel px-20 bg__red">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Discount Modal End -->

    <!-- Finalize Discount Modal Start -->
    <div id="finalize_discount_modal" class="modal">
      <div class="modal-content">
        <h1 class="modal-header-custom">Discount <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="discunt_check_modal px_10">
            <label>Discount Permission Code</label>
            <input type="text" onfocus="select()" class="form-control discount_permission_code_f" value=""
              placeholder="Discount Permission Code">
            <div class="alert pos_error_counter alert-error error-msg">
              <p class="discount_err_message"></p>
            </div>
          </div>

          <div class="px_10 margin-top-10">
            <label>Value (eg: 10 or 30)</label>
            <input type="text" class="integerchk" placeholder="eg: 10 or 30" id="sub_total_discount_finalize">
            <span class="ir_display_none"></span>
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="finalize_dis_submit bg__blue">Submit</button>
          <button type="button" class="cancel_modal bg__red remove_discount">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Finalize Discount Modal End -->


    <!-- Finalize Cart Details -->
    <div id="finalize_cart_details_modal" class="modal">
      <input type="hidden" id="cart_modal_total_item" value="">
      <input type="hidden" id="cart_modal_total_subtotal" value="">
      <input type="hidden" id="cart_modal_total_discount" value="">
      <input type="hidden" id="cart_modal_total_discount_all" value="">
      <input type="hidden" id="cart_modal_total_discount_for_subtotal" value="">
      <input type="hidden" id="cart_modal_total_tax" value="">
      <input type="hidden" id="cart_modal_total_charge" value="">
      <input type="hidden" id="cart_modal_total_tips" value="">
      <input type="hidden" id="cart_modal_total_rounding" value="">
      <!-- Modal content -->
      <div class="modal-content">
        <h1 class="modal-header-custom">
          Cart Details <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="modal-body-content">
          <div class="item-cart-details-item-list item_cart_details_header">
            <span><b>Item</b></span>
            <span class="text-center"><b>Price</b></span>
            <span class="text-center"><b>Quantity</b></span>
            <span class="text-center"><b>Discount</b></span>
            <span class="text-center"><b>Subtotal</b></span>
          </div>
          <div class="finalize_item_details">
          </div>
          <div class="item-cart-details-item-list cart_details_footer">
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="cancel_modal bg__red">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Finalize Cart Details End -->

    <!-- Open Service Charge Modal Start -->
    <div id="charge_modal" class="modal">
      <div class="modal-content">
        <h1 class="modal-header-custom">
          Charge <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="form-group mt-3">
            <!--  -->
            <label for="charge_type">Type</label>
            <select id="charge_type" class="select2">
              <option value="delivery">Delivery</option>
              <option value="service">Service</option>
            </select>
          </div>
          <div class="form-group margin-top-15 easy-get">
            <label>Amount</label>
            <input type="text" autocomplete="off" class="form-control easy-put integerchk" placeholder="Amount"
              value="0.00" id="delivery_charge">
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="submit bg__blue px-20 delivery_charge_submit">Submit</button>
          <button type="button" class="cancel bg__red px-20">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Open Service Charge Modal End -->




    <!-- Note Modal Start -->
    <div id="note_modal" class="modal">
      <div class="modal-content">
        <h1 class="modal-header-custom">
          Note <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="op_margin_top_10">
            <label for="note">Note</label>
            <textarea class="op_height_80" autocomplete="off" placeholder="Note" id="note"></textarea>
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="submit bg__blue px-20">Submit</button>
          <button type="button" class="cancel bg__red px-20">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Note Modal End -->


    <!-- Coupon Discount Modal Start -->
    <div id="coupon_discount" class="modal">
      <div class="modal-content">
        <h1 class="modal-header-custom">
          Discount coupon (on entire sale) <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="op_margin_top_10 form-group">
            <label for="coupon_code">Coupon Code</label>
            <input type="text" class="op_height_80 form-control" name="coupon_code" autocomplete="off"
              placeholder="Coupon Code" id="coupon_code">
          </div>
          <div class="alert pos_error_counter alert-error error-msg">
            <p class="coupon_err_message"></p>
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="bg__blue px-20 coupon_code_submit">Submit</button>
          <button type="button" class="cancel bg__red px-20">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Coupon Discount End -->

    <!-- Ragister Modal Start -->
    <div class="cus_pos_modal modal" id="register_modal">
      <h1 class="main_header">
        Register Details <a href="javascript:void(0)" class="alertCloseIcon pos__modal__close">
          <i data-feather="x"></i>
        </a>
      </h1>

      <div class="pos__modal__body scrollbar-macosx">
        <div class="default_inner_body" id="register_details_content_o">
          <input type="hidden" class="datatable_name" data-title="Register Details" data-id_name="datatable">
          <div class="html_content">
          </div>
        </div>
      </div>
      <footer class="pos__modal__footer">
        <div class="right_box">
          <button type="button" id="register_close" class="btn bg__grey">Close Register</button>
          <button type="button" class="modal_hide_register btn bg__red">Cancel</button>
        </div>
      </footer>
    </div>
    <!-- Ragister Modal End -->

    <!-- Tax Modal Start -->
    <div id="tax_modal" class="modal">
      <div class="modal-content">
        <h1 class="modal-header-custom">Tax Details <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="content">
            <table class="tax-modal-table">
              <thead>
                <tr>
                  <th>Tax Name</th>
                  <th>Tax Percent</th>
                </tr>
              </thead>
              <tbody id="tax_row_show">

              </tbody>
            </table>
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="cancel bg__red">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Tax Modal End -->



    <!-- Promo Modal -->
    <div id="show_all_promo" class="modal">
      <div class="modal-content modal_content_hold_sales">
        <h1 class="main_header">Promotion Items <a href="javascript:void(0)" class="alertCloseIcon">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="main-content-wrapper">
          <div class="promo_modal_wrap">
            <div class="promo_modal_header">
              <div class="promo-h-item">
                <h5>Title</h5>
              </div>
              <div class="promo-h-item">
                <h5>Type</h5>
              </div>
              <div class="promo-h-item">
                <h5>Item</h5>
              </div>
              <div class="promo-h-item">
                <h5>Discount</h5>
              </div>
            </div>
            <div class="promo_modal_body">
            </div>
          </div>
        </div>
        <div class="btn__box">
          <button type="button" class="cancel bg__red">Cancel</button>
        </div>
      </div>
    </div>
    <!-- Promo Modal End -->

    <!-- POS Sidebar Start -->
    <aside id="pos__sidebar">
      <div class="brand__logo op_center">
        <a href="#">
          <img
            src="assets/images/pos/1c89efb05f2bda6fb4e61365e3bb61dd.png"
            width="50" alt="Logo Image">
        </a>
      </div>
      <ul class="pos__menu__list">
        <li class="have_sub_menu2">
          <a href="#">
            <iconify-icon icon="solar:home-broken" width="30"></iconify-icon>
            <span>
              Home </span>
          </a>
        </li>



        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:widget-2-broken" width="30"></iconify-icon>
            <span>Outlets</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-25" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Outlet </a>
            </li>
            <li data-access="list-25" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Outlet </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:cart-large-broken" width="30"></iconify-icon>
            <span>Sales</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="pos-138" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:cart-large-broken" width="15"></iconify-icon>
                POS Screen </a>
            </li>
            <li data-access="list-138" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Sale </a>
            </li>
            <li data-access="add-147" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Customer </a>
            </li>
            <li data-access="list-147" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Customer </a>
            </li>
            <li data-access="add-154" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Customer Group </a>
            </li>
            <li data-access="list-154" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Customer Group </a>
            </li>
            <li data-access="add-133" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Promotion </a>
            </li>
            <li data-access="list-133" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Promotion </a>
            </li>
            <li data-access="add-159" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Delivery Partner </a>
            </li>
            <li data-access="list-159" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Delivery Partner </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:list-heart-broken" width="30"></iconify-icon>
            <span>Item/Product</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-49" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Item </a>
            </li>
            <li data-access="list-49" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Item </a>
            </li>
            <li data-access="list-49" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                Bulk Item Update </a>
            </li>
            <li data-access="add-60" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Item Category </a>
            </li>
            <li data-access="list-60" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Item Category </a>
            </li>
            <li data-access="add-304" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Rack </a>
            </li>
            <li data-access="list-304" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Rack </a>
            </li>

            <li data-access="add-65" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Unit </a>
            </li>
            <li data-access="list-65" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Unit </a>
            </li>
            <li data-access="add-70" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Variation Attribute </a>
            </li>
            <li data-access="list-70" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Variation Attribute </a>
            </li>
            <li data-access="add-297" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Brand </a>
            </li>
            <li data-access="list-297" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Brand </a>
            </li>
          </ul>
        </li>
        <li data-access="view-30" class="have_sub_menu2 menu_assign_class">
          <a href="home.jsp">
            <iconify-icon icon="solar:chart-2-broken" width="30"></iconify-icon>
            <span>&nbsp;Dashboard</span>
          </a>
        </li>
        <li data-access="view-164" class="have_sub_menu2">
          <a href="#">
            <iconify-icon icon="solar:database-broken" width="30"></iconify-icon>
            <span>
              Stock </span>
          </a>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:archive-broken" width="30"></iconify-icon>
            <span>Purchase</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-109" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Purchase </a>
            </li>
            <li data-access="list-109" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Purchase </a>
            </li>
            <li data-access="add-117" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Supplier/addEditSupplier">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Supplier </a>
            </li>
            <li data-access="list-117" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Supplier/suppliers">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Supplier </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:card-recive-broken" width="30"></iconify-icon>
            <span>Customer Receive</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-198" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Customer_due_receive/addCustomerDueReceive">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Customer Receive </a>
            </li>
            <li data-access="list-198" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Customer_due_receive/customerDueReceives">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Customer Receive </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:card-send-broken" width="30"></iconify-icon>
            <span>Supplier Payment</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-192" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/SupplierPayment/addSupplierPayment">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Supplier Payment </a>
            </li>
            <li data-access="list-192" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/SupplierPayment/supplierPayments">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Supplier Payment </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:wallet-money-broken" width="30"></iconify-icon>
            <span>Accounting</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-218" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/PaymentMethod/addEditPaymentMethod">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Account </a>
            </li>
            <li data-access="list-218" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/PaymentMethod/paymentMethods">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Account </a>
            </li>
            <li data-access="add-223" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Deposit/addEditDeposit">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Deposit Or Withdraw </a>
            </li>
            <li data-access="list-223" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Deposit/deposits">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Deposit Or Withdraw </a>
            </li>
            <li data-access="list-228" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Accounting/balanceStatement">
                <iconify-icon icon="solar:notebook-broken" width="18"></iconify-icon>
                Balance Statement </a>
            </li>
            <li data-access="list-230" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Accounting/trialBalance">
                <iconify-icon icon="solar:book-2-broken" width="18"></iconify-icon>
                Trial Balance </a>
            </li>
            <li data-access="list-232" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Accounting/balanceSheet">
                <iconify-icon icon="solar:notebook-bookmark-broken" width="18"></iconify-icon>
                Balance Sheet </a>
            </li>
          </ul>
        </li>
        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:clock-square-broken" width="30"></iconify-icon>
            <span>Attendance</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-234" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Attendance/addEditAttendance">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Attendance </a>
            </li>
            <li data-access="list-234" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Attendance/attendances">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Attendance </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:diagram-down-broken" width="30"></iconify-icon>
            <span>Report</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="register_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/registerReport">
                <iconify-icon icon="solar:book-broken" width="18"></iconify-icon>
                Register Report </a>
            </li>
            <li data-access="zReport-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/zReport">
                <iconify-icon icon="solar:bookmark-square-minimalistic-broken" width="18"></iconify-icon>
                Z Report </a>
            </li>
            <li data-access="daily_summary_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/dailySummaryReport">
                <iconify-icon icon="solar:clipboard-list-broken" width="18"></iconify-icon>
                Daily Summary Report </a>
            </li>
            <li data-access="sale_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/saleReport">
                <iconify-icon icon="solar:cart-check-broken" width="18"></iconify-icon>
                Sale Report </a>
            </li>
            <li data-access="service_sale_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/serviceSaleReport">
                <iconify-icon icon="solar:hand-stars-broken" width="18"></iconify-icon>
                Service Sale Report </a>
            </li>
            <li data-access="service_sale_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/comboServiceReport">
                <iconify-icon icon="solar:hand-stars-broken" width="18"></iconify-icon>
                Combo Service Report </a>
            </li>
            <li data-access="stock_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/stockReport">
                <iconify-icon icon="solar:atom-broken" width="18"></iconify-icon>
                Stock Report </a>
            </li>
            <li data-access="employee_sale_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/employeeSaleReport">
                <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                Employee Sale Report </a>
            </li>
            <li data-access="customer_receive_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/customerDueReceiveReport">
                <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                Customer Receive Report </a>
            </li>
            <li data-access="attendance_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/attendanceReport">
                <iconify-icon icon="solar:clock-square-broken" width="18"></iconify-icon>
                Attendance Report </a>
            </li>
            <li data-access="product_profit_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/productProfitReport">
                <iconify-icon icon="solar:dollar-broken" width="18"></iconify-icon>
                Product Profit Report </a>
            </li>
            <li data-access="supplier_ledger-249" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                Supplier Ledger </a>
            </li>
            <li data-access="supplier_balance_report-249" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:banknote-broken" width="18"></iconify-icon>
                Supplier Balance Report </a>
            </li>

            <li data-access="customer_ledger-249" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                Customer Ledger </a>
            </li>
            <li data-access="customer_balance_report-249" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:banknote-broken" width="18"></iconify-icon>
                Customer Balance Report </a>
            </li>
            <li data-access="servicing_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/servicingReport">
                <iconify-icon icon="solar:sunrise-broken" width="18"></iconify-icon>
                Servicing Report </a>
            </li>
            <li data-access="product_sale_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/productSaleReport">
                <iconify-icon icon="solar:list-heart-broken" width="18"></iconify-icon>
                Product Sale Report </a>
            </li>


            <li data-access="tax_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/taxReport">
                <iconify-icon icon="solar:target-broken" width="18"></iconify-icon>
                Tax Report </a>
            </li>
            <li data-access="detailed_sale_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/detailedSaleReport">
                <iconify-icon icon="solar:cart-check-broken" width="18"></iconify-icon>
                Detailed Sale Report </a>
            </li>

            <li data-access="low_stock_report-249" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:database-broken" width="18"></iconify-icon>
                Low Stock Report </a>
            </li>
            <li data-access="profit_loss_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/profitLossReport">
                <iconify-icon icon="solar:money-bag-broken" width="18"></iconify-icon>
                Profit Loss Report </a>
            </li>
            <li data-access="purchase_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/purchaseReportByDate">
                <iconify-icon icon="solar:archive-broken" width="18"></iconify-icon>
                Purchase Report </a>
            </li>
            <li data-access="product_purchase_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/productPurchaseReport">
                <iconify-icon icon="solar:archive-broken" width="18"></iconify-icon>
                Product Purchase Report </a>
            </li>
            <li data-access="expense_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/expenseReport">
                <iconify-icon icon="solar:rewind-forward-broken" width="18"></iconify-icon>
                Expense Report </a>
            </li>
            <li data-access="income_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/incomeReport">
                <iconify-icon icon="solar:rewind-back-broken" width="18"></iconify-icon>
                Income Report </a>
            </li>
            <li data-access="salary_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/salaryReport">
                <iconify-icon icon="solar:transmission-broken" width="18"></iconify-icon>
                Salary Report </a>
            </li>
            <li data-access="purchase_return_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/purchaseReturnReport">
                <iconify-icon icon="solar:multiple-forward-right-broken" width="18"></iconify-icon>
                Purchase Return Report </a>
            </li>
            <li data-access="sale_return_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/saleReturnReport">
                <iconify-icon icon="solar:multiple-forward-left-broken" width="18"></iconify-icon>
                Sale Return Report </a>
            </li>
            <li data-access="damage_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/damageReport">
                <iconify-icon icon="solar:trash-bin-minimalistic-broken" width="18"></iconify-icon>
                Damage Report </a>
            </li>
            <li data-access="installment_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/installmentReport">
                <iconify-icon icon="solar:layers-broken" width="18"></iconify-icon>
                Installment Report </a>
            </li>
            <li data-access="installment_due_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/installmentDueReport">
                <iconify-icon icon="solar:layers-broken" width="18"></iconify-icon>
                Installment Due Report </a>
            </li>
            <li data-access="item_tracing_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/itemMoving">
                <iconify-icon icon="solar:list-heart-broken" width="18"></iconify-icon>
                Item Movement Report </a>
            </li>
            <li data-access="price_history_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/priceHistory">
                <iconify-icon icon="solar:chat-round-money-broken" width="18"></iconify-icon>
                Price History Report </a>
            </li>
            <li data-access="cash_flow_report-249" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:hand-money-broken" width="18"></iconify-icon>
                Cash Flow Report </a>
            </li>

            <li data-access="available_loyalty_point-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/availableLoyaltyPointReport">
                <iconify-icon icon="solar:diploma-broken" width="18"></iconify-icon>
                Available Loyalty Point Report </a>
            </li>
            <li data-access="usage_loyalty_point-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Report/usageLoyaltyPointReport">
                <iconify-icon icon="solar:diploma-verified-broken" width="18"></iconify-icon>
                Usage Loyalty Point Report </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:rewind-forward-broken" width="30"></iconify-icon>
            <span>Expense</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-172" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Expense </a>
            </li>
            <li data-access="list-172" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Expense </a>
            </li>
            <li data-access="add-177" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Expense Category </a>
            </li>
            <li data-access="list-177" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Expense Category </a>
            </li>
          </ul>
        </li>
        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:rewind-back-broken" width="30"></iconify-icon>
            <span>Income</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-182" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Income </a>
            </li>
            <li data-access="list-182" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Income </a>
            </li>
            <li data-access="add-187" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Income Item </a>
            </li>
            <li data-access="list-187" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Income Item </a>
            </li>
          </ul>
        </li>


        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:multiple-forward-left-broken" width="30"></iconify-icon>
            <span>Sale Return</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-204" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Sale Return </a>
            </li>
            <li data-access="list-204" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Sale Return </a>
            </li>
          </ul>
        </li>
        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:multiple-forward-right-broken" width="30"></iconify-icon>
            <span>Purchase Return</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-211" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase_return/addEditPurchaseReturn">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Purchase Return </a>
            </li>
            <li data-access="list-211" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase_return/purchaseReturns">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Purchase Return </a>
            </li>
          </ul>
        </li>


        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:settings-broken" width="30"></iconify-icon>
            <span>Setting</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="edit-1" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:settings-broken" width="18"></iconify-icon>
                Setting </a>
            </li>
            <li data-access="whatsappSetting-327" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:settings-minimalistic-broken" width="18"></iconify-icon>
                WhatsApp Setting </a>
            </li>
            <li data-access="add-3" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Denomination </a>
            </li>
            <li data-access="list-3" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Denominations </a>
            </li>
            <li data-access="add-340" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Counter </a>
            </li>
            <li data-access="list-340" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Counter </a>
            </li>
            <li data-access="edit-8" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Tax_setting/tax">
                <iconify-icon icon="solar:target-broken" width="18"></iconify-icon>
                Tax Setting </a>
            </li>
            <li data-access="edit-10" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:letter-unread-broken" width="18"></iconify-icon>
                Email Setting </a>
            </li>
            <li data-access="edit-12" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Short_message_service/smsService">
                <iconify-icon icon="solar:letter-opened-broken" width="18"></iconify-icon>
                SMS Settings </a>
            </li>
            <li data-access="edit-14" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Printer/printerSetup">
                <iconify-icon icon="solar:printer-broken" width="18"></iconify-icon>
                Printer Setup </a>
            </li>
            <li data-access="edit-23" class="menu_assign_class d-block">
              <a href="#">
                <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                White Label </a>
            </li>
            <li data-access="edit-23" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                Login Page </a>
            </li>

            <li data-access="edit-335" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:password-broken" width="18"></iconify-icon>
                Payment Getway </a>
            </li>
            <li data-access="add-311" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Multiple Currency </a>
            </li>
            <li data-access="list-311" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Multiple Currency </a>
            </li>
            <li data-access="add_dummy_data-325" class="menu_assign_class">
              <a class="add_dummy_data" href="#">
                <iconify-icon icon="solar:import-broken" width="18"></iconify-icon>
                Import Dummy Data </a>
            </li>

            <li data-access="deleteDummyData-329" class="menu_assign_class">
              <a class="delete" href="#">
                <iconify-icon icon="solar:trash-bin-2-broken" width="18"></iconify-icon>
                Delete Dummy Data </a>
            </li>
            <li data-access="wipeTransactionalData-331" class="menu_assign_class">
              <a class="delete" href="#">
                <iconify-icon icon="solar:transfer-horizontal-broken" width="18"></iconify-icon>
                Wipe Transactional Data </a>
            </li>
            <li data-access="wipeAllData-333" class="menu_assign_class">
              <a class="delete" href="#">
                <iconify-icon icon="solar:translation-broken" width="18"></iconify-icon>
                Wipe All Data </a>
            </li>
          </ul>
        </li>


        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:shield-keyhole-minimalistic-broken" width="30"></iconify-icon>
            <span>Authentication</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-282" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Role </a>
            </li>
            <li data-access="list-282" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Role </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Employee </a>
            </li>
            <li data-access="list-287" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Employee </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:user-check-broken" width="18"></iconify-icon>
                Change Profile </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:key-broken" width="18"></iconify-icon>
                Change Password </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="#">
                <iconify-icon icon="solar:question-circle-broken" width="18"></iconify-icon>
                Set Security Question </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:layers-broken" width="30"></iconify-icon>
            <span>Installment Sale</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-93" data-access="add-244" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Installment/addEditCustomer">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Installment Customer </a>
            </li>
            <li data-access="list-93" data-access="add-244" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Installment/customers">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Installment Customer </a>
            </li>
            <li data-access="add-100" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Installment/addEditInstallmentSale">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Installment Sale </a>
            </li>
            <li data-access="list-100" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Installment/installmentSales">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Installment Sale </a>
            </li>
            <li data-access="installment_collection-100" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Installment/installmentCollections">
                <iconify-icon icon="solar:copyright-broken" width="18"></iconify-icon>
                Installment Collection </a>
            </li>
            <li data-access="due_installment-100" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Installment/listDueInstallment">
                <iconify-icon icon="solar:sale-broken" width="18"></iconify-icon>
                List Due Installment </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:sunset-broken" width="30"></iconify-icon>
            <span>Warranty/Servicing</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-75" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Servicing/addEditServicing">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Servicing </a>
            </li>
            <li data-access="list-75" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Servicing/listServicing">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Servicing </a>
            </li>

            <li data-access="filter-85" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Warranty/checkWarranty">
                <iconify-icon icon="solar:card-search-broken" width="18"></iconify-icon>
                Warranty Checking </a>
            </li>
            <li data-access="add-80" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/WarrantyProducts/addEditWarrantyProduct">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Warranty Products </a>
            </li>
            <li data-access="list-80" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/WarrantyProducts/listWarrantyProduct">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Warranty Products </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:transmission-broken" width="30"></iconify-icon>
            <span>Salary/Payroll</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="list-87" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Salary/generate">
                <iconify-icon icon="solar:transmission-broken" width="18"></iconify-icon>
                List Salary/Payroll </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:cassette-broken" width="30"></iconify-icon>
            <span>Fixed Assets</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-32" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_assets/addEditItem">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Item </a>
            </li>
            <li data-access="list-32" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_assets/listItem">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Item </a>
            </li>
            <li data-access="add-37" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_asset_stock/addEditStock">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Stock In </a>
            </li>
            <li data-access="list-37" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_asset_stock/listStock">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Stock In </a>
            </li>
            <li data-access="add-42" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_asset_stock_out/addEditStockOut">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Stock Out </a>
            </li>
            <li data-access="list-42" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_asset_stock_out/listStockOut">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Stock Out </a>
            </li>
            <li data-access="view-47" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Fixed_asset_stock/stocks">
                <iconify-icon icon="solar:database-broken" width="18"></iconify-icon>
                Stocks </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:ruler-pen-broken" width="30"></iconify-icon>
            <span>Quotation</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-239" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Quotation/addEditQuotation">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Quotation </a>
            </li>
            <li data-access="list-239" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Quotation/quotations">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Quotation </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:bicycling-round-broken" width="30"></iconify-icon>
            <span>Transfer</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-125" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Transfer/addEditTransfer">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Transfer </a>
            </li>
            <li data-access="list-125" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Transfer/transfers">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Transfer </a>
            </li>
          </ul>
        </li>

        <li class="have_sub_menu">
          <a href="javascript:void(0)">
            <iconify-icon icon="solar:trash-bin-minimalistic-broken" width="30"></iconify-icon>
            <span>Damage</span>
          </a>
          <div class="triangle"></div>
          <ul class="sub__menu__list">
            <li data-access="add-166" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Damage/addEditDamage">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Damage </a>
            </li>
            <li data-access="list-166" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Damage/damages">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Damage </a>
            </li>
          </ul>
        </li>
        <li data-access="update-247" class="have_sub_menu2">
          <a href="https://doorsoft-demo.com/off_pos/all_types/Update/index">
            <iconify-icon icon="solar:cloud-download-broken" width="30"></iconify-icon>
            <span>Update Software</span>
          </a>
        </li>
        <li data-access="update-318" class="have_sub_menu2">
          <a href="https://doorsoft-demo.com/off_pos/all_types/Update/UninstallLicense">
            <iconify-icon icon="solar:cloud-cross-broken" width="30"></iconify-icon>
            <span>Uninstall License</span>
          </a>
        </li>
      </ul>
    </aside>
    <div class="sidebar_sub_menu">
    </div>
    <!-- TOP Start-->
    <script src="assets/js/POS/jquery-3.3.1.min.js"></script>
    <script src="assets/js/POS/jquery-ui.js"></script>
    <script src="assets/js/POS/jquery.slimscroll.min.js"></script>
    <script src="assets/js/POS/sweetalert2-new.all.min.js"></script>
    <script
      src="assets/js/POS/select2.full.min.js"></script>
    <script src="assets/js/POS/calculator.js"></script>
    <script
      src="assets/js/POS/jquery.keyboard.js"></script>
    <script
      src="assets/js/POS/jquery.mousewheel.js"></script>
    <script
      src="assets/js/POS/jquery.keyboard.extension-typing.js"></script>
    <script
      src="assets/js/POS/jquery.keyboard.extension-autocomplete.js"></script>
    <script
      src="assets/js/POS/jquery.keyboard.extension-caret.js"></script>
    <!-- TOP End-->
    <script src="assets/js/POS/toastr.js"></script>
    <script src="assets/js/POS/marquee.js"></script>
    <script src="assets/js/POS/datable.js"></script>
    <script src="assets/js/POS/jquery.cookie.js"></script>
    <script src="assets/js/POS/feather.min.js"></script>
    <script src="assets/js/POS/howler.min.js"></script>
    <script
      src="assets/js/POS/perfect-scrollbar.min.js"></script>
    <script src="assets/js/POS/popper.js"></script>
    <script src="assets/js/POS/tippy.js"></script>
    <script
      src="assets/js/POS/datepicker.js"></script>
    <script
      src="assets/js/POS/dataTables.buttons.min.js"></script>
    <script
      src="assets/js/POS/jquery.dataTables.min.js"></script>
    <script
      src="assets/js/POS/dataTables.bootstrap.min.js"></script>
    <script
      src="assets/js/POS/dataTables.bootstrap4.min.js"></script>
    <script
      src="assets/js/POS/dataTables.buttons.min.js"></script>
    <script
      src="assets/js/POS/buttons.html5.min.js"></script>
    <script
      src="assets/js/POS/buttons.print.min.js"></script>
    <script src="assets/js/POS/jszip.min.js"></script>
    <script src="assets/js/POS/pdfmake.min.js"></script>
    <!-- Plugin Js End -->
    <!-- Custom JS Start -->
    <script src="assets/js/POS/pos_script.js"></script>
    <script src="assets/js/POS/register_details.js"></script>
    <!-- Custom JS End -->

    <!-- ################ Script Start ################ -->
    <script>
      window.menu_objects = ['edit-1', 'add-3', 'edit-3', 'delete-3', 'list-3', 'edit-8', 'edit-10', 'edit-12', 'add-14', 'edit-14', 'delete-14', 'list-14', 'edit-19', 'edit-21', 'edit-23', 'add-25', 'edit-25', 'delete-25', 'list-25', 'view-30', 'add-32', 'edit-32', 'delete-32', 'list-32', 'add-37', 'edit-37', 'delete-37', 'list-37', 'add-42', 'edit-42', 'delete-42', 'list-42', 'view-47', 'add-49', 'edit-49', 'view-49', 'delete-49', 'list-49', 'upload_item-49', 'upload_photo-49', 'bulkdelete-49', 'print_barcode-49', 'print_label-49', 'add-60', 'edit-60', 'delete-60', 'list-60', 'add-65', 'edit-65', 'delete-65', 'list-65', 'add-70', 'edit-70', 'delete-70', 'list-70', 'add-75', 'edit-75', 'delete-75', 'list-75', 'add-80', 'edit-80', 'delete-80', 'list-80', 'filter-85', 'add-87', 'edit-87', 'delete-87', 'list-87', 'print-87', 'add-93', 'edit-93', 'view-93', 'delete-93', 'list-93', 'sms_send-93', 'add-100', 'edit-100', 'view-100', 'delete-100', 'list-100', 'print-100', 'installment_collection-100', 'due_installment-100', 'add-109', 'edit-109', 'view-109', 'delete-109', 'list-109', 'print-109', 'print_barcode-109', 'add-117', 'edit-117', 'view-117', 'delete-117', 'list-117', 'debit_supplier-117', 'credit_supplier-117', 'add-125', 'edit-125', 'view-125', 'delete-125', 'list-125', 'status_change-125', 'challan_invoice-125', 'add-133', 'edit-133', 'delete-133', 'list-133', 'pos-138', 'add-138', 'edit-138', 'delete-138', 'list-138', 'invoice-138', 'challan-138', 'delivery_status-138', 'add-147', 'edit-147', 'view-147', 'delete-147', 'list-147', 'bulk_upload-147', 'add-154', 'edit-154', 'delete-154', 'list-154', 'add-159', 'edit-159', 'delete-159', 'list-159', 'view-164', 'add-166', 'edit-166', 'view-166', 'delete-166', 'list-166', 'add-172', 'edit-172', 'delete-172', 'list-172', 'add-177', 'edit-177', 'delete-177', 'list-177', 'add-182', 'edit-182', 'delete-182', 'list-182', 'add-187', 'edit-187', 'delete-187', 'list-187', 'add-192', 'edit-192', 'delete-192', 'list-192', 'receipt-192', 'add-198', 'edit-198', 'delete-198', 'list-198', 'print-198', 'add-204', 'edit-204', 'view-204', 'delete-204', 'list-204', 'print-204', 'add-211', 'edit-211', 'view-211', 'delete-211', 'list-211', 'print-211', 'add-218', 'edit-218', 'delete-218', 'list-218', 'add-223', 'edit-223', 'delete-223', 'list-223', 'list-228', 'list-230', 'list-232', 'add-234', 'edit-234', 'delete-234', 'list-234', 'add-239', 'edit-239', 'view-239', 'delete-239', 'list-239', 'copy-239', 'print-239', 'update-247', 'register_report-249', 'customer_receive_report-249', 'daily_summary_report-249', 'sale_report-249', 'service_sale_report-249', 'employee_sale_report-249', 'product_sale_report-249', 'detailed_sale_report-249', 'stock_report-249', 'low_stock_report-249', 'profit_loss_report-249', 'product_profit_report-249', 'attendance_report-249', 'supplier_ledger-249', 'supplier_balance_report-249', 'customer_balance_report-249', 'customer_ledger-249', 'purchase_report-249', 'product_purchase_report-249', 'expense_report-249', 'income_report-249', 'salary_report-249', 'purchase_return_report-249', 'sale_return_report-249', 'damage_report-249', 'installment_report-249', 'installment_due_report-249', 'tax_report-249', 'servicing_report-249', 'item_tracing_report-249', 'price_history_report-249', 'cash_flow_report-249', 'add-282', 'edit-282', 'delete-282', 'list-282', 'add-287', 'edit-287', 'delete-287', 'list-287', 'change_profile-287', 'change_password-287', 'set_security_quatation-287', 'activate_user-287', 'deactivate_user-287', 'add-297', 'edit-297', 'delete-297', 'list-297', 'sort-302', 'add-304', 'edit-304', 'delete-304', 'list-304', 'status-75', 'print-75', 'add-311', 'edit-311', 'delete-311', 'list-311', 'zReport-249', 'discountPermission-287', 'uninstall-318', 'list-320', 'unreadList-320', 'marakAllAsRead-320', 'delete-320', 'add_dummy_data-325', 'whatsappSetting-327', 'deleteDummyData-329', 'wipeTransactionalData-331', 'wipeAllData-333', 'edit-335', 'salePriceModify-287', 'available_loyalty_point-249', 'usage_loyalty_point-249', 'add-1', 'edit-340', 'delete-340', 'list-340', 'combo_item_report-249', 'view_purchase_price-138', 'enable_disable_status-49', 'enable_disable_status-49', 'enable_disable_status-49'];
    </script>
</body>

</html>