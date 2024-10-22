<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Off POS | Retail POS and Stock Software</title>
  <!-- Favicon -->
  <link rel="shortcut icon"
    href="https://doorsoft-demo.com/off_pos/all_types/uploads/site_settings/6fd15bfae8a4874f86610e0279ad9e15.ico"
    type="image/x-icon">
  <!-- Iconify Font -->
  <script src="https://doorsoft-demo.com/off_pos/all_types/assets/iconify/js/iconify.min.js"></script>
  <!-- Font Awesome 6.5.1-->
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/assets/plugins/fontawesome-free-6.5.1-web/css/all.min.css?var=1.6">
  <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/style.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/assets/plugins/local/google_font_POS.css?var=1.6" type="text/css">
  <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/font_awesome_all.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/sweetalert2-new.min.css?var=1.6" type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/lib/perfect-scrollbar/dist/perfect-scrollbar.css?var=1.6">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/assets/bower_components/select2/dist/css/select2.min.css?var=1.6"
    type="text/css">
  <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/jquery-ui.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/virtual_keyboard/keyboard.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/custom_theme.css?var=1.6" type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/main_screen.css?var=1.6" type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/pos-screen-loader.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/register_details.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/customModal.css?var=1.6" type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/jquery.dataTables.min.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/buttons.dataTables.min.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/custom_check_box.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/main_screen_finalize.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/main_screen_responsive.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/js/perfect-scrollbar.css?var=1.6"
    type="text/css">
  <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/notify/toastr.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/sass/animate.min.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/lib/date/datepicker.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/sass/scale.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/sass/tippy.css?var=1.6"
    type="text/css">
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/numpad/jquery.numpad.css?var=1.6">
  <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/preloader.css?var=1.6">
  <!-- POS Screen Final Responsive CSS -->
  <link rel="stylesheet"
    href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/pos_responsive.css?var=1.6" type="text/css">
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
  <input type="hidden" id="base_url" value="https://doorsoft-demo.com/off_pos/all_types/">
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
                  <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/User/changeProfile">Change
                    Profile</a>
                </li>
                <li>
                  <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/User/changePassword">Change
                    Password</a>
                </li>
                <li>
                  <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/User/securityQuestion">Set Security
                    Question</a>
                </li>
                <li>
                  <a tabindex="-1" class="logOutTrigger" href="javascript:void(0)">Logout</a>
                </li>
              </ul>
            </li>



            <li>
              <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/Dashboard/dashboard" target="_blank"
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
                      <p class="item_name" data-tippy-content="40 Pgs notebook(478)">${s.getInventory().getProduct().getName()}</p>
                      <p class="generic_name d-none" data-tippy-content=""></p>
                      <p class="">SP: <span id=""><c:choose>
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
    <div id="video_tutorial_modal" class="modal">
      <div class="modal-content">
        <h1 class="main_header">
          Video tutorial of medicine grocery experience <a href="javascript:void(0)"
            class="alertCloseIcon close_item_modal">
            <i data-feather="x"></i>
          </a>
        </h1>
        <div class="modal-body">
          <!-- How to work for medicine -->
          <iframe width="100%" height="500px" src="https://www.youtube.com/embed/RAFGa26p85Y?si=uxPVJgFso9fZCI8R"
            title="YouTube video player" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
      </div>
    </div>
    <!-- End Add Item Modal -->


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
        href="https://doorsoft-demo.com/off_pos/all_types/uploads/site_settings/6fd15bfae8a4874f86610e0279ad9e15.ico"
        type="image/x-icon">
      <!-- Iconify Font -->
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/iconify/js/iconify.min.js"></script>
      <!-- Font Awesome 6.5.1-->
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/plugins/fontawesome-free-6.5.1-web/css/all.min.css?var=1.6">
      <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/style.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/plugins/local/google_font_POS.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/font_awesome_all.css?var=1.6" type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/sweetalert2-new.min.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/lib/perfect-scrollbar/dist/perfect-scrollbar.css?var=1.6">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/bower_components/select2/dist/css/select2.min.css?var=1.6"
        type="text/css">
      <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/jquery-ui.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/virtual_keyboard/keyboard.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/custom_theme.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/main_screen.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/pos-screen-loader.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/register_details.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/customModal.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/jquery.dataTables.min.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/buttons.dataTables.min.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/custom_check_box.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/main_screen_finalize.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/main_screen_responsive.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/js/perfect-scrollbar.css?var=1.6"
        type="text/css">
      <link rel="stylesheet" href="https://doorsoft-demo.com/off_pos/all_types/assets/notify/toastr.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/sass/animate.min.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/lib/date/datepicker.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/sass/scale.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/sass/tippy.css?var=1.6"
        type="text/css">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/assets/POS/css/numpad/jquery.numpad.css?var=1.6">
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/preloader.css?var=1.6">
      <!-- POS Screen Final Responsive CSS -->
      <link rel="stylesheet"
        href="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/css/pos_responsive.css?var=1.6"
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
      <input type="hidden" id="base_url" value="https://doorsoft-demo.com/off_pos/all_types/">
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
                      <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/User/changeProfile">Change
                        Profile</a>
                    </li>
                    <li>
                      <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/User/changePassword">Change
                        Password</a>
                    </li>
                    <li>
                      <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/User/securityQuestion">Set
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
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/arabic">
                        <span>Arabic</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/bangla">
                        <span>Bangla</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/english">
                        <span>English</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/french">
                        <span>French</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/hindi">
                        <span>Hindi</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/sinhala">
                        <span>Sinhala</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/spanish">
                        <span>Spanish</span>
                      </a>
                    </li>
                    <li data-lang="English">
                      <a tabindex="-1"
                        href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/urdu">
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
                  <a tabindex="-1" href="https://doorsoft-demo.com/off_pos/all_types/Dashboard/dashboard"
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
      <div id="video_tutorial_modal" class="modal">
        <div class="modal-content">
          <h1 class="main_header">
            Video tutorial of medicine grocery experience <a href="javascript:void(0)"
              class="alertCloseIcon close_item_modal">
              <i data-feather="x"></i>
            </a>
          </h1>
          <div class="modal-body">
            <!-- How to work for medicine -->
            <iframe width="100%" height="500px" src="https://www.youtube.com/embed/RAFGa26p85Y?si=uxPVJgFso9fZCI8R"
              title="YouTube video player" frameborder="0"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
              referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
          </div>
        </div>
      </div>
      <!-- End Add Item Modal -->


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
                            src="https://doorsoft-demo.com/off_pos/all_types/assets/media/dollar_sign.png">
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
                  <a href="https://doorsoft-demo.com/off_pos/all_types/User/changeProfile">
                    Change Profile</a>
                </li>
                <li>
                  <a href="https://doorsoft-demo.com/off_pos/all_types/User/changePassword">
                    Change Password</a>
                </li>
                <li>
                  <a href="https://doorsoft-demo.com/off_pos/all_types/User/securityQuestion">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Dashboard/dashboard">
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
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/arabic">
                    <span>Arabic</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/bangla">
                    <span>Bangla</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/english">
                    <span>English</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/french">
                    <span>French</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/hindi">
                    <span>Hindi</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/sinhala">
                    <span>Sinhala</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/spanish">
                    <span>Spanish</span>
                  </a>
                </li>
                <li data-lang="English">
                  <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/setlanguage/urdu">
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
          <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/userProfile">
            <img
              src="https://doorsoft-demo.com/off_pos/all_types/uploads/site_settings/1c89efb05f2bda6fb4e61365e3bb61dd.png"
              width="50" alt="Logo Image">
          </a>
        </div>
        <ul class="pos__menu__list">
          <li class="have_sub_menu2">
            <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/userProfile">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Outlet/addEditOutlet">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Outlet </a>
              </li>
              <li data-access="list-25" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Outlet/outlets">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Sale/POS">
                  <iconify-icon icon="solar:cart-large-broken" width="15"></iconify-icon>
                  POS Screen </a>
              </li>
              <li data-access="list-138" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Sale/sales">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Sale </a>
              </li>
              <li data-access="add-147" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Customer/addEditCustomer">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Customer </a>
              </li>
              <li data-access="list-147" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Customer/customers">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Customer </a>
              </li>
              <li data-access="add-154" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Group/addEditGroup">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Customer Group </a>
              </li>
              <li data-access="list-154" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Group/groups">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Customer Group </a>
              </li>
              <li data-access="add-133" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Promotion/addEditPromotion">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Promotion </a>
              </li>
              <li data-access="list-133" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Promotion/promotions">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Promotion </a>
              </li>
              <li data-access="add-159" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Delivery_partner/addEditPartner">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Delivery Partner </a>
              </li>
              <li data-access="list-159" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Delivery_partner/listPartner">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Item/addEditItem">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Item </a>
              </li>
              <li data-access="list-49" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Item/items">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Item </a>
              </li>
              <li data-access="list-49" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Item/bulkItemUpdate">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  Bulk Item Update </a>
              </li>
              <li data-access="add-60" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Category/addEditItemCategory">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Item Category </a>
              </li>
              <li data-access="list-60" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Category/itemCategories">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Item Category </a>
              </li>
              <li data-access="add-304" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Rack/addEditRack">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Rack </a>
              </li>
              <li data-access="list-304" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Rack/addEditRack">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Rack </a>
              </li>

              <li data-access="add-65" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Unit/addEditUnit">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Unit </a>
              </li>
              <li data-access="list-65" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Unit/units">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Unit </a>
              </li>
              <li data-access="add-70" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Variation/addEditVariation">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Variation Attribute </a>
              </li>
              <li data-access="list-70" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Variation/variations">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Variation Attribute </a>
              </li>
              <li data-access="add-297" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Brand/addEditBrand">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Brand </a>
              </li>
              <li data-access="list-297" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Brand/brands">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Brand </a>
              </li>
            </ul>
          </li>
          <li data-access="view-30" class="have_sub_menu2 menu_assign_class">
            <a href="https://doorsoft-demo.com/off_pos/all_types/Dashboard/dashboard">
              <iconify-icon icon="solar:chart-2-broken" width="30"></iconify-icon>
              <span>&nbsp;Dashboard</span>
            </a>
          </li>
          <li data-access="view-164" class="have_sub_menu2">
            <a href="https://doorsoft-demo.com/off_pos/all_types/Stock/stock">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase/addEditPurchase">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Purchase </a>
              </li>
              <li data-access="list-109" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase/purchases">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/supplierLedgerReport">
                  <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                  Supplier Ledger </a>
              </li>
              <li data-access="supplier_balance_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/supplierDueReport">
                  <iconify-icon icon="solar:banknote-broken" width="18"></iconify-icon>
                  Supplier Balance Report </a>
              </li>

              <li data-access="customer_ledger-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/customerLedgerReport">
                  <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                  Customer Ledger </a>
              </li>
              <li data-access="customer_balance_report-249" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/customerBalanceReport">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Stock/getStockAlertList">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/cashFlowReport">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Expense/addEditExpense">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Expense </a>
              </li>
              <li data-access="list-172" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Expense/expenses">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Expense </a>
              </li>
              <li data-access="add-177" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/ExpenseItem/addEditExpenseItem">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Expense Category </a>
              </li>
              <li data-access="list-177" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/ExpenseItem/expenseItems">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Income/addEditIncome">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Income </a>
              </li>
              <li data-access="list-182" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Income/incomes">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Income </a>
              </li>
              <li data-access="add-187" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/IncomeItem/addEditIncomeItem">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Income Item </a>
              </li>
              <li data-access="list-187" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/IncomeItem/incomeItems">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Sale_return/addEditSaleReturn">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Sale Return </a>
              </li>
              <li data-access="list-204" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Sale_return/saleReturns">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Setting/index">
                  <iconify-icon icon="solar:settings-broken" width="18"></iconify-icon>
                  Setting </a>
              </li>
              <li data-access="whatsappSetting-327" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Setting/whatsappSetting">
                  <iconify-icon icon="solar:settings-minimalistic-broken" width="18"></iconify-icon>
                  WhatsApp Setting </a>
              </li>
              <li data-access="add-3" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Denomination/addEditDenomination">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Denomination </a>
              </li>
              <li data-access="list-3" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Denomination/denominations">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Denominations </a>
              </li>
              <li data-access="add-340" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Counter/addEditCounter">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Counter </a>
              </li>
              <li data-access="list-340" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Counter/counters">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Counter </a>
              </li>
              <li data-access="edit-8" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Tax_setting/tax">
                  <iconify-icon icon="solar:target-broken" width="18"></iconify-icon>
                  Tax Setting </a>
              </li>
              <li data-access="edit-10" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Email_setting/emailConfiguration">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/WhiteLabel/index">
                  <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                  White Label </a>
              </li>
              <li data-access="edit-23" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/logingPage">
                  <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                  Login Page </a>
              </li>

              <li data-access="edit-335" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Payment_getway/paymentGetway">
                  <iconify-icon icon="solar:password-broken" width="18"></iconify-icon>
                  Payment Getway </a>
              </li>
              <li data-access="add-311" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/MultipleCurrency/addEditMultipleCurrency">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Multiple Currency </a>
              </li>
              <li data-access="list-311" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/MultipleCurrency/multipleCurrencies">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Multiple Currency </a>
              </li>
              <li data-access="add_dummy_data-325" class="menu_assign_class">
                <a class="add_dummy_data" href="https://doorsoft-demo.com/off_pos/all_types/Setting/add_dummy_data">
                  <iconify-icon icon="solar:import-broken" width="18"></iconify-icon>
                  Import Dummy Data </a>
              </li>

              <li data-access="deleteDummyData-329" class="menu_assign_class">
                <a class="delete" href="https://doorsoft-demo.com/off_pos/all_types/Setting/deleteDummyData">
                  <iconify-icon icon="solar:trash-bin-2-broken" width="18"></iconify-icon>
                  Delete Dummy Data </a>
              </li>
              <li data-access="wipeTransactionalData-331" class="menu_assign_class">
                <a class="delete" href="https://doorsoft-demo.com/off_pos/all_types/Setting/wipeTransactionalData">
                  <iconify-icon icon="solar:transfer-horizontal-broken" width="18"></iconify-icon>
                  Wipe Transactional Data </a>
              </li>
              <li data-access="wipeAllData-333" class="menu_assign_class">
                <a class="delete" href="https://doorsoft-demo.com/off_pos/all_types/Setting/wipeAllData">
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
                <a href="https://doorsoft-demo.com/off_pos/all_types/Role/addEditRole">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Role </a>
              </li>
              <li data-access="list-282" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/Role/listRole">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Role </a>
              </li>
              <li data-access="add-287" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/User/addEditUser">
                  <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                  Add Employee </a>
              </li>
              <li data-access="list-287" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/User/users">
                  <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                  List Employee </a>
              </li>
              <li data-access="add-287" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/User/changeProfile">
                  <iconify-icon icon="solar:user-check-broken" width="18"></iconify-icon>
                  Change Profile </a>
              </li>
              <li data-access="add-287" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/User/changePassword">
                  <iconify-icon icon="solar:key-broken" width="18"></iconify-icon>
                  Change Password </a>
              </li>
              <li data-access="add-287" class="menu_assign_class">
                <a href="https://doorsoft-demo.com/off_pos/all_types/User/securityQuestion">
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
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery-3.3.1.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery-ui.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery.slimscroll.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/sweetalert2-new.all.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/bower_components/select2/dist/js/select2.full.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/calculator.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.mousewheel.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.extension-typing.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.extension-autocomplete.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.extension-caret.js"></script>
      <!-- TOP End-->
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/notify/toastr.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/marquee.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/datable.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery.cookie.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/feather/feather.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/howler.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/lib/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/js/popper.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/js/tippy.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/lib/date/datepicker.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/dataTables.buttons.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/jquery.dataTables.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/dataTables.bootstrap4.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/dataTables.buttons.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/buttons.html5.min.js"></script>
      <script
        src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/buttons.print.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/jszip.min.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/pdfmake.min.js"></script>
      <!-- Plugin Js End -->
      <!-- Custom JS Start -->
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/stripe.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/pos_script.js"></script>
      <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/register_details.js"></script>
      <!-- Custom JS End -->

      <!-- ################ Script Start ################ -->
      <script>
        window.items = [{ "cat_id": "4", "conversion_rate": "1", "item_id": "122", "generic_name": null, "brand_id": "1", "item_code": "121-01", "category_name": "", "item_name": "30", "price": "2900", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296634.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2700", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "121" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "127", "generic_name": null, "brand_id": "1", "item_code": "126-01", "category_name": "", "item_name": "30", "price": "1980", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296856.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1800", "last_purchase_price": "1500", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "126" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "132", "generic_name": null, "brand_id": "2", "item_code": "131-01", "category_name": "", "item_name": "30", "price": "2220", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297122.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1900", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "131" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "137", "generic_name": null, "brand_id": "2", "item_code": "136-01", "category_name": "", "item_name": "30", "price": "1490", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297373.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "136" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "142", "generic_name": null, "brand_id": "5", "item_code": "141-01", "category_name": "", "item_name": "30", "price": "2395", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297726.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "141" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "147", "generic_name": null, "brand_id": "5", "item_code": "146-01", "category_name": "", "item_name": "30", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298144.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "146" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "184", "generic_name": null, "brand_id": "5", "item_code": "183-01", "category_name": "", "item_name": "30", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302853.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "900", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "183" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "194", "generic_name": null, "brand_id": "3", "item_code": "193-01", "category_name": "", "item_name": "30", "price": "1040", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303351.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "900", "last_purchase_price": "750", "warranty": "6", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "193" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "123", "generic_name": null, "brand_id": "1", "item_code": "121-02", "category_name": "", "item_name": "32", "price": "2900", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296641.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2700", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "121" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "128", "generic_name": null, "brand_id": "1", "item_code": "126-02", "category_name": "", "item_name": "32", "price": "1980", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296862.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1800", "last_purchase_price": "1500", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "126" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "133", "generic_name": null, "brand_id": "2", "item_code": "131-02", "category_name": "", "item_name": "32", "price": "2220", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297189.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1900", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "131" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "138", "generic_name": null, "brand_id": "2", "item_code": "136-02", "category_name": "", "item_name": "32", "price": "1490", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297379.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "136" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "143", "generic_name": null, "brand_id": "5", "item_code": "141-02", "category_name": "", "item_name": "32", "price": "2395", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297734.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "141" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "148", "generic_name": null, "brand_id": "5", "item_code": "146-02", "category_name": "", "item_name": "32", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298150.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "146" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "160", "generic_name": null, "brand_id": "1", "item_code": "159-01", "category_name": "", "item_name": "32", "price": "1290", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716300898.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1190", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "159" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "174", "generic_name": null, "brand_id": "2", "item_code": "173-01", "category_name": "", "item_name": "32", "price": "1300", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301467.jpg", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1100", "warranty": "6", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "173" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "185", "generic_name": null, "brand_id": "5", "item_code": "183-02", "category_name": "", "item_name": "32", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302859.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "900", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "183" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "195", "generic_name": null, "brand_id": "3", "item_code": "193-02", "category_name": "", "item_name": "32", "price": "1040", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303356.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "900", "last_purchase_price": "750", "warranty": "6", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "193" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "124", "generic_name": null, "brand_id": "1", "item_code": "121-03", "category_name": "", "item_name": "34", "price": "2900", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296648.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2700", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "121" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "129", "generic_name": null, "brand_id": "1", "item_code": "126-03", "category_name": "", "item_name": "34", "price": "1980", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296869.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1800", "last_purchase_price": "1500", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "126" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "134", "generic_name": null, "brand_id": "2", "item_code": "131-03", "category_name": "", "item_name": "34", "price": "2220", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297204.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1900", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "131" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "139", "generic_name": null, "brand_id": "2", "item_code": "136-03", "category_name": "", "item_name": "34", "price": "1490", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297386.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "136" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "144", "generic_name": null, "brand_id": "5", "item_code": "141-03", "category_name": "", "item_name": "34", "price": "2395", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297741.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "141" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "149", "generic_name": null, "brand_id": "5", "item_code": "146-03", "category_name": "", "item_name": "34", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298156.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "146" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "161", "generic_name": null, "brand_id": "1", "item_code": "159-02", "category_name": "", "item_name": "34", "price": "1290", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716300904.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1190", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "159" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "175", "generic_name": null, "brand_id": "2", "item_code": "173-02", "category_name": "", "item_name": "34", "price": "1300", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301468.jpg", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1100", "warranty": "6", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "173" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "186", "generic_name": null, "brand_id": "5", "item_code": "183-03", "category_name": "", "item_name": "34", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302867.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "900", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "183" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "196", "generic_name": null, "brand_id": "3", "item_code": "193-03", "category_name": "", "item_name": "34", "price": "1040", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303361.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "900", "last_purchase_price": "750", "warranty": "6", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "193" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "125", "generic_name": null, "brand_id": "1", "item_code": "121-04", "category_name": "", "item_name": "36", "price": "2900", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296662.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2700", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "121" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "130", "generic_name": null, "brand_id": "1", "item_code": "126-04", "category_name": "", "item_name": "36", "price": "1980", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716296877.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1800", "last_purchase_price": "1500", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "126" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "135", "generic_name": null, "brand_id": "2", "item_code": "131-04", "category_name": "", "item_name": "36", "price": "2220", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297211.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1900", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "131" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "140", "generic_name": null, "brand_id": "2", "item_code": "136-04", "category_name": "", "item_name": "36", "price": "1490", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297393.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "136" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "145", "generic_name": null, "brand_id": "5", "item_code": "141-04", "category_name": "", "item_name": "36", "price": "2395", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716297747.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "141" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "150", "generic_name": null, "brand_id": "5", "item_code": "146-04", "category_name": "", "item_name": "36", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298165.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "146" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "162", "generic_name": null, "brand_id": "1", "item_code": "159-03", "category_name": "", "item_name": "36", "price": "1290", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716300911.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1190", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "159" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "176", "generic_name": null, "brand_id": "2", "item_code": "173-03", "category_name": "", "item_name": "36", "price": "1300", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301469.jpg", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1100", "warranty": "6", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "173" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "187", "generic_name": null, "brand_id": "5", "item_code": "183-04", "category_name": "", "item_name": "36", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302872.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "900", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "183" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "197", "generic_name": null, "brand_id": "3", "item_code": "193-04", "category_name": "", "item_name": "36", "price": "1040", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303367.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "900", "last_purchase_price": "750", "warranty": "6", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "193" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "163", "generic_name": null, "brand_id": "1", "item_code": "159-04", "category_name": "", "item_name": "38", "price": "1290", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716300919.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1190", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "159" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "177", "generic_name": null, "brand_id": "2", "item_code": "173-04", "category_name": "", "item_name": "38", "price": "1300", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301470.jpg", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1100", "warranty": "6", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "173" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "179", "generic_name": null, "brand_id": "5", "item_code": "178-01", "category_name": "", "item_name": "38", "price": "2100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302589.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2000", "last_purchase_price": "1900", "warranty": "1", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "178" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "189", "generic_name": null, "brand_id": "3", "item_code": "188-01", "category_name": "", "item_name": "38", "price": "2500", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303172.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2300", "last_purchase_price": "2000", "warranty": "1", "guarantee": "1", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "188" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "180", "generic_name": null, "brand_id": "5", "item_code": "178-02", "category_name": "", "item_name": "40", "price": "2100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302595.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2000", "last_purchase_price": "1900", "warranty": "1", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "178" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "190", "generic_name": null, "brand_id": "3", "item_code": "188-02", "category_name": "", "item_name": "40", "price": "2500", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303177.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2300", "last_purchase_price": "2000", "warranty": "1", "guarantee": "1", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "188" }, { "cat_id": "61", "conversion_rate": "24", "item_id": "487", "generic_name": "", "brand_id": "0", "item_code": "478", "category_name": "", "item_name": "40 Pgs notebook", "price": "350", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1718893634.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":0},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":0},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":0},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":0}]", "item_type": "General_Product", "whole_sale_price": "340", "last_purchase_price": "310", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "181", "generic_name": null, "brand_id": "5", "item_code": "178-03", "category_name": "", "item_name": "42", "price": "2100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302600.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2000", "last_purchase_price": "1900", "warranty": "1", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "178" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "191", "generic_name": null, "brand_id": "3", "item_code": "188-03", "category_name": "", "item_name": "42", "price": "2500", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303183.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2300", "last_purchase_price": "2000", "warranty": "1", "guarantee": "1", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "188" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "182", "generic_name": null, "brand_id": "5", "item_code": "178-04", "category_name": "", "item_name": "44", "price": "2100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716302605.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2000", "last_purchase_price": "1900", "warranty": "1", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "178" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "192", "generic_name": null, "brand_id": "3", "item_code": "188-04", "category_name": "", "item_name": "44", "price": "2500", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716303189.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2300", "last_purchase_price": "2000", "warranty": "1", "guarantee": "1", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "188" }, { "cat_id": "23", "conversion_rate": "48", "item_id": "316", "generic_name": "Flucloxacillin Sodium", "brand_id": "22", "item_code": "307", "category_name": "", "item_name": "A-Flox", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716721333.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "250", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "26", "conversion_rate": "10", "item_id": "328", "generic_name": "Ivermectin", "brand_id": "22", "item_code": "319", "category_name": "", "item_name": "A-Mectin", "price": "30", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716724586.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "29", "last_purchase_price": "280", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "32", "conversion_rate": "500", "item_id": "334", "generic_name": "Paracetamol", "brand_id": "25", "item_code": "325", "category_name": "", "item_name": "Ace", "price": "1.2", "sale_unit_name": "Bundle", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716727534.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "1", "last_purchase_price": "400", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "32", "conversion_rate": "200", "item_id": "336", "generic_name": "Paracetamol", "brand_id": "25", "item_code": "327", "category_name": "", "item_name": "Ace Power", "price": "2.25", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716729085.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "2", "last_purchase_price": "350", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "32", "conversion_rate": "1", "item_id": "335", "generic_name": "Paracetamol", "brand_id": "25", "item_code": "326", "category_name": "", "item_name": "Ace Syrup", "price": "35", "sale_unit_name": "Bottle", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716727795.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "30", "last_purchase_price": "25", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "10", "item_id": "462", "generic_name": "", "brand_id": "0", "item_code": "453", "category_name": "", "item_name": "ACI Pure Flour (Atta)", "price": "130", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717526715.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "125", "last_purchase_price": "1200", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "472", "generic_name": "", "brand_id": "0", "item_code": "463", "category_name": "", "item_name": "ACI Smart Detergent Powder", "price": "75", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717528089.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "70", "last_purchase_price": "65", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "26", "conversion_rate": "10", "item_id": "330", "generic_name": "Ivermectin", "brand_id": "25", "item_code": "321", "category_name": "", "item_name": "Alice", "price": "20", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716724965.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "10", "last_purchase_price": "180", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "151", "generic_name": "", "brand_id": "3", "item_code": "151", "category_name": "", "item_name": "Aligori Pajama", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309698.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "18", "conversion_rate": "60", "item_id": "296", "generic_name": "Amlodipine Besilate", "brand_id": "20", "item_code": "287", "category_name": "", "item_name": "Amdocal", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716709978.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "300", "warranty": "0", "guarantee": "0", "brand_name": " - Beximco Pharmaceuticals Ltd.", "supplier_name": " - Beximco", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "18", "conversion_rate": "30", "item_id": "295", "generic_name": "Amlodipine Besilate", "brand_id": "22", "item_code": "286", "category_name": "", "item_name": "Amlopin", "price": "7", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716709338.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "6", "last_purchase_price": "150", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "20", "conversion_rate": "30", "item_id": "305", "generic_name": "Clopidogrel Bisulphate", "brand_id": "25", "item_code": "296", "category_name": "", "item_name": "Anclog", "price": "12", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716718307.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "11", "last_purchase_price": "300", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "12", "item_id": "496", "generic_name": "", "brand_id": "0", "item_code": "7441026000200", "category_name": "", "item_name": "Andrews Salt  Lemon", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - Ruwantha", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "489", "generic_name": "", "brand_id": "0", "item_code": "480", "category_name": "", "item_name": "APP", "price": "0", "sale_unit_name": "Bottle", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - Vasline", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "286", "generic_name": "", "brand_id": "6", "item_code": "277", "category_name": "", "item_name": "Apple 16GB DDR4 3200MHz SO-DIMM", "price": "23324", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716634234.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "19925", "last_purchase_price": "18753", "warranty": "3", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "285", "generic_name": "", "brand_id": "6", "item_code": "276", "category_name": "", "item_name": "Apple 8GB DDR4 2666MHz SO-DIMM", "price": "11603", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716634041.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "9962", "last_purchase_price": "9376", "warranty": "3", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "277", "generic_name": "", "brand_id": "6", "item_code": "268", "category_name": "", "item_name": "Apple M1 Chip", "price": "46766", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716632276.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "40906", "last_purchase_price": "38562", "warranty": "2", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "278", "generic_name": "", "brand_id": "6", "item_code": "269", "category_name": "", "item_name": "Apple M1 Pro Chip", "price": "70208", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716632493.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "64348", "last_purchase_price": "62004", "warranty": "2", "guarantee": "3", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "270", "generic_name": "", "brand_id": "6", "item_code": "261", "category_name": "", "item_name": "Apple MacBook Air 13-inch", "price": "117092", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716625911.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "99511", "last_purchase_price": "93768", "warranty": "3", "guarantee": "3", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "269", "generic_name": "", "brand_id": "6", "item_code": "260", "category_name": "", "item_name": "Apple MacBook Pro 16-inch", "price": "281186", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716625776.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "246023", "last_purchase_price": "228559", "warranty": "3", "guarantee": "6", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "253", "generic_name": "", "brand_id": "6", "item_code": "244", "category_name": "", "item_name": "Apple Pro Display XDR", "price": "585932", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716616795.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "480443", "last_purchase_price": "400443", "warranty": "5", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "254", "generic_name": "", "brand_id": "6", "item_code": "245", "category_name": "", "item_name": "Apple Thunderbolt Display", "price": "117092", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716617049.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "105371", "last_purchase_price": "99628", "warranty": "1", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "213", "generic_name": "", "brand_id": "6", "item_code": "204", "category_name": "", "item_name": "Apple Watch SE (GPS + Cellular)", "price": "36190", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716447726.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "28600", "last_purchase_price": "1650", "warranty": "1", "guarantee": "6", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "212", "generic_name": "", "brand_id": "6", "item_code": "203", "category_name": "", "item_name": "Apple Watch Series 8 (GPS + Cellular)", "price": "5489", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716447282.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "44000", "last_purchase_price": "22000", "warranty": "2", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "11", "conversion_rate": "1", "item_id": "242", "generic_name": "", "brand_id": "11", "item_code": "233", "category_name": "", "item_name": "Asus 4G-AC68U (AC1900 4G LTE Router)", "price": "35066", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716460283.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "28147", "last_purchase_price": "17592", "warranty": "1", "guarantee": "6", "brand_name": " - Asus", "supplier_name": " - Asus", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "243", "generic_name": "", "brand_id": "11", "item_code": "234", "category_name": "", "item_name": "Asus 4G-N12 (N300 4G LTE Router)", "price": "15129", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716460519.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "11728", "last_purchase_price": "7036", "warranty": "1", "guarantee": "1", "brand_name": " - Asus", "supplier_name": " - Asus", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "62", "conversion_rate": "1", "item_id": "488", "generic_name": "", "brand_id": "0", "item_code": "479", "category_name": "", "item_name": "Baby towel", "price": "230", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1718893591.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "0", "last_purchase_price": "190", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "59", "conversion_rate": "1", "item_id": "481", "generic_name": "", "brand_id": "0", "item_code": "472", "category_name": "", "item_name": "Back glass Repair", "price": "460", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717672240.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "45", "conversion_rate": "1", "item_id": "414", "generic_name": "", "brand_id": "0", "item_code": "405", "category_name": "", "item_name": "Basic Bridal Makeup", "price": "7000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042844.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "480", "generic_name": "", "brand_id": "0", "item_code": "471", "category_name": "", "item_name": "Battery Replacement", "price": "378", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717671988.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "159", "generic_name": "", "brand_id": "1", "item_code": "159", "category_name": "", "item_name": "Belt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309801.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "173", "generic_name": "", "brand_id": "2", "item_code": "173", "category_name": "", "item_name": "Belt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309899.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "183", "generic_name": "", "brand_id": "5", "item_code": "183", "category_name": "", "item_name": "Belt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309955.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "193", "generic_name": "", "brand_id": "3", "item_code": "193", "category_name": "", "item_name": "Belt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717310007.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "146", "generic_name": "", "brand_id": "5", "item_code": "146", "category_name": "", "item_name": "Bermuda Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309675.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "19", "conversion_rate": "30", "item_id": "300", "generic_name": "Bisoprolol Fumarate", "brand_id": "22", "item_code": "291", "category_name": "", "item_name": "Betabis Plus", "price": "10", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716712655.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "9", "last_purchase_price": "240", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "19", "conversion_rate": "30", "item_id": "302", "generic_name": "Bisoprolol Fumarate ", "brand_id": "26", "item_code": "293", "category_name": "", "item_name": "Betacor HZ", "price": "10", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716713445.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "9", "last_purchase_price": "7", "warranty": "0", "guarantee": "0", "brand_name": " - Popular Pharmaceuticals Ltd.", "supplier_name": " - Popular Pharmacitical", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "470", "generic_name": "", "brand_id": "0", "item_code": "461", "category_name": "", "item_name": "Big Stainless Steel Tea Spoon", "price": "329", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527838.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "320", "last_purchase_price": "310", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "44", "conversion_rate": "1", "item_id": "410", "generic_name": "", "brand_id": "0", "item_code": "401", "category_name": "", "item_name": "Birthday Makeup (Basic)", "price": "2000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042590.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "431", "generic_name": "", "brand_id": "0", "item_code": "422", "category_name": "", "item_name": "Birthday Party Decoration Ariel Theme Balloon", "price": "299", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717521357.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "289", "last_purchase_price": "285", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "19", "conversion_rate": "30", "item_id": "301", "generic_name": "Bisoprolol Fumarate", "brand_id": "25", "item_code": "292", "category_name": "", "item_name": "Bisocor Plus", "price": "10", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716713069.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "9", "last_purchase_price": "240", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "15", "generic_name": null, "brand_id": "2", "item_code": "011-04", "category_name": "", "item_name": "Black", "price": "5570", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282492.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "5000", "last_purchase_price": "4500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "11" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "20", "generic_name": null, "brand_id": "2", "item_code": "016-04", "category_name": "", "item_name": "Black", "price": "3200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282879.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "3000", "last_purchase_price": "2500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "16" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "25", "generic_name": null, "brand_id": "5", "item_code": "021-04", "category_name": "", "item_name": "Black", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716283750.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "21" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "30", "generic_name": null, "brand_id": "5", "item_code": "026-04", "category_name": "", "item_name": "Black", "price": "3095", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284178.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2400", "warranty": "10", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "26" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "35", "generic_name": null, "brand_id": "3", "item_code": "031-04", "category_name": "", "item_name": "Black", "price": "1655", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284894.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1555", "last_purchase_price": "1255", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "31" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "40", "generic_name": null, "brand_id": "3", "item_code": "036-04", "category_name": "", "item_name": "Black", "price": "2369", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716286084.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1800", "warranty": "10", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "36" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "49", "generic_name": null, "brand_id": "1", "item_code": "046-03", "category_name": "", "item_name": "Black", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288824.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "8000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "46" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "54", "generic_name": null, "brand_id": "2", "item_code": "051-03", "category_name": "", "item_name": "Black", "price": "550", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289187.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "450", "last_purchase_price": "3500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "51" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "60", "generic_name": null, "brand_id": "2", "item_code": "056-04", "category_name": "", "item_name": "Black", "price": "1100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289521.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "56" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "79", "generic_name": null, "brand_id": "3", "item_code": "076-03", "category_name": "", "item_name": "Black", "price": "700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291703.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "76" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "153", "generic_name": null, "brand_id": "3", "item_code": "151-02", "category_name": "", "item_name": "Black", "price": "600", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298708.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "500", "last_purchase_price": "400", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "151" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "158", "generic_name": null, "brand_id": "3", "item_code": "155-03", "category_name": "", "item_name": "Black", "price": "830", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298897.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "700", "last_purchase_price": "600", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "155" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "167", "generic_name": null, "brand_id": "1", "item_code": "164-03", "category_name": "", "item_name": "Black", "price": "650", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301107.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "550", "last_purchase_price": "450", "warranty": "1", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "164" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "171", "generic_name": null, "brand_id": "2", "item_code": "168-03", "category_name": "", "item_name": "Black", "price": "750", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301458.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "650", "last_purchase_price": "500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "168" }, { "cat_id": "40", "conversion_rate": "1", "item_id": "390", "generic_name": "", "brand_id": "0", "item_code": "381", "category_name": "", "item_name": "Bleach (Face &amp; Neck)", "price": "350", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005879.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "40", "conversion_rate": "1", "item_id": "393", "generic_name": "", "brand_id": "0", "item_code": "384", "category_name": "", "item_name": "Bleach (Half Back)", "price": "300", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006074.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "40", "conversion_rate": "1", "item_id": "392", "generic_name": "", "brand_id": "0", "item_code": "383", "category_name": "", "item_name": "Bleach (Half Legs)", "price": "350", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006020.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "40", "conversion_rate": "1", "item_id": "391", "generic_name": "", "brand_id": "0", "item_code": "382", "category_name": "", "item_name": "Bleach (Underarms)", "price": "250", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005937.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "40", "conversion_rate": "1", "item_id": "394", "generic_name": "", "brand_id": "0", "item_code": "385", "category_name": "", "item_name": "Bleach Full Body (Face &amp; Neck Not Included)", "price": "1000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006182.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "47", "conversion_rate": "1", "item_id": "377", "generic_name": "", "brand_id": "0", "item_code": "368", "category_name": "", "item_name": "Bleach\/D-Tan (Face &amp; Neck) + FA + UA Honey Choco Wax + Shapeup", "price": "800", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717004926.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "3", "generic_name": null, "brand_id": "1", "item_code": "001-02", "category_name": "", "item_name": "Blue", "price": "1890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716280955.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1700", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "1" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "32", "generic_name": null, "brand_id": "3", "item_code": "031-01", "category_name": "", "item_name": "Blue", "price": "1655", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284853.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1555", "last_purchase_price": "1255", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "31" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "63", "generic_name": null, "brand_id": "5", "item_code": "061-02", "category_name": "", "item_name": "Blue", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290452.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "690", "last_purchase_price": "5900", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "61" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "68", "generic_name": null, "brand_id": "5", "item_code": "066-02", "category_name": "", "item_name": "Blue", "price": "895", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290805.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "795", "last_purchase_price": "6000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "66" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "73", "generic_name": null, "brand_id": "3", "item_code": "071-02", "category_name": "", "item_name": "Blue", "price": "520", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291234.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "420", "last_purchase_price": "3000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "71" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "77", "generic_name": null, "brand_id": "3", "item_code": "076-01", "category_name": "", "item_name": "Blue", "price": "700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291687.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "76" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "157", "generic_name": null, "brand_id": "3", "item_code": "155-02", "category_name": "", "item_name": "Blue", "price": "830", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298889.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "700", "last_purchase_price": "600", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "155" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "166", "generic_name": null, "brand_id": "1", "item_code": "164-02", "category_name": "", "item_name": "Blue", "price": "650", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301101.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "550", "last_purchase_price": "450", "warranty": "1", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "164" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "211", "generic_name": null, "brand_id": "1", "item_code": "198-04", "category_name": "", "item_name": "Blue - L", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716309523.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "6", "guarantee": "6", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "207" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "210", "generic_name": null, "brand_id": "1", "item_code": "198-03", "category_name": "", "item_name": "Blue - M", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716309515.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "6", "guarantee": "6", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "207" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "494", "generic_name": "", "brand_id": "0", "item_code": "485", "category_name": "", "item_name": "book", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "50", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - Ruwantha", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "12", "item_id": "497", "generic_name": null, "brand_id": "0", "item_code": "7441026000200-01", "category_name": "", "item_name": "Box", "price": "57.5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "0", "whole_sale_price": "0", "last_purchase_price": "1.2", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - Ruwantha", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "496" }, { "cat_id": "56", "conversion_rate": "1", "item_id": "473", "generic_name": "", "brand_id": "0", "item_code": "464", "category_name": "", "item_name": "Brake Service", "price": "250", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717668105.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "45", "conversion_rate": "1", "item_id": "417", "generic_name": "", "brand_id": "0", "item_code": "408", "category_name": "", "item_name": "Bridal HD Makup", "price": "1500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043010.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "116", "generic_name": "", "brand_id": "3", "item_code": "116", "category_name": "", "item_name": "Brush Painted Cotton Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309477.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "18", "conversion_rate": "50", "item_id": "297", "generic_name": "Amlodipine Besilate", "brand_id": "23", "item_code": "288", "category_name": "", "item_name": "Cab", "price": "5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716710529.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "4", "last_purchase_price": "200", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "136", "generic_name": "", "brand_id": "2", "item_code": "136", "category_name": "", "item_name": "Cargo Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309613.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "1", "item_id": "495", "generic_name": "", "brand_id": "33", "item_code": "486", "category_name": "", "item_name": "Cf", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": " - Nari", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "57", "conversion_rate": "1", "item_id": "478", "generic_name": "", "brand_id": "0", "item_code": "469", "category_name": "", "item_name": "Chain and Belt Replacement", "price": "690", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717669488.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "59", "conversion_rate": "1", "item_id": "484", "generic_name": "", "brand_id": "0", "item_code": "475", "category_name": "", "item_name": "Charging Port repair", "price": "380", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717673281.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "425", "generic_name": "", "brand_id": "1", "item_code": "416", "category_name": "", "item_name": "China T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717330546.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "47", "conversion_rate": "1", "item_id": "381", "generic_name": "", "brand_id": "0", "item_code": "372", "category_name": "", "item_name": "Clean-Up + Wax + Bleach\/De-Tan + Shape-Up", "price": "3500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717004729.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "47", "conversion_rate": "1", "item_id": "423", "generic_name": "", "brand_id": "0", "item_code": "414", "category_name": "", "item_name": "Clean-Up + Wax + Shape -Up", "price": "1000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043538.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "20", "conversion_rate": "30", "item_id": "303", "generic_name": "Clopidogrel Bisulphate", "brand_id": "23", "item_code": "294", "category_name": "", "item_name": "Clorel", "price": "13", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716717853.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "12", "last_purchase_price": "330", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "24", "conversion_rate": "60", "item_id": "321", "generic_name": "Gliclazide", "brand_id": "25", "item_code": "312", "category_name": "", "item_name": "Comprid", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716722371.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "360", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "71", "generic_name": "", "brand_id": "3", "item_code": "071", "category_name": "", "item_name": "Cotton T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308906.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "239", "generic_name": "", "brand_id": "12", "item_code": "230", "category_name": "", "item_name": "D-Link DWR-921 (4G LTE Router)", "price": "15129", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716459537.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "11728", "last_purchase_price": "7036", "warranty": "1", "guarantee": "6", "brand_name": " - Dlink", "supplier_name": " - D Link", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "238", "generic_name": "", "brand_id": "12", "item_code": "229", "category_name": "", "item_name": "D-Link DWR-961 (AC1200 4G LTE Router)", "price": "20993", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716459386.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "16419", "last_purchase_price": "9968", "warranty": "1", "guarantee": "6", "brand_name": " - Dlink", "supplier_name": " - D Link", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "430", "generic_name": "", "brand_id": "0", "item_code": "421", "category_name": "", "item_name": "Dancing Hello Kitty Toy", "price": "629", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717521254.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "619", "last_purchase_price": "615", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "20", "conversion_rate": "30", "item_id": "304", "generic_name": "Clopidogrel Bisulphate", "brand_id": "22", "item_code": "295", "category_name": "", "item_name": "Dclot", "price": "12", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716718049.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "11", "last_purchase_price": "300", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "290", "generic_name": "", "brand_id": "10", "item_code": "281", "category_name": "", "item_name": "Dell 16GB DDR4 2400MHz", "price": "16292", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716637056.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "14065", "last_purchase_price": "12893", "warranty": "3", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "289", "generic_name": "", "brand_id": "10", "item_code": "280", "category_name": "", "item_name": "Dell 8GB DDR4 2133MHz", "price": "9259", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716636856.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "7618", "last_purchase_price": "7032", "warranty": "2", "guarantee": "1", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "274", "generic_name": "", "brand_id": "10", "item_code": "265", "category_name": "", "item_name": "Dell Inspiron 14 5000", "price": "87790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716629971.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "76069", "last_purchase_price": "70326", "warranty": "2", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "281", "generic_name": "", "brand_id": "10", "item_code": "272", "category_name": "", "item_name": "Dell Intel Core i5-10400", "price": "22152", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716633048.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "22152", "last_purchase_price": "16409", "warranty": "2", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "282", "generic_name": "", "brand_id": "10", "item_code": "273", "category_name": "", "item_name": "Dell Intel Core i9-10900K", "price": "58487", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716633274.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "52627", "last_purchase_price": "50283", "warranty": "2", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "250", "generic_name": "", "brand_id": "10", "item_code": "241", "category_name": "", "item_name": "Dell Latitude 7410", "price": "187649", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716463387.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "140736", "last_purchase_price": "129008", "warranty": "2", "guarantee": "6", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "251", "generic_name": "", "brand_id": "10", "item_code": "242", "category_name": "", "item_name": "Dell Latitude 9420", "price": "234561", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716463573.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "175921", "last_purchase_price": "164193", "warranty": "2", "guarantee": "6", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "258", "generic_name": "", "brand_id": "10", "item_code": "249", "category_name": "", "item_name": "Dell P2419H", "price": "23324", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716622554.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "19808", "last_purchase_price": "17581", "warranty": "1", "guarantee": "1", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "294", "generic_name": "", "brand_id": "10", "item_code": "285", "category_name": "", "item_name": "Dell Ultra Sharp", "price": "44403", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716642302.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "38545", "last_purchase_price": "26829", "warranty": "3", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "257", "generic_name": "", "brand_id": "10", "item_code": "248", "category_name": "", "item_name": "Dell UltraSharp U2720Q", "price": "86618", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716618227.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "74897", "last_purchase_price": "70326", "warranty": "3", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "273", "generic_name": "", "brand_id": "10", "item_code": "264", "category_name": "", "item_name": "Dell XPS 15", "price": "175697", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716629800.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "152255", "last_purchase_price": "140652", "warranty": "2", "guarantee": "3", "brand_name": " - Dell", "supplier_name": " - Dell", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "141", "generic_name": "", "brand_id": "5", "item_code": "141", "category_name": "", "item_name": "Denim Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309643.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "20", "item_id": "465", "generic_name": "", "brand_id": "0", "item_code": "456", "category_name": "", "item_name": "Deshi Peyaj (Local Onion)", "price": "80", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527089.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "75", "last_purchase_price": "1300", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "468", "generic_name": "", "brand_id": "0", "item_code": "459", "category_name": "", "item_name": "Die Cast Metal Toy Car", "price": "1419", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527601.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "1410", "last_purchase_price": "1400", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "21", "conversion_rate": "140", "item_id": "308", "generic_name": "Domperidone Maleate", "brand_id": "22", "item_code": "299", "category_name": "", "item_name": "Don-A", "price": "4", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716719179.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "3", "last_purchase_price": "280", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "1", "generic_name": "", "brand_id": "1", "item_code": "001", "category_name": "", "item_name": "EASY DESIGN PANJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717306890.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "6", "generic_name": "", "brand_id": "1", "item_code": "006", "category_name": "", "item_name": "EASY KARCHUPI PANJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717307759.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "18", "conversion_rate": "50", "item_id": "298", "generic_name": "Amlodipine Besilate", "brand_id": "24", "item_code": "289", "category_name": "", "item_name": "Emlon", "price": "5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716711362.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "4", "last_purchase_price": "150", "warranty": "0", "guarantee": "0", "brand_name": " -  Biopharma Limited", "supplier_name": " - Biopharma", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "44", "conversion_rate": "1", "item_id": "412", "generic_name": "", "brand_id": "0", "item_code": "403", "category_name": "", "item_name": "Engagement Luxury Makeup", "price": "7000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042691.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "44", "conversion_rate": "1", "item_id": "411", "generic_name": "", "brand_id": "0", "item_code": "402", "category_name": "", "item_name": "Engagement Primary Makeup", "price": "5000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042629.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "56", "conversion_rate": "1", "item_id": "476", "generic_name": "", "brand_id": "0", "item_code": "467", "category_name": "", "item_name": "Engine Tune-Up", "price": "350", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717668679.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "21", "conversion_rate": "100", "item_id": "310", "generic_name": "Domperidone Maleate", "brand_id": "24", "item_code": "301", "category_name": "", "item_name": "Esogut", "price": "3.5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716719575.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "3", "last_purchase_price": "250", "warranty": "0", "guarantee": "0", "brand_name": " -  Biopharma Limited", "supplier_name": " - Biopharma", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "22", "conversion_rate": "50", "item_id": "311", "generic_name": "Esomeprazole", "brand_id": "23", "item_code": "302", "category_name": "", "item_name": "Esomep", "price": "5.2", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716719876.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "4.5", "last_purchase_price": "150", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "207", "generic_name": "", "brand_id": "1", "item_code": "198", "category_name": "", "item_name": "Exclusive T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309055.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "6", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "47", "conversion_rate": "1", "item_id": "379", "generic_name": "", "brand_id": "0", "item_code": "370", "category_name": "", "item_name": "FA + FL + UA Rica Wax + Shapeup + Bleach\/D-Tan (Face &amp; Neck) + 10 Min Head Massage", "price": "2000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717004583.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "47", "conversion_rate": "1", "item_id": "378", "generic_name": "", "brand_id": "0", "item_code": "369", "category_name": "", "item_name": "FA + HL + Underarms With Choco Honey Wax + Shapeup + 5 Min Head Massage", "price": "1200", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717004490.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "32", "conversion_rate": "100", "item_id": "332", "generic_name": "Paracetamol", "brand_id": "22", "item_code": "323", "category_name": "", "item_name": "Fast XR", "price": "2", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716726480.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "1.5", "last_purchase_price": "200", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "96", "generic_name": "", "brand_id": "2", "item_code": "096", "category_name": "", "item_name": "FATUA SHIRT", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309344.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "500", "generic_name": "", "brand_id": "0", "item_code": "491", "category_name": "", "item_name": "fdsgsdfg", "price": "100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Serial_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "42", "conversion_rate": "1", "item_id": "400", "generic_name": "", "brand_id": "0", "item_code": "391", "category_name": "", "item_name": "Feather Haircut", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006580.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "44", "conversion_rate": "1", "item_id": "413", "generic_name": "", "brand_id": "0", "item_code": "404", "category_name": "", "item_name": "Festive Makeup", "price": "2500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042745.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "21", "generic_name": "", "brand_id": "5", "item_code": "021", "category_name": "", "item_name": "FITTED PUNJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308213.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "448", "generic_name": "", "brand_id": "0", "item_code": "439", "category_name": "", "item_name": "Flormar Makeup Remover Wet Wipes", "price": "780", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524451.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "775", "last_purchase_price": "765", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "450", "generic_name": "", "brand_id": "0", "item_code": "441", "category_name": "", "item_name": "Flormar Makeup Remover Wet Wipes", "price": "780", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524645.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "775", "last_purchase_price": "765", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "492", "generic_name": "", "brand_id": "0", "item_code": "483", "category_name": "", "item_name": "flower", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "23", "conversion_rate": "52", "item_id": "318", "generic_name": "Flucloxacillin Sodium", "brand_id": "26", "item_code": "309", "category_name": "", "item_name": "Flubac", "price": "5.77", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716721863.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "5", "last_purchase_price": "234", "warranty": "0", "guarantee": "0", "brand_name": " - Popular Pharmaceuticals Ltd.", "supplier_name": " - Popular Pharmacitical", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "23", "conversion_rate": "100", "item_id": "315", "generic_name": "Flucloxacillin Sodium", "brand_id": "23", "item_code": "306", "category_name": "", "item_name": "Fluclox", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716720930.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "600", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "453", "generic_name": "", "brand_id": "0", "item_code": "444", "category_name": "", "item_name": "Fogg Scent Women (I Am Queen)", "price": "900", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524868.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "890", "last_purchase_price": "880", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "47", "conversion_rate": "1", "item_id": "380", "generic_name": "", "brand_id": "0", "item_code": "371", "category_name": "", "item_name": "Foot + Head + Shoulder Massage + Hair Cut + FA + UA Honey Choco Wax+ Shapeup", "price": "2500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717004638.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "121", "generic_name": "", "brand_id": "1", "item_code": "121", "category_name": "", "item_name": "Foreign Premium Quality Jeans Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309519.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "81", "generic_name": "", "brand_id": "1", "item_code": "081", "category_name": "", "item_name": "FORMAL SHIRT", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309167.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "20", "item_id": "461", "generic_name": "", "brand_id": "0", "item_code": "452", "category_name": "", "item_name": "Fresh Chinigura Rice", "price": "160", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717526529.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "155", "last_purchase_price": "3000", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "10", "item_id": "463", "generic_name": "", "brand_id": "0", "item_code": "454", "category_name": "", "item_name": "Fresh Refined Sugar", "price": "135", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717526824.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "130", "last_purchase_price": "1200", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "42", "conversion_rate": "1", "item_id": "402", "generic_name": "", "brand_id": "0", "item_code": "393", "category_name": "", "item_name": "Front Layer Hair Cut", "price": "500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006663.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "86", "generic_name": "", "brand_id": "1", "item_code": "086", "category_name": "", "item_name": "Full Sleeve Classic Fit Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309209.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "218", "generic_name": "", "brand_id": "16", "item_code": "209", "category_name": "", "item_name": "G Watch Urbane 2nd Edition LTE", "price": "38610", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716449551.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "19800", "last_purchase_price": "17600", "warranty": "10", "guarantee": "2", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "126", "generic_name": "", "brand_id": "1", "item_code": "126", "category_name": "", "item_name": "Gabardine Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309552.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "6", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "252", "generic_name": "", "brand_id": "7", "item_code": "243", "category_name": "", "item_name": "Galaxy S24 Ultra", "price": "152371", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716466402.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "121991", "last_purchase_price": "58649", "warranty": "2", "guarantee": "6", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "502", "generic_name": "", "brand_id": "0", "item_code": "493", "category_name": "", "item_name": "Gearbox serviceing", "price": "500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "24", "conversion_rate": "60", "item_id": "320", "generic_name": "Gliclazide", "brand_id": "22", "item_code": "311", "category_name": "", "item_name": "Gliclid", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716722231.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "360", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "25", "conversion_rate": "10", "item_id": "325", "generic_name": "Sitagliptin", "brand_id": "20", "item_code": "316", "category_name": "", "item_name": "Glipita", "price": "25", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716723614.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "23", "last_purchase_price": "220", "warranty": "0", "guarantee": "0", "brand_name": " - Beximco Pharmaceuticals Ltd.", "supplier_name": " - Beximco", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "459", "generic_name": "", "brand_id": "0", "item_code": "450", "category_name": "", "item_name": "Glitter Glass & Surface Cleaner", "price": "150", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717525512.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "145", "last_purchase_price": "135", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "41", "conversion_rate": "1", "item_id": "396", "generic_name": "", "brand_id": "0", "item_code": "387", "category_name": "", "item_name": "Global Color \u2013 Loreal Inoa (Below Waist)", "price": "3500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006331.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "41", "conversion_rate": "1", "item_id": "397", "generic_name": "", "brand_id": "0", "item_code": "388", "category_name": "", "item_name": "Global Color \u2013 Loreal Inoa (Upto Waist)", "price": "2300", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006376.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "43", "conversion_rate": "1", "item_id": "407", "generic_name": "", "brand_id": "0", "item_code": "398", "category_name": "", "item_name": "Global Fashion Color- Signature Reflects Long (Lower Back)", "price": "4000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042381.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "43", "conversion_rate": "1", "item_id": "406", "generic_name": "", "brand_id": "0", "item_code": "397", "category_name": "", "item_name": "Global Fashion Color- Signature Reflects Medium (Below Neck)", "price": "2800", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042346.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "43", "conversion_rate": "1", "item_id": "405", "generic_name": "", "brand_id": "0", "item_code": "396", "category_name": "", "item_name": "Global Fashion Color- Signature Reflects Short (Till Neck)", "price": "3000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042247.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "24", "conversion_rate": "50", "item_id": "322", "generic_name": "Gliclazide", "brand_id": "26", "item_code": "313", "category_name": "", "item_name": "Gluzit", "price": "7", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716722527.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "6", "last_purchase_price": "250", "warranty": "0", "guarantee": "0", "brand_name": " - Popular Pharmaceuticals Ltd.", "supplier_name": " - Popular Pharmacitical", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "457", "generic_name": "", "brand_id": "0", "item_code": "448", "category_name": "", "item_name": "Godrej Aer Power Pocket Bathroom Fragrance Berry Rush", "price": "280", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717525323.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "270", "last_purchase_price": "260", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "460", "generic_name": "", "brand_id": "0", "item_code": "451", "category_name": "", "item_name": "Godrej Good Knight Power Activ+ (Machine + Refill)", "price": "200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717525586.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "189", "last_purchase_price": "170", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "433", "generic_name": "", "brand_id": "0", "item_code": "424", "category_name": "", "item_name": "Goofi Flash Card English", "price": "350", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717521557.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "345", "last_purchase_price": "240", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "50", "generic_name": null, "brand_id": "1", "item_code": "046-04", "category_name": "", "item_name": "Gray", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288834.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "8000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "46" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "55", "generic_name": null, "brand_id": "2", "item_code": "051-04", "category_name": "", "item_name": "Gray", "price": "550", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289196.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "450", "last_purchase_price": "3500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "51" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "70", "generic_name": null, "brand_id": "5", "item_code": "066-04", "category_name": "", "item_name": "Gray", "price": "895", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290822.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "795", "last_purchase_price": "6000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "66" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "75", "generic_name": null, "brand_id": "3", "item_code": "071-04", "category_name": "", "item_name": "Gray", "price": "520", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291255.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "420", "last_purchase_price": "3000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "71" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "80", "generic_name": null, "brand_id": "3", "item_code": "076-04", "category_name": "", "item_name": "Gray", "price": "700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291715.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "76" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "85", "generic_name": null, "brand_id": "1", "item_code": "081-04", "category_name": "", "item_name": "Gray", "price": "1880", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716292551.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "81" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "154", "generic_name": null, "brand_id": "3", "item_code": "151-03", "category_name": "", "item_name": "Gray", "price": "600", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298714.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "500", "last_purchase_price": "400", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "151" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "172", "generic_name": null, "brand_id": "2", "item_code": "168-04", "category_name": "", "item_name": "Gray", "price": "750", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301466.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "650", "last_purchase_price": "500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "168" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "429", "generic_name": null, "brand_id": "1", "item_code": "416-04", "category_name": "", "item_name": "Gray - L", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717332154.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "0", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "425" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "428", "generic_name": null, "brand_id": "1", "item_code": "416-03", "category_name": "", "item_name": "Gray - M", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717332146.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "0", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "425" }, { "cat_id": "41", "conversion_rate": "1", "item_id": "398", "generic_name": "", "brand_id": "0", "item_code": "389", "category_name": "", "item_name": "Hair Spa Treatment By Calix Organic Hair Spa (Below Shoulder)", "price": "600", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006441.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "41", "conversion_rate": "1", "item_id": "399", "generic_name": "", "brand_id": "0", "item_code": "390", "category_name": "", "item_name": "Hair Spa Treatment By Calix Organic Hair Spa (Up To Waist)", "price": "1020", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006498.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "449", "generic_name": "", "brand_id": "0", "item_code": "440", "category_name": "", "item_name": "HairCode Egypt Herbal Powder Hair Color (Black) 5 gm", "price": "45", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524532.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "40", "last_purchase_price": "35", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "436", "generic_name": "", "brand_id": "0", "item_code": "427", "category_name": "", "item_name": "Haisenpet Clumping Cat Litter Lavender", "price": "449", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717522436.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "445", "last_purchase_price": "439", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "48", "conversion_rate": "1", "item_id": "382", "generic_name": "", "brand_id": "0", "item_code": "373", "category_name": "", "item_name": "Half Arms With Honey Choco Wax", "price": "250", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717004989.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "48", "conversion_rate": "1", "item_id": "384", "generic_name": "", "brand_id": "0", "item_code": "375", "category_name": "", "item_name": "Half Arms With Rica Roll-On Wax (Without Under Arms)", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005161.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "66", "generic_name": "", "brand_id": "5", "item_code": "066", "category_name": "", "item_name": "Henley T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308853.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "445", "generic_name": "", "brand_id": "0", "item_code": "436", "category_name": "", "item_name": "HMBR Top Security Pad Lock", "price": "439", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523727.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "430", "last_purchase_price": "425", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "288", "generic_name": "", "brand_id": "9", "item_code": "279", "category_name": "", "item_name": "HP 16GB DDR4 2666MHz", "price": "15120", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716636699.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "12893", "last_purchase_price": "11721", "warranty": "3", "guarantee": "1", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "287", "generic_name": "", "brand_id": "9", "item_code": "278", "category_name": "", "item_name": "HP 8GB DDR4 2400MHz", "price": "8087", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716636430.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "7032", "last_purchase_price": "6446", "warranty": "3", "guarantee": "3", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "247", "generic_name": "", "brand_id": "9", "item_code": "238", "category_name": "", "item_name": "HP Elite Dragonfly G2", "price": "211105", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716462504.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "158329", "last_purchase_price": "152465", "warranty": "2", "guarantee": "6", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "246", "generic_name": "", "brand_id": "9", "item_code": "237", "category_name": "", "item_name": "HP EliteBook x360 1030 G7", "price": "199377", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716462251.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "149533", "last_purchase_price": "140736", "warranty": "2", "guarantee": "6", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "256", "generic_name": "", "brand_id": "9", "item_code": "247", "category_name": "", "item_name": "HP EliteDisplay E243", "price": "32701", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716618126.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "28013", "last_purchase_price": "25786", "warranty": "2", "guarantee": "3", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "272", "generic_name": "", "brand_id": "9", "item_code": "263", "category_name": "", "item_name": "HP Envy 13", "price": "117092", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716629636.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "99511", "last_purchase_price": "93768", "warranty": "2", "guarantee": "1", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "280", "generic_name": "", "brand_id": "9", "item_code": "271", "category_name": "", "item_name": "HP Intel Core i7-10750H", "price": "46766", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716632798.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "42078", "last_purchase_price": "39734", "warranty": "2", "guarantee": "3", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "279", "generic_name": "", "brand_id": "9", "item_code": "270", "category_name": "", "item_name": "HP Ryzen 5 4600H", "price": "29185", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716632730.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "25668", "last_purchase_price": "23442", "warranty": "2", "guarantee": "3", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "271", "generic_name": "", "brand_id": "9", "item_code": "262", "category_name": "", "item_name": "HP Spectre x360 14", "price": "152255", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716629481.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "128813", "last_purchase_price": "123070", "warranty": "2", "guarantee": "3", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "255", "generic_name": "", "brand_id": "9", "item_code": "246", "category_name": "", "item_name": "HP Z27 4K UHD Display", "price": "70208", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716617681.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "58487", "last_purchase_price": "52744", "warranty": "3", "guarantee": "6", "brand_name": " - HP", "supplier_name": " - HP", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "226", "generic_name": "", "brand_id": "15", "item_code": "217", "category_name": "", "item_name": "Huawei MatePad Pro 12.6 (5G)", "price": "105435", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716453012.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "84442", "last_purchase_price": "46912", "warranty": "1", "guarantee": "6", "brand_name": " - Huawei", "supplier_name": " - Huawei", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "227", "generic_name": "", "brand_id": "15", "item_code": "218", "category_name": "", "item_name": "Huawei MediaPad M5 Lite (4G)", "price": "40931", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716453213.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "32838", "last_purchase_price": "23456", "warranty": "1", "guarantee": "6", "brand_name": " - Huawei", "supplier_name": " - Huawei", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "233", "generic_name": "", "brand_id": "15", "item_code": "224", "category_name": "", "item_name": "Huawei nova 8i (128GB, Moonlight Silver)", "price": "35066", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716457314.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "29320", "last_purchase_price": "19351", "warranty": "1", "guarantee": "2", "brand_name": " - Huawei", "supplier_name": " - Huawei", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "232", "generic_name": "", "brand_id": "15", "item_code": "223", "category_name": "", "item_name": "Huawei P50 Pro (256GB, Golden Black)", "price": "128891", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716457109.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "105552", "last_purchase_price": "64504", "warranty": "1", "guarantee": "3", "brand_name": " - Huawei", "supplier_name": " - Huawei", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "217", "generic_name": "", "brand_id": "15", "item_code": "208", "category_name": "", "item_name": "Huawei Watch 3 (LTE)", "price": "38390", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716449053.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "30800", "last_purchase_price": "16500", "warranty": "8", "guarantee": "1", "brand_name": " - Huawei", "supplier_name": " - Huawei", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "216", "generic_name": "", "brand_id": "15", "item_code": "207", "category_name": "", "item_name": "Huawei Watch GT 3 Pro (LTE)", "price": "40590", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716448789.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "33000", "last_purchase_price": "17600", "warranty": "2", "guarantee": "1", "brand_name": " - Huawei", "supplier_name": " - Huawei", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "131", "generic_name": "", "brand_id": "2", "item_code": "131", "category_name": "", "item_name": "Indigo Jeans Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309585.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "41", "conversion_rate": "1", "item_id": "395", "generic_name": "", "brand_id": "0", "item_code": "386", "category_name": "", "item_name": "Inoa Touch-Up (Loreal)", "price": "900", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006245.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "293", "generic_name": "", "brand_id": "8", "item_code": "284", "category_name": "", "item_name": "INZONE M9 4K HDR Gaming Monior", "price": "81929", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716639956.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "70208", "last_purchase_price": "58487", "warranty": "2", "guarantee": "1", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "221", "generic_name": "", "brand_id": "6", "item_code": "212", "category_name": "", "item_name": "iPad Air (2022, Wi-Fi + Cellular)", "price": "82390", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716451163.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "69300", "last_purchase_price": "36850", "warranty": "2", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "220", "generic_name": "", "brand_id": "6", "item_code": "211", "category_name": "", "item_name": "iPad Pro 11-inch (2022, Wi-Fi + Cellular)", "price": "109890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716450744.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "93500", "last_purchase_price": "44000", "warranty": "2", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "228", "generic_name": "", "brand_id": "6", "item_code": "219", "category_name": "", "item_name": "iPhone 13 Pro (256GB, Graphite)", "price": "117163", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716456129.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "99688", "last_purchase_price": "58000", "warranty": "2", "guarantee": "6", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "229", "generic_name": "", "brand_id": "6", "item_code": "220", "category_name": "", "item_name": "iPhone SE (128GB, Black)", "price": "46795", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716456376.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "38702", "last_purchase_price": "23456", "warranty": "1", "guarantee": "1", "brand_name": " - Apple", "supplier_name": " - Apple", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "26", "conversion_rate": "30", "item_id": "329", "generic_name": "Ivermectin", "brand_id": "20", "item_code": "320", "category_name": "", "item_name": "Ivera", "price": "10", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716724776.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "9", "last_purchase_price": "240", "warranty": "0", "guarantee": "0", "brand_name": " - Beximco Pharmaceuticals Ltd.", "supplier_name": " - Beximco", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "25", "conversion_rate": "30", "item_id": "324", "generic_name": "Sitagliptin", "brand_id": "22", "item_code": "315", "category_name": "", "item_name": "Janvia", "price": "16", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716723265.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "15", "last_purchase_price": "420", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACME", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "61", "generic_name": "", "brand_id": "5", "item_code": "061", "category_name": "", "item_name": "Jersey Short Sleeve T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308769.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "88", "generic_name": null, "brand_id": "1", "item_code": "086-02", "category_name": "", "item_name": "L", "price": "1700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293027.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "86" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "93", "generic_name": null, "brand_id": "2", "item_code": "091-02", "category_name": "", "item_name": "L", "price": "1230", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293261.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1120", "last_purchase_price": "1000", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "91" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "98", "generic_name": null, "brand_id": "2", "item_code": "096-02", "category_name": "", "item_name": "L", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293617.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1100", "last_purchase_price": "1000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "96" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "103", "generic_name": null, "brand_id": "5", "item_code": "101-02", "category_name": "", "item_name": "L", "price": "1400", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294071.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "101" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "108", "generic_name": null, "brand_id": "5", "item_code": "106-02", "category_name": "", "item_name": "L", "price": "2790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294394.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2600", "last_purchase_price": "2300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "106" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "113", "generic_name": null, "brand_id": "0", "item_code": "111-02", "category_name": "", "item_name": "L", "price": "2144", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294656.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1900", "last_purchase_price": "1700", "warranty": "7", "guarantee": "0", "brand_name": "", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "111" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "118", "generic_name": null, "brand_id": "3", "item_code": "116-02", "category_name": "", "item_name": "L", "price": "1675", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/0060000147720.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "116" }, { "cat_id": "60", "conversion_rate": "1", "item_id": "483", "generic_name": "", "brand_id": "0", "item_code": "474", "category_name": "", "item_name": "Laptop Keyboard Repair & Replacement", "price": "550", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717672543.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "60", "conversion_rate": "1", "item_id": "482", "generic_name": "", "brand_id": "0", "item_code": "473", "category_name": "", "item_name": "Laptop water damage repair", "price": "740", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717672395.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "501", "generic_name": "", "brand_id": "30", "item_code": "492", "category_name": "", "item_name": "LED tv", "price": "5000", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"0\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"0\"}]", "item_type": "General_Product", "whole_sale_price": "3000", "last_purchase_price": "1800", "warranty": "12", "guarantee": "12", "brand_name": " - Panasonic", "supplier_name": " - Ruwantha", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "248", "generic_name": "", "brand_id": "18", "item_code": "239", "category_name": "", "item_name": "Lenovo ThinkPad Devices", "price": "199377", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716462926.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "149533", "last_purchase_price": "141323", "warranty": "2", "guarantee": "6", "brand_name": " - Lenovo", "supplier_name": " - Lenovo", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "249", "generic_name": "", "brand_id": "18", "item_code": "240", "category_name": "", "item_name": "Lenovo ThinkPad X1 Yoga (Gen 6) with LTE", "price": "211105", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716463128.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "170057", "last_purchase_price": "158329", "warranty": "2", "guarantee": "6", "brand_name": " - Lenovo", "supplier_name": " - Lenovo", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "260", "generic_name": "", "brand_id": "16", "item_code": "251", "category_name": "", "item_name": "LG 27UK850-W", "price": "64348", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716622974.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "56143", "last_purchase_price": "52744", "warranty": "2", "guarantee": "1", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "263", "generic_name": "", "brand_id": "16", "item_code": "254", "category_name": "", "item_name": "LG C1 OLED 4K", "price": "175697", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716624209.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "152255", "last_purchase_price": "140652", "warranty": "2", "guarantee": "1", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "355", "generic_name": "", "brand_id": "16", "item_code": "346", "category_name": "", "item_name": "LG FHT1408ZWL", "price": "82047", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716787158.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "76186", "last_purchase_price": "70326", "warranty": "5", "guarantee": "3", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "342", "generic_name": "", "brand_id": "16", "item_code": "333", "category_name": "", "item_name": "LG GL-B201APZY", "price": "76154", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716742579.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "70296", "last_purchase_price": "64438", "warranty": "12", "guarantee": "3", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "341", "generic_name": "", "brand_id": "16", "item_code": "332", "category_name": "", "item_name": "LG GL-T402JDSY", "price": "87870", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716742471.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "82012", "last_purchase_price": "76154", "warranty": "12", "guarantee": "3", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "366", "generic_name": "", "brand_id": "16", "item_code": "357", "category_name": "", "item_name": "LG KS-Q12YNXA", "price": "70200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716794192.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "64800", "last_purchase_price": "59400", "warranty": "5", "guarantee": "2", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "365", "generic_name": "", "brand_id": "16", "item_code": "356", "category_name": "", "item_name": "LG KS-Q18YNZA", "price": "86400", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716794088.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "81000", "last_purchase_price": "75600", "warranty": "5", "guarantee": "2", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "352", "generic_name": "", "brand_id": "16", "item_code": "343", "category_name": "", "item_name": "LG MJ3281BC", "price": "15230", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716745752.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "14059", "last_purchase_price": "12887", "warranty": "2", "guarantee": "1", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "351", "generic_name": "", "brand_id": "16", "item_code": "342", "category_name": "", "item_name": "LG MJ3965BPS", "price": "17574", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716745587.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "16402", "last_purchase_price": "15230", "warranty": "2", "guarantee": "1", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "264", "generic_name": "", "brand_id": "16", "item_code": "255", "category_name": "", "item_name": "LG NanoCell 90 Series 4K", "price": "117092", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716624440.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "99511", "last_purchase_price": "93768", "warranty": "2", "guarantee": "1", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "356", "generic_name": "", "brand_id": "16", "item_code": "347", "category_name": "", "item_name": "LG T7281NDDLG", "price": "46884", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716788023.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "42195", "last_purchase_price": "37507", "warranty": "3", "guarantee": "3", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "12", "conversion_rate": "1", "item_id": "259", "generic_name": "", "brand_id": "16", "item_code": "250", "category_name": "", "item_name": "LG UltraFine 5K Display", "price": "152255", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716622778.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "128813", "last_purchase_price": "123070", "warranty": "2", "guarantee": "1", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "219", "generic_name": "", "brand_id": "16", "item_code": "210", "category_name": "", "item_name": "LG Watch Sport (LTE)", "price": "42790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716449883.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "33000", "last_purchase_price": "19250", "warranty": "1", "guarantee": "3", "brand_name": " - LG", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "45", "generic_name": null, "brand_id": "1", "item_code": "041-04", "category_name": "", "item_name": "Light Green", "price": "690", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288403.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "560", "last_purchase_price": "4500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "41" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "9", "generic_name": null, "brand_id": "1", "item_code": "006-03", "category_name": "", "item_name": "Lightblue", "price": "2475", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716281685.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "6" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "38", "generic_name": null, "brand_id": "3", "item_code": "036-02", "category_name": "", "item_name": "Lightblue", "price": "2360", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716286069.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1800", "warranty": "10", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "36" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "44", "generic_name": null, "brand_id": "1", "item_code": "041-03", "category_name": "", "item_name": "Lightblue", "price": "690", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288394.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "560", "last_purchase_price": "4500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "41" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "78", "generic_name": null, "brand_id": "3", "item_code": "076-02", "category_name": "", "item_name": "Lightblue", "price": "700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291696.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "76" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "83", "generic_name": null, "brand_id": "1", "item_code": "081-02", "category_name": "", "item_name": "Lightblue", "price": "1880", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716292536.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "81" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "178", "generic_name": "", "brand_id": "5", "item_code": "178", "category_name": "", "item_name": "Loafer", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309929.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "1", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "106", "generic_name": "", "brand_id": "5", "item_code": "106", "category_name": "", "item_name": "Long Sleeve B.Formal Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309404.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "39", "conversion_rate": "1", "item_id": "389", "generic_name": "", "brand_id": "0", "item_code": "380", "category_name": "", "item_name": "Lotus Radiant Golden Glow Facial", "price": "900", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005804.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "24", "conversion_rate": "60", "item_id": "319", "generic_name": "Gliclazide", "brand_id": "23", "item_code": "310", "category_name": "", "item_name": "Lozide", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716722077.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "360", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "87", "generic_name": null, "brand_id": "1", "item_code": "086-01", "category_name": "", "item_name": "M", "price": "1700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293020.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "86" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "92", "generic_name": null, "brand_id": "2", "item_code": "091-01", "category_name": "", "item_name": "M", "price": "1230", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293252.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1120", "last_purchase_price": "1000", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "91" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "97", "generic_name": null, "brand_id": "2", "item_code": "096-01", "category_name": "", "item_name": "M", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293611.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1100", "last_purchase_price": "1000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "96" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "102", "generic_name": null, "brand_id": "5", "item_code": "101-01", "category_name": "", "item_name": "M", "price": "1400", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294065.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "101" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "107", "generic_name": null, "brand_id": "5", "item_code": "106-01", "category_name": "", "item_name": "M", "price": "2790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294386.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2600", "last_purchase_price": "2300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "106" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "112", "generic_name": null, "brand_id": "0", "item_code": "111-01", "category_name": "", "item_name": "M", "price": "2144", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294650.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1900", "last_purchase_price": "1700", "warranty": "7", "guarantee": "0", "brand_name": "", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "111" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "117", "generic_name": null, "brand_id": "3", "item_code": "116-01", "category_name": "", "item_name": "M", "price": "1675", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/0060000147719.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "116" }, { "cat_id": "46", "conversion_rate": "1", "item_id": "418", "generic_name": "", "brand_id": "0", "item_code": "409", "category_name": "", "item_name": "Mani &amp; Pedi Luxury Crystal Spa", "price": "1500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043091.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "46", "conversion_rate": "1", "item_id": "419", "generic_name": "", "brand_id": "0", "item_code": "410", "category_name": "", "item_name": "Manicure Magnifying Charm", "price": "800", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043144.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "22", "conversion_rate": "140", "item_id": "312", "generic_name": "Esomeprazole", "brand_id": "22", "item_code": "303", "category_name": "", "item_name": "Maxima", "price": "7", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716720280.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "6", "last_purchase_price": "700", "warranty": "0", "guarantee": "0", "brand_name": " - ACME Laboratories Ltd.", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "11", "generic_name": "", "brand_id": "2", "item_code": "011", "category_name": "", "item_name": "MENS KABLI PUNJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308135.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "471", "generic_name": "", "brand_id": "0", "item_code": "462", "category_name": "", "item_name": "Meril Lipgel", "price": "49", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527995.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "40", "last_purchase_price": "35", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "451", "generic_name": "", "brand_id": "0", "item_code": "442", "category_name": "", "item_name": "Meril Milk & Belly Soap Bar", "price": "55", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524730.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "50", "last_purchase_price": "40", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "245", "generic_name": "", "brand_id": "17", "item_code": "236", "category_name": "", "item_name": "Microsoft Surface Go 3 (LTE Model)", "price": "87960", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716461850.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "66263", "last_purchase_price": "65090", "warranty": "2", "guarantee": "5", "brand_name": " - Microsoft", "supplier_name": " - Mircosoft", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "10", "conversion_rate": "1", "item_id": "244", "generic_name": "", "brand_id": "17", "item_code": "235", "category_name": "", "item_name": "Microsoft Surface Pro 7+ (LTE Model)", "price": "140736", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716461596.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "105552", "last_purchase_price": "93824", "warranty": "2", "guarantee": "1", "brand_name": " - Microsoft", "supplier_name": " - Mircosoft", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "64", "conversion_rate": "1", "item_id": "486", "generic_name": "", "brand_id": "32", "item_code": "477", "category_name": "", "item_name": "Milk Biscuit", "price": "380", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1718893661.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":0},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":0},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":0},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":0}]", "item_type": "General_Product", "whole_sale_price": "0", "last_purchase_price": "350", "warranty": "0", "guarantee": "0", "brand_name": " - Nalibon", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "58", "conversion_rate": "1", "item_id": "479", "generic_name": "", "brand_id": "0", "item_code": "470", "category_name": "", "item_name": "Mobile display repair", "price": "1000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717671811.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "24", "item_id": "467", "generic_name": "", "brand_id": "0", "item_code": "458", "category_name": "", "item_name": "Mojo Soft Drink", "price": "100", "sale_unit_name": "Bottle", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527487.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "90", "last_purchase_price": "1920", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "21", "conversion_rate": "100", "item_id": "309", "generic_name": "Domperidone Maleate", "brand_id": "25", "item_code": "300", "category_name": "", "item_name": "Motigut", "price": "3.5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716719383.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "3", "last_purchase_price": "250", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "42", "conversion_rate": "1", "item_id": "403", "generic_name": "", "brand_id": "0", "item_code": "394", "category_name": "", "item_name": "Multi-Layer Cutting With Graduation", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006725.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "20", "conversion_rate": "30", "item_id": "306", "generic_name": "Clopidogrel Bisulphate", "brand_id": "24", "item_code": "297", "category_name": "", "item_name": "Myoclop", "price": "10", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716718452.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "9", "last_purchase_price": "240", "warranty": "0", "guarantee": "0", "brand_name": " -  Biopharma Limited", "supplier_name": " - Biopharma", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "188", "generic_name": "", "brand_id": "3", "item_code": "188", "category_name": "", "item_name": "Nagra", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309980.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "1", "guarantee": "1", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "32", "conversion_rate": "510", "item_id": "333", "generic_name": "Paracetamol", "brand_id": "20", "item_code": "324", "category_name": "", "item_name": "Napa", "price": "1.2", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716726694.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "1", "last_purchase_price": "408", "warranty": "0", "guarantee": "0", "brand_name": " - Beximco Pharmaceuticals Ltd.", "supplier_name": " - Beximco", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "8", "generic_name": null, "brand_id": "1", "item_code": "006-02", "category_name": "", "item_name": "Navy Blue", "price": "2475", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716281666.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "6" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "13", "generic_name": null, "brand_id": "2", "item_code": "011-02", "category_name": "", "item_name": "Navy Blue", "price": "5570", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282465.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "5000", "last_purchase_price": "4500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "11" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "18", "generic_name": null, "brand_id": "2", "item_code": "016-02", "category_name": "", "item_name": "Navy Blue", "price": "3260", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282852.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "3000", "last_purchase_price": "2500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "16" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "23", "generic_name": null, "brand_id": "5", "item_code": "021-02", "category_name": "", "item_name": "Navy Blue", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716283732.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "21" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "28", "generic_name": null, "brand_id": "5", "item_code": "026-02", "category_name": "", "item_name": "Navy Blue", "price": "3095", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284158.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2400", "warranty": "10", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "26" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "33", "generic_name": null, "brand_id": "3", "item_code": "031-02", "category_name": "", "item_name": "Navy Blue", "price": "1655", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284878.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1555", "last_purchase_price": "1255", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "31" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "43", "generic_name": null, "brand_id": "1", "item_code": "041-02", "category_name": "", "item_name": "Navy Blue", "price": "690", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288384.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "560", "last_purchase_price": "4500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "41" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "58", "generic_name": null, "brand_id": "2", "item_code": "056-02", "category_name": "", "item_name": "Navy Blue", "price": "1100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289498.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "56" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "69", "generic_name": null, "brand_id": "5", "item_code": "066-03", "category_name": "", "item_name": "Navy Blue", "price": "895", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290814.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "795", "last_purchase_price": "6000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "66" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "170", "generic_name": null, "brand_id": "2", "item_code": "168-02", "category_name": "", "item_name": "Navy Blue", "price": "750", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301453.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "650", "last_purchase_price": "500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "168" }, { "cat_id": "22", "conversion_rate": "60", "item_id": "314", "generic_name": "Esomeprazole", "brand_id": "25", "item_code": "305", "category_name": "", "item_name": "Nexum", "price": "7.2", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716720696.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "6.5", "last_purchase_price": "330", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "49", "conversion_rate": "1", "item_id": "424", "generic_name": "", "brand_id": "31", "item_code": "415", "category_name": "", "item_name": "NIVEA Milk Delights Women\u2019s Face Wash with Honey", "price": "500", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717047466.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "450", "last_purchase_price": "400", "warranty": "0", "guarantee": "0", "brand_name": " - NIVEA", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "442", "generic_name": "", "brand_id": "0", "item_code": "433", "category_name": "", "item_name": "Npoly Kitchen Chopping Board (White) 33.5 cm", "price": "150", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523442.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "145", "last_purchase_price": "140", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "447", "generic_name": "", "brand_id": "0", "item_code": "438", "category_name": "", "item_name": "Npoly Printed Container (Tr Pink) 10 ltr", "price": "195", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523878.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "185", "last_purchase_price": "175", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "56", "conversion_rate": "1", "item_id": "475", "generic_name": "", "brand_id": "0", "item_code": "466", "category_name": "", "item_name": "Oil Change", "price": "65", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717668503.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "268", "generic_name": "", "brand_id": "19", "item_code": "259", "category_name": "", "item_name": "Panasonic GX800 LED 4K", "price": "81929", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716625435.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "70208", "last_purchase_price": "64465", "warranty": "2", "guarantee": "1", "brand_name": " - Penasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "267", "generic_name": "", "brand_id": "19", "item_code": "258", "category_name": "", "item_name": "Panasonic HZ2000 OLED 4K", "price": "410117", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716625291.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "351512", "last_purchase_price": "334048", "warranty": "3", "guarantee": "6", "brand_name": " - Penasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "345", "generic_name": "", "brand_id": "30", "item_code": "336", "category_name": "", "item_name": "Panasonic MX-AC400", "price": "14059", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716743226.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "11716", "last_purchase_price": "10544", "warranty": "2", "guarantee": "2", "brand_name": " - Panasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "346", "generic_name": "", "brand_id": "30", "item_code": "337", "category_name": "", "item_name": "Panasonic MX-GX1561", "price": "9372", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716743351.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "8201", "last_purchase_price": "7029", "warranty": "2", "guarantee": "1", "brand_name": " - Panasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "357", "generic_name": "", "brand_id": "30", "item_code": "348", "category_name": "", "item_name": "Panasonic NA-F70S7", "price": "41023", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716791077.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "37507", "last_purchase_price": "33990", "warranty": "5", "guarantee": "3", "brand_name": " - Panasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "358", "generic_name": "", "brand_id": "30", "item_code": "349", "category_name": "", "item_name": "Panasonic NA-F72B7", "price": "44539", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716791264.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "41023", "last_purchase_price": "37507", "warranty": "5", "guarantee": "2", "brand_name": " - Panasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "375", "generic_name": "", "brand_id": "30", "item_code": "366", "category_name": "", "item_name": "Panasonic SR-PG501", "price": "16200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716823116.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "15120", "last_purchase_price": "14040", "warranty": "2", "guarantee": "1", "brand_name": " - Panasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "376", "generic_name": "", "brand_id": "30", "item_code": "367", "category_name": "", "item_name": "Panasonic SR-PG601", "price": "18360", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716823211.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "17280", "last_purchase_price": "16200", "warranty": "2", "guarantee": "1", "brand_name": " - Panasonic", "supplier_name": " - Penasonic", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "434", "generic_name": "", "brand_id": "0", "item_code": "425", "category_name": "", "item_name": "Panlos Brick RX-0 12 In 1 Lego Building Blocks Toy", "price": "3500", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717521707.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "3480", "last_purchase_price": "3470", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "46", "conversion_rate": "1", "item_id": "420", "generic_name": "", "brand_id": "0", "item_code": "411", "category_name": "", "item_name": "Pedicure Luxury Care", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043185.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "438", "generic_name": "", "brand_id": "0", "item_code": "429", "category_name": "", "item_name": "Pedigree Home Style Adult Dog Food Beef", "price": "399", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717522696.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "395", "last_purchase_price": "390", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "469", "generic_name": "", "brand_id": "0", "item_code": "460", "category_name": "", "item_name": "Petme Oral +Plus Gel", "price": "499", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527698.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "485", "last_purchase_price": "475", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "23", "conversion_rate": "100", "item_id": "317", "generic_name": "Flucloxacillin Sodium", "brand_id": "25", "item_code": "308", "category_name": "", "item_name": "Phylopen", "price": "8", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716721557.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "7", "last_purchase_price": "600", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "56", "generic_name": "", "brand_id": "2", "item_code": "056", "category_name": "", "item_name": "POLO SHIRT HALF", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308732.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "46", "generic_name": "", "brand_id": "1", "item_code": "046", "category_name": "", "item_name": "Polo T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308618.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "493", "generic_name": "", "brand_id": "0", "item_code": "484", "category_name": "", "item_name": "Power Bank", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - Ruwantha", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "45", "conversion_rate": "1", "item_id": "415", "generic_name": "", "brand_id": "0", "item_code": "406", "category_name": "", "item_name": "Premium Bridal Makeup", "price": "10000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042892.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "45", "conversion_rate": "1", "item_id": "416", "generic_name": "", "brand_id": "0", "item_code": "407", "category_name": "", "item_name": "Premium HD Bridal Makeup", "price": "20000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042944.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "111", "generic_name": "", "brand_id": "0", "item_code": "111", "category_name": "", "item_name": "Printed Cotton Executive Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309449.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": "", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "76", "generic_name": "", "brand_id": "3", "item_code": "076", "category_name": "", "item_name": "Printed Cotton T-Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308932.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "41", "generic_name": "", "brand_id": "1", "item_code": "041", "category_name": "", "item_name": "PRINTED T-SHIRT", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308502.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "435", "generic_name": "", "brand_id": "0", "item_code": "426", "category_name": "", "item_name": "Pro Young Full Set (Bat, Net, Net Hanger, Ball)", "price": "650", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717521839.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "645", "last_purchase_price": "640", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "19", "conversion_rate": "50", "item_id": "299", "generic_name": "Bisoprolol Fumarate", "brand_id": "23", "item_code": "290", "category_name": "", "item_name": "Probis Plus", "price": "11", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716711889.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "10", "last_purchase_price": "450", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "22", "conversion_rate": "50", "item_id": "313", "generic_name": "Esomeprazole", "brand_id": "26", "item_code": "304", "category_name": "", "item_name": "Progut", "price": "5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716720493.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "4", "last_purchase_price": "150", "warranty": "0", "guarantee": "0", "brand_name": " - Popular Pharmaceuticals Ltd.", "supplier_name": " - Popular Pharmacitical", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "443", "generic_name": "", "brand_id": "0", "item_code": "434", "category_name": "", "item_name": "Pureit Classic Germ Kill Kit", "price": "800", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523568.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "790", "last_purchase_price": "780", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "503", "generic_name": "", "brand_id": "35", "item_code": "494", "category_name": "", "item_name": "Quest Hot & Spicy Protein Chip, single bag, 1.1oz", "price": "2.7", "sale_unit_name": "Packet", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1728819593.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "General_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": " - Amazon", "supplier_name": " - Buy box", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "440", "generic_name": "", "brand_id": "0", "item_code": "431", "category_name": "", "item_name": "Quik Budgie Food", "price": "450", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523097.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "445", "last_purchase_price": "435", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "55", "conversion_rate": "1", "item_id": "432", "generic_name": "", "brand_id": "0", "item_code": "423", "category_name": "", "item_name": "Rail king Train Set", "price": "799", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717521450.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "789", "last_purchase_price": "785", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "2", "generic_name": null, "brand_id": "1", "item_code": "001-01", "category_name": "", "item_name": "Red", "price": "1890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716280930.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1700", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "1" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "7", "generic_name": null, "brand_id": "1", "item_code": "006-01", "category_name": "", "item_name": "Red", "price": "2475", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716281648.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "6" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "12", "generic_name": null, "brand_id": "2", "item_code": "011-01", "category_name": "", "item_name": "Red", "price": "5570", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282446.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "5000", "last_purchase_price": "4500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "11" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "17", "generic_name": null, "brand_id": "2", "item_code": "016-01", "category_name": "", "item_name": "Red", "price": "3250", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282832.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "3000", "last_purchase_price": "2500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "16" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "22", "generic_name": null, "brand_id": "5", "item_code": "021-01", "category_name": "", "item_name": "Red", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716283705.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "21" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "27", "generic_name": null, "brand_id": "5", "item_code": "026-01", "category_name": "", "item_name": "Red", "price": "3095", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284150.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2400", "warranty": "10", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "26" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "42", "generic_name": null, "brand_id": "1", "item_code": "041-01", "category_name": "", "item_name": "Red", "price": "690", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288375.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "560", "last_purchase_price": "4500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "41" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "47", "generic_name": null, "brand_id": "1", "item_code": "046-01", "category_name": "", "item_name": "Red", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288809.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "8000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "46" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "62", "generic_name": null, "brand_id": "5", "item_code": "061-01", "category_name": "", "item_name": "Red", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290441.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "690", "last_purchase_price": "5900", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "61" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "67", "generic_name": null, "brand_id": "5", "item_code": "066-01", "category_name": "", "item_name": "Red", "price": "895", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290797.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "795", "last_purchase_price": "6000", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "66" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "72", "generic_name": null, "brand_id": "3", "item_code": "071-01", "category_name": "", "item_name": "Red", "price": "520", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291225.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "420", "last_purchase_price": "3000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "71" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "156", "generic_name": null, "brand_id": "3", "item_code": "155-01", "category_name": "", "item_name": "Red", "price": "830", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298881.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "700", "last_purchase_price": "600", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "155" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "165", "generic_name": null, "brand_id": "1", "item_code": "164-01", "category_name": "", "item_name": "Red", "price": "650", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301093.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "550", "last_purchase_price": "450", "warranty": "1", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "164" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "169", "generic_name": null, "brand_id": "2", "item_code": "168-01", "category_name": "", "item_name": "Red", "price": "750", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716301446.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "650", "last_purchase_price": "500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "168" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "427", "generic_name": null, "brand_id": "1", "item_code": "416-02", "category_name": "", "item_name": "Red - L", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717332139.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "0", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "425" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "209", "generic_name": null, "brand_id": "1", "item_code": "198-02", "category_name": "", "item_name": "Red - L", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716309496.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "6", "guarantee": "6", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "207" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "426", "generic_name": null, "brand_id": "1", "item_code": "416-01", "category_name": "", "item_name": "Red - M", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717332131.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "0", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "425" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "208", "generic_name": null, "brand_id": "1", "item_code": "198-01", "category_name": "", "item_name": "Red - M", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716309478.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "600", "last_purchase_price": "5000", "warranty": "6", "guarantee": "6", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "207" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "446", "generic_name": "", "brand_id": "0", "item_code": "437", "category_name": "", "item_name": "RFL English Dish Rack Red", "price": "630", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523792.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "620", "last_purchase_price": "600", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "458", "generic_name": "", "brand_id": "0", "item_code": "449", "category_name": "", "item_name": "Rok Dishwashing Mega Steel Scourer", "price": "200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717525411.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "190", "last_purchase_price": "175", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "10", "item_id": "466", "generic_name": "", "brand_id": "0", "item_code": "457", "category_name": "", "item_name": "Roshun (Garlic Imported)", "price": "250", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717527214.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "240", "last_purchase_price": "2300", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "292", "generic_name": "", "brand_id": "7", "item_code": "283", "category_name": "", "item_name": "Samsung 16GB DDR4 3600MHz", "price": "18636", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716637368.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "15823", "last_purchase_price": "14651", "warranty": "3", "guarantee": "2", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "16", "conversion_rate": "1", "item_id": "291", "generic_name": "", "brand_id": "7", "item_code": "282", "category_name": "", "item_name": "Samsung 8GB DDR4 3200MHz", "price": "10431", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716637218.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "8790", "last_purchase_price": "8204", "warranty": "2", "guarantee": "2", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "363", "generic_name": "", "brand_id": "7", "item_code": "354", "category_name": "", "item_name": "Samsung AR12NV3HLTRNNA", "price": "59400", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716793697.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "54000", "last_purchase_price": "48600", "warranty": "5", "guarantee": "2", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "364", "generic_name": "", "brand_id": "7", "item_code": "355", "category_name": "", "item_name": "Samsung AR18MV3HETS", "price": "81000", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716793956.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "75600", "last_purchase_price": "70200", "warranty": "5", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "283", "generic_name": "", "brand_id": "7", "item_code": "274", "category_name": "", "item_name": "Samsung Exynos 2100", "price": "35045", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716633466.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "30357", "last_purchase_price": "28013", "warranty": "2", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "17", "conversion_rate": "1", "item_id": "284", "generic_name": "", "brand_id": "7", "item_code": "275", "category_name": "", "item_name": "Samsung Exynos 990", "price": "29185", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716633655.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "24496", "last_purchase_price": "22152", "warranty": "2", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "275", "generic_name": "", "brand_id": "7", "item_code": "266", "category_name": "", "item_name": "Samsung Galaxy Book Pro 360", "price": "152255", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716630138.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "128813", "last_purchase_price": "123070", "warranty": "2", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "230", "generic_name": "", "brand_id": "7", "item_code": "221", "category_name": "", "item_name": "Samsung Galaxy S22 Ultra (512GB, Phantom Black)", "price": "140619", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716456443.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "117280", "last_purchase_price": "70368", "warranty": "2", "guarantee": "6", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "231", "generic_name": "", "brand_id": "7", "item_code": "222", "category_name": "", "item_name": "Samsung Galaxy S22 Ultra (512GB, Phantom Black)", "price": "52659", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716456848.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "43393", "last_purchase_price": "26974", "warranty": "1", "guarantee": "2", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "223", "generic_name": "", "brand_id": "7", "item_code": "214", "category_name": "", "item_name": "Samsung Galaxy Tab A8 (4G)", "price": "30690", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716451669.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "24200", "last_purchase_price": "12100", "warranty": "6", "guarantee": "1", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "222", "generic_name": "", "brand_id": "7", "item_code": "213", "category_name": "", "item_name": "Samsung Galaxy Tab S8+ (5G)", "price": "109890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716451565.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "86900", "last_purchase_price": "8950", "warranty": "2", "guarantee": "6", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "214", "generic_name": "", "brand_id": "7", "item_code": "205", "category_name": "", "item_name": "Samsung Galaxy Watch 5 (LTE)", "price": "34650", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716448177.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "27500", "last_purchase_price": "18700", "warranty": "1", "guarantee": "7", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "9", "conversion_rate": "1", "item_id": "215", "generic_name": "", "brand_id": "7", "item_code": "206", "category_name": "", "item_name": "Samsung Galaxy Watch Active 2 (LTE)", "price": "32890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716448401.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "26400", "last_purchase_price": "15400", "warranty": "8", "guarantee": "1", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "15", "conversion_rate": "1", "item_id": "276", "generic_name": "", "brand_id": "7", "item_code": "267", "category_name": "", "item_name": "Samsung Notebook 9 Pro", "price": "128813", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716630320.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "111232", "last_purchase_price": "105489", "warranty": "2", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "261", "generic_name": "", "brand_id": "7", "item_code": "252", "category_name": "", "item_name": "Samsung QN90A Neo QLED 4K", "price": "210860", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716623732.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "175697", "last_purchase_price": "164094", "warranty": "2", "guarantee": "2", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "340", "generic_name": "", "brand_id": "7", "item_code": "331", "category_name": "", "item_name": "Samsung RR20T1Y2XUT", "price": "70296", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716742356.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "64438", "last_purchase_price": "58580", "warranty": "12", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "339", "generic_name": "", "brand_id": "7", "item_code": "330", "category_name": "", "item_name": "Samsung RT28T3523S8", "price": "82012", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716742207.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "76154", "last_purchase_price": "70296", "warranty": "12", "guarantee": "3", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "262", "generic_name": "", "brand_id": "7", "item_code": "253", "category_name": "", "item_name": "Samsung TU8000 Crystal UHD 4K", "price": "64348", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716623851.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "52627", "last_purchase_price": "46884", "warranty": "1", "guarantee": "1", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "354", "generic_name": "", "brand_id": "7", "item_code": "345", "category_name": "", "item_name": "Samsung WA62M4100HY\/TL", "price": "41023", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716787034.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "37507", "last_purchase_price": "33990", "warranty": "3", "guarantee": "1", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "353", "generic_name": "", "brand_id": "7", "item_code": "344", "category_name": "", "item_name": "Samsung WW80J5410GX\/TL", "price": "70326", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716786848.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "64465", "last_purchase_price": "58605", "warranty": "5", "guarantee": "1", "brand_name": " - Samsung", "supplier_name": " - Samsung", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "46", "conversion_rate": "1", "item_id": "422", "generic_name": "", "brand_id": "0", "item_code": "413", "category_name": "", "item_name": "Sara Mani-Pedi Delight", "price": "1000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043286.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "46", "conversion_rate": "1", "item_id": "421", "generic_name": "", "brand_id": "0", "item_code": "412", "category_name": "", "item_name": "Sara Pedicure Pampering", "price": "800", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717043241.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "454", "generic_name": "", "brand_id": "0", "item_code": "445", "category_name": "", "item_name": "Schick Exacta 2 Sensitive Razor (Free 2 pcs)", "price": "280", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524938.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "275", "last_purchase_price": "265", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "101", "generic_name": "", "brand_id": "5", "item_code": "101", "category_name": "", "item_name": "Short sleeve Comfort Shirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309374.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "25", "conversion_rate": "20", "item_id": "326", "generic_name": "Sitagliptin", "brand_id": "25", "item_code": "317", "category_name": "", "item_name": "Siglita", "price": "13", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716723770.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "12", "last_purchase_price": "200", "warranty": "0", "guarantee": "0", "brand_name": " - Square Pharmaceuticals PLC", "supplier_name": " - Square", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "43", "conversion_rate": "1", "item_id": "409", "generic_name": "", "brand_id": "0", "item_code": "400", "category_name": "", "item_name": "Signature Highlight\/Streaks Medium (Below Neck)", "price": "4000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042487.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "43", "conversion_rate": "1", "item_id": "408", "generic_name": "", "brand_id": "0", "item_code": "399", "category_name": "", "item_name": "Signature Highlight\/Streaks Short (Till Neck)", "price": "3000", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717042446.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "368", "generic_name": "", "brand_id": "29", "item_code": "359", "category_name": "", "item_name": "Singer SAC-12SFI", "price": "48600", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716794431.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "44280", "last_purchase_price": "39960", "warranty": "3", "guarantee": "1", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "367", "generic_name": "", "brand_id": "29", "item_code": "358", "category_name": "", "item_name": "Singer SAC-18SFC", "price": "62640", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716794321.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "57240", "last_purchase_price": "51840", "warranty": "5", "guarantee": "2", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "369", "generic_name": "", "brand_id": "29", "item_code": "360", "category_name": "", "item_name": "Singer SPC-5L", "price": "6480", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716794999.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "5940", "last_purchase_price": "5400", "warranty": "2", "guarantee": "1", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "370", "generic_name": "", "brand_id": "29", "item_code": "361", "category_name": "", "item_name": "Singer SPC-7L", "price": "7560", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716795141.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "7020", "last_purchase_price": "6480", "warranty": "2", "guarantee": "1", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "344", "generic_name": "", "brand_id": "29", "item_code": "335", "category_name": "", "item_name": "Singer SRC-270G", "price": "49207", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716742895.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "44520", "last_purchase_price": "39834", "warranty": "12", "guarantee": "3", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "343", "generic_name": "", "brand_id": "29", "item_code": "334", "category_name": "", "item_name": "Singer SRC-350G", "price": "56236", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716742729.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "51550", "last_purchase_price": "46864", "warranty": "12", "guarantee": "3", "brand_name": " - Singer", "supplier_name": " - LG", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "359", "generic_name": "", "brand_id": "29", "item_code": "350", "category_name": "", "item_name": "Singer SWM-7300", "price": "35163", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716791522.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "31646", "last_purchase_price": "25082", "warranty": "3", "guarantee": "1", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "35", "conversion_rate": "1", "item_id": "360", "generic_name": "", "brand_id": "29", "item_code": "351", "category_name": "", "item_name": "Singer SWM-8550", "price": "46884", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716791826.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "42195", "last_purchase_price": "37507", "warranty": "5", "guarantee": "1", "brand_name": " - Singer", "supplier_name": " - Singer", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "12", "item_id": "498", "generic_name": null, "brand_id": "0", "item_code": "7441026000200-02", "category_name": "", "item_name": "Single", "price": "5", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "0", "whole_sale_price": "0", "last_purchase_price": "14.5", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - Ruwantha", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "496" }, { "cat_id": "25", "conversion_rate": "30", "item_id": "323", "generic_name": "Sitagliptin", "brand_id": "23", "item_code": "314", "category_name": "", "item_name": "Sitap", "price": "15.5", "sale_unit_name": "Bundle", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716723064.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "14.5", "last_purchase_price": "390", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "4", "generic_name": null, "brand_id": "1", "item_code": "001-03", "category_name": "", "item_name": "Sky Blue", "price": "1890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716280966.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1700", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "1" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "16", "generic_name": "", "brand_id": "2", "item_code": "016", "category_name": "", "item_name": "SLIM FIT PANJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308174.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "91", "generic_name": "", "brand_id": "2", "item_code": "091", "category_name": "", "item_name": "SLIM FIT SHIRT", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309269.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "437", "generic_name": "", "brand_id": "0", "item_code": "428", "category_name": "", "item_name": "SmartHeart Adult Cat Food Chicken & Tuna", "price": "2179", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717522597.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "2170", "last_purchase_price": "2150", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "265", "generic_name": "", "brand_id": "8", "item_code": "256", "category_name": "", "item_name": "Sony A90J OLED 4K", "price": "351512", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716624844.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "304628", "last_purchase_price": "293025", "warranty": "2", "guarantee": "1", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "1", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "13", "conversion_rate": "1", "item_id": "266", "generic_name": "", "brand_id": "8", "item_code": "257", "category_name": "", "item_name": "Sony X90J LED 4K", "price": "140534", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716625033.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Serial_Product", "whole_sale_price": "117092", "last_purchase_price": "111349", "warranty": "2", "guarantee": "1", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "234", "generic_name": "", "brand_id": "8", "item_code": "225", "category_name": "", "item_name": "Sony Xperia 1 III (256GB, Frosted Black)", "price": "152347", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716457542.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "129008", "last_purchase_price": "76232", "warranty": "2", "guarantee": "10", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "6", "conversion_rate": "1", "item_id": "235", "generic_name": "", "brand_id": "8", "item_code": "226", "category_name": "", "item_name": "Sony Xperia 10 III (128GB, Black)", "price": "46795", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716457707.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "38702", "last_purchase_price": "24628", "warranty": "1", "guarantee": "6", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "225", "generic_name": "", "brand_id": "8", "item_code": "216", "category_name": "", "item_name": "Sony Xperia Tablet Z (4G LTE)", "price": "58523", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716452616.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "45739", "last_purchase_price": "29320", "warranty": "1", "guarantee": "1", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "7", "conversion_rate": "1", "item_id": "224", "generic_name": "", "brand_id": "8", "item_code": "215", "category_name": "", "item_name": "Sony Xperia Z4 Tablet (4G LTE)", "price": "70251", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716452552.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "56294", "last_purchase_price": "35184", "warranty": "1", "guarantee": "2", "brand_name": " - Sony", "supplier_name": " - Sony", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "42", "conversion_rate": "1", "item_id": "401", "generic_name": "", "brand_id": "0", "item_code": "392", "category_name": "", "item_name": "Steps Hair Cut", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006614.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "51", "generic_name": "", "brand_id": "2", "item_code": "051", "category_name": "", "item_name": "T-SHIRT HALF", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308687.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "441", "generic_name": "", "brand_id": "0", "item_code": "432", "category_name": "", "item_name": "Taiyo Marine Fish Food", "price": "129", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523223.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "125", "last_purchase_price": "120", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "31", "generic_name": "", "brand_id": "3", "item_code": "031", "category_name": "", "item_name": "TANGA MAN PUNJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308281.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "50", "conversion_rate": "10", "item_id": "464", "generic_name": "", "brand_id": "0", "item_code": "455", "category_name": "", "item_name": "Teer Red Lentil (Moshur) Dal", "price": "120", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717526956.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "115", "last_purchase_price": "1000", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "240", "generic_name": "", "brand_id": "14", "item_code": "231", "category_name": "", "item_name": "Tenda 4G06 (4G LTE Advanced Cat6 Wireless Router)", "price": "10437", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716459770.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "8209", "last_purchase_price": "45", "warranty": "1", "guarantee": "1", "brand_name": " - Tenda", "supplier_name": " - Tenda", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "241", "generic_name": "", "brand_id": "14", "item_code": "232", "category_name": "", "item_name": "Tenda 4G680 (4G LTE Router)", "price": "11610", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716459972.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "8796", "last_purchase_price": "5864", "warranty": "1", "guarantee": "1", "brand_name": " - Tenda", "supplier_name": " - Tenda", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "24", "conversion_rate": "10", "item_id": "485", "generic_name": "", "brand_id": "0", "item_code": "476", "category_name": "", "item_name": "test", "price": "15000", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "0", "last_purchase_price": "14000", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - test", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "490", "generic_name": "", "brand_id": "0", "item_code": "481", "category_name": "", "item_name": "test", "price": "120", "sale_unit_name": "Kg", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "General_Product", "whole_sale_price": "100", "last_purchase_price": "90", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": " - test", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "1", "item_id": "499", "generic_name": "", "brand_id": "0", "item_code": "490", "category_name": "", "item_name": "test", "price": "3000", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "General_Product", "whole_sale_price": "0", "last_purchase_price": "1000", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "36", "generic_name": "", "brand_id": "3", "item_code": "036", "category_name": "", "item_name": "TEXTURED COTTON PUNJABI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308315.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "10", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "164", "generic_name": "", "brand_id": "1", "item_code": "164", "category_name": "", "item_name": "Tie", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309825.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "1", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "456", "generic_name": "", "brand_id": "0", "item_code": "447", "category_name": "", "item_name": "Tiger Shoe Brush", "price": "65", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717525245.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "60", "last_purchase_price": "55", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "236", "generic_name": "", "brand_id": "13", "item_code": "227", "category_name": "", "item_name": "TP-Link Archer MR600 (4G+ Cat6 AC1200 Wireless Dual Band Gigabit Router)", "price": "15129", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716458926.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "12314", "last_purchase_price": "7036", "warranty": "1", "guarantee": "1", "brand_name": " - TP Link", "supplier_name": " - TP Link", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "8", "conversion_rate": "1", "item_id": "237", "generic_name": "", "brand_id": "13", "item_code": "228", "category_name": "", "item_name": "TP-Link M7650 (4G LTE-Advanced Mobile Wi-Fi)", "price": "17474", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716459125.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "IMEI_Product", "whole_sale_price": "14073", "last_purchase_price": "8209", "warranty": "1", "guarantee": "2", "brand_name": " - TP Link", "supplier_name": " - TP Link", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "56", "conversion_rate": "1", "item_id": "477", "generic_name": "", "brand_id": "0", "item_code": "468", "category_name": "", "item_name": "Transmission Service", "price": "1120", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717668819.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "53", "conversion_rate": "1", "item_id": "444", "generic_name": "", "brand_id": "0", "item_code": "435", "category_name": "", "item_name": "Transtec Backup CDL LED Bulb (Pin) 12 Watt", "price": "798", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717523643.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "790", "last_purchase_price": "780", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "2", "conversion_rate": "1", "item_id": "491", "generic_name": "", "brand_id": "0", "item_code": "482", "category_name": "", "item_name": "tshirt", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/site_settings\/image_thumb.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"9\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"18\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"15\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"Tax\",\"tax_field_percentage\":\"5\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "42", "conversion_rate": "1", "item_id": "404", "generic_name": "", "brand_id": "0", "item_code": "395", "category_name": "", "item_name": "U Shape Hair Cut", "price": "500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717006760.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "5", "conversion_rate": "1", "item_id": "168", "generic_name": "", "brand_id": "2", "item_code": "168", "category_name": "", "item_name": "Underwear", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309854.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "48", "conversion_rate": "1", "item_id": "383", "generic_name": "", "brand_id": "0", "item_code": "374", "category_name": "", "item_name": "Upper Lips With Rica Brazilian", "price": "100", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005037.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "52", "conversion_rate": "1", "item_id": "452", "generic_name": "", "brand_id": "0", "item_code": "443", "category_name": "", "item_name": "Vaseline Petroleum Jelly", "price": "250", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717524797.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "245", "last_purchase_price": "235", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "21", "conversion_rate": "150", "item_id": "307", "generic_name": "Domperidone Maleate", "brand_id": "23", "item_code": "298", "category_name": "", "item_name": "Vave", "price": "4", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716718685.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "3", "last_purchase_price": "300", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "39", "conversion_rate": "1", "item_id": "388", "generic_name": "", "brand_id": "0", "item_code": "379", "category_name": "", "item_name": "Vedic Line For Herbal Beauty (Bio White - Dry Skin)", "price": "1500", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005713.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "26", "conversion_rate": "10", "item_id": "327", "generic_name": "Ivermectin", "brand_id": "23", "item_code": "318", "category_name": "", "item_name": "Veratin", "price": "15", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716724125.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "14", "last_purchase_price": "130", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "54", "conversion_rate": "1", "item_id": "439", "generic_name": "", "brand_id": "0", "item_code": "430", "category_name": "", "item_name": "Versele Laga Perfume Him", "price": "939", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717522971.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "930", "last_purchase_price": "920", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "51", "conversion_rate": "1", "item_id": "455", "generic_name": "", "brand_id": "0", "item_code": "446", "category_name": "", "item_name": "Vim Dishwashing Bar", "price": "45", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717525151.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "General_Product", "whole_sale_price": "40", "last_purchase_price": "35", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "26", "generic_name": "", "brand_id": "5", "item_code": "026", "category_name": "", "item_name": "VISCOSE KABLI", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717308246.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "10", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "155", "generic_name": "", "brand_id": "3", "item_code": "155", "category_name": "", "item_name": "Viscose Pant", "price": "0", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717309719.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Variation_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "373", "generic_name": "", "brand_id": "28", "item_code": "364", "category_name": "", "item_name": "Vision Pressure Cooker 5L", "price": "3240", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716822770.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "2916", "last_purchase_price": "2592", "warranty": "2", "guarantee": "1", "brand_name": " - Vision", "supplier_name": " - Vision", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "374", "generic_name": "", "brand_id": "28", "item_code": "365", "category_name": "", "item_name": "Vision Pressure Cooker 7.5L", "price": "3780", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716822930.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "3348", "last_purchase_price": "3024", "warranty": "2", "guarantee": "1", "brand_name": " - Vision", "supplier_name": " - Vision", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "349", "generic_name": "", "brand_id": "28", "item_code": "340", "category_name": "", "item_name": "Vision VIS-SBL-011", "price": "4686", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716745302.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "4100", "last_purchase_price": "3514", "warranty": "2", "guarantee": "1", "brand_name": " - Vision", "supplier_name": " - Vision", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "350", "generic_name": "", "brand_id": "28", "item_code": "341", "category_name": "", "item_name": "Vision VIS-SBL-012", "price": "5272", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716745433.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "4686", "last_purchase_price": "4100", "warranty": "2", "guarantee": "1", "brand_name": " - Vision", "supplier_name": " - Vision", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "39", "conversion_rate": "1", "item_id": "386", "generic_name": "", "brand_id": "0", "item_code": "377", "category_name": "", "item_name": "VLCC Anti-Tan Facial", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005316.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "39", "conversion_rate": "1", "item_id": "387", "generic_name": "", "brand_id": "0", "item_code": "378", "category_name": "", "item_name": "VLCC Tightening Clean Up", "price": "600", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005390.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "39", "conversion_rate": "1", "item_id": "385", "generic_name": "", "brand_id": "0", "item_code": "376", "category_name": "", "item_name": "VLCC Tightening Facial", "price": "700", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717005277.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "347", "generic_name": "", "brand_id": "27", "item_code": "338", "category_name": "", "item_name": "Walton WBL-13CF", "price": "5858", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716744232.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "5272", "last_purchase_price": "4686", "warranty": "0", "guarantee": "1", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "34", "conversion_rate": "1", "item_id": "348", "generic_name": "", "brand_id": "27", "item_code": "339", "category_name": "", "item_name": "Walton WBL-15A", "price": "7029", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716745008.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "6443", "last_purchase_price": "5858", "warranty": "2", "guarantee": "1", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "338", "generic_name": "", "brand_id": "27", "item_code": "329", "category_name": "", "item_name": "Walton WCF-2H5-GD", "price": "52722", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716741971.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "46864", "last_purchase_price": "41006", "warranty": "12", "guarantee": "3", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "33", "conversion_rate": "1", "item_id": "337", "generic_name": "", "brand_id": "27", "item_code": "328", "category_name": "", "item_name": "Walton WNF-3D8-GD", "price": "58580", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716741809.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "52722", "last_purchase_price": "46864", "warranty": "10", "guarantee": "3", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "371", "generic_name": "", "brand_id": "27", "item_code": "362", "category_name": "", "item_name": "Walton WPC-1604", "price": "4320", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716795290.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "3888", "last_purchase_price": "3456", "warranty": "2", "guarantee": "1", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "37", "conversion_rate": "1", "item_id": "372", "generic_name": "", "brand_id": "27", "item_code": "363", "category_name": "", "item_name": "Walton WPC-2005", "price": "4860", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716796507.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "4320", "last_purchase_price": "3780", "warranty": "2", "guarantee": "1", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "362", "generic_name": "", "brand_id": "27", "item_code": "353", "category_name": "", "item_name": "Walton WSI-NSOLO-18A", "price": "75600", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716793558.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "70200", "last_purchase_price": "64800", "warranty": "5", "guarantee": "2", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "36", "conversion_rate": "1", "item_id": "361", "generic_name": "", "brand_id": "27", "item_code": "352", "category_name": "", "item_name": "Walton WSI-RIVERINE-18B", "price": "64800", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716793436.png", "tax_information": null, "item_type": "Installment_Product", "whole_sale_price": "59400", "last_purchase_price": "54000", "warranty": "5", "guarantee": "1", "brand_name": " - Walton", "supplier_name": " - Walton", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "56", "conversion_rate": "1", "item_id": "474", "generic_name": "", "brand_id": "0", "item_code": "465", "category_name": "", "item_name": "Wheel Alignment", "price": "75", "sale_unit_name": "", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1717668335.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Service_Product", "whole_sale_price": "0", "last_purchase_price": "0", "warranty": "0", "guarantee": "0", "brand_name": "", "supplier_name": "", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "10", "generic_name": null, "brand_id": "1", "item_code": "006-04", "category_name": "", "item_name": "White", "price": "2475", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716281701.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2200", "last_purchase_price": "2000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "6" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "14", "generic_name": null, "brand_id": "2", "item_code": "011-03", "category_name": "", "item_name": "White ", "price": "5570", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282476.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "5000", "last_purchase_price": "4500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "11" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "19", "generic_name": null, "brand_id": "2", "item_code": "016-03", "category_name": "", "item_name": "White ", "price": "3290", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716282866.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "3000", "last_purchase_price": "2500", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "16" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "24", "generic_name": null, "brand_id": "5", "item_code": "021-03", "category_name": "", "item_name": "White ", "price": "1495", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716283740.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1200", "last_purchase_price": "1000", "warranty": "6", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "21" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "29", "generic_name": null, "brand_id": "5", "item_code": "026-03", "category_name": "", "item_name": "White ", "price": "3095", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284170.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2800", "last_purchase_price": "2400", "warranty": "10", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "26" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "34", "generic_name": null, "brand_id": "3", "item_code": "031-03", "category_name": "", "item_name": "White ", "price": "1655", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716284886.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1555", "last_purchase_price": "1255", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "31" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "39", "generic_name": null, "brand_id": "3", "item_code": "036-03", "category_name": "", "item_name": "White ", "price": "2360", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716286076.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1800", "warranty": "10", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "36" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "53", "generic_name": null, "brand_id": "2", "item_code": "051-02", "category_name": "", "item_name": "White ", "price": "550", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289180.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "450", "last_purchase_price": "3500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "51" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "59", "generic_name": null, "brand_id": "2", "item_code": "056-03", "category_name": "", "item_name": "White ", "price": "1100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289513.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "56" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "65", "generic_name": null, "brand_id": "5", "item_code": "061-04", "category_name": "", "item_name": "White ", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290470.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "690", "last_purchase_price": "5900", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "61" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "74", "generic_name": null, "brand_id": "3", "item_code": "071-03", "category_name": "", "item_name": "White ", "price": "520", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716291245.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "420", "last_purchase_price": "3000", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "71" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "84", "generic_name": null, "brand_id": "1", "item_code": "081-03", "category_name": "", "item_name": "White ", "price": "1880", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716292544.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "81" }, { "cat_id": "4", "conversion_rate": "1", "item_id": "152", "generic_name": null, "brand_id": "3", "item_code": "151-01", "category_name": "", "item_name": "White ", "price": "600", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716298694.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "500", "last_purchase_price": "400", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "151" }, { "cat_id": "32", "conversion_rate": "500", "item_id": "331", "generic_name": "Paracetamol", "brand_id": "23", "item_code": "322", "category_name": "", "item_name": "Xcel", "price": "1.2", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716726248.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "Medicine_Product", "whole_sale_price": "1", "last_purchase_price": "500", "warranty": "0", "guarantee": "0", "brand_name": " - ACI Limited", "supplier_name": " - ACI", "description": "", "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "0" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "89", "generic_name": null, "brand_id": "1", "item_code": "086-03", "category_name": "", "item_name": "XL", "price": "1700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293034.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "86" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "94", "generic_name": null, "brand_id": "2", "item_code": "091-03", "category_name": "", "item_name": "XL", "price": "1230", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293267.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1120", "last_purchase_price": "1000", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "91" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "99", "generic_name": null, "brand_id": "2", "item_code": "096-03", "category_name": "", "item_name": "XL", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293623.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1100", "last_purchase_price": "1000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "96" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "104", "generic_name": null, "brand_id": "5", "item_code": "101-03", "category_name": "", "item_name": "XL", "price": "1400", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294078.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "101" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "109", "generic_name": null, "brand_id": "5", "item_code": "106-03", "category_name": "", "item_name": "XL", "price": "2790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294400.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2600", "last_purchase_price": "2300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "106" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "114", "generic_name": null, "brand_id": "0", "item_code": "111-03", "category_name": "", "item_name": "XL", "price": "2144", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294662.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1900", "last_purchase_price": "1700", "warranty": "7", "guarantee": "0", "brand_name": "", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "111" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "119", "generic_name": null, "brand_id": "3", "item_code": "116-03", "category_name": "", "item_name": "XL", "price": "1675", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/0060000147721.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "116" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "90", "generic_name": null, "brand_id": "1", "item_code": "086-04", "category_name": "", "item_name": "XXL", "price": "1700", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293040.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "86" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "95", "generic_name": null, "brand_id": "2", "item_code": "091-04", "category_name": "", "item_name": "XXL", "price": "1230", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293273.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1120", "last_purchase_price": "1000", "warranty": "10", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "91" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "100", "generic_name": null, "brand_id": "2", "item_code": "096-04", "category_name": "", "item_name": "XXL", "price": "1200", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716293629.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1100", "last_purchase_price": "1000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "96" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "105", "generic_name": null, "brand_id": "5", "item_code": "101-04", "category_name": "", "item_name": "XXL", "price": "1400", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294084.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1300", "last_purchase_price": "1200", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "101" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "110", "generic_name": null, "brand_id": "5", "item_code": "106-04", "category_name": "", "item_name": "XXL", "price": "2790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294407.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2600", "last_purchase_price": "2300", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "106" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "115", "generic_name": null, "brand_id": "0", "item_code": "111-04", "category_name": "", "item_name": "XXL", "price": "2144", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716294668.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1900", "last_purchase_price": "1700", "warranty": "7", "guarantee": "0", "brand_name": "", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "111" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "120", "generic_name": null, "brand_id": "3", "item_code": "116-04", "category_name": "", "item_name": "XXL", "price": "1675", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/0060000147722.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1400", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "116" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "5", "generic_name": null, "brand_id": "1", "item_code": "001-04", "category_name": "", "item_name": "Yellow", "price": "1890", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716280981.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1700", "last_purchase_price": "1500", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": "", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "1" }, { "cat_id": "1", "conversion_rate": "1", "item_id": "37", "generic_name": null, "brand_id": "3", "item_code": "036-01", "category_name": "", "item_name": "Yellow", "price": "2360", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716286061.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "2100", "last_purchase_price": "1800", "warranty": "10", "guarantee": "0", "brand_name": " - Arong", "supplier_name": " - Arong", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "36" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "48", "generic_name": null, "brand_id": "1", "item_code": "046-02", "category_name": "", "item_name": "Yellow", "price": "1140", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716288816.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "8000", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "46" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "52", "generic_name": null, "brand_id": "2", "item_code": "051-01", "category_name": "", "item_name": "Yellow", "price": "550", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289168.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "450", "last_purchase_price": "3500", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "51" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "57", "generic_name": null, "brand_id": "2", "item_code": "056-01", "category_name": "", "item_name": "Yellow", "price": "1100", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716289490.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1000", "last_purchase_price": "9000", "warranty": "7", "guarantee": "0", "brand_name": " - Gentle Park", "supplier_name": " - Gentle Park", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "56" }, { "cat_id": "2", "conversion_rate": "10", "item_id": "64", "generic_name": null, "brand_id": "5", "item_code": "061-03", "category_name": "", "item_name": "Yellow", "price": "790", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716290462.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "690", "last_purchase_price": "5900", "warranty": "7", "guarantee": "0", "brand_name": " - Le Reve", "supplier_name": " - Le Reve", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "61" }, { "cat_id": "3", "conversion_rate": "1", "item_id": "82", "generic_name": null, "brand_id": "1", "item_code": "081-01", "category_name": "", "item_name": "Yellow", "price": "1880", "sale_unit_name": "PCS", "image": "https:\/\/doorsoft-demo.com\/off_pos\/all_types\/uploads\/items\/1716292527.png", "tax_information": "[{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"CGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"SGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"IGST\",\"tax_field_percentage\":\"1\"},{\"tax_field_id\":\"1\",\"tax_field_company_id\":\"1\",\"tax_field_name\":\"VAT\",\"tax_field_percentage\":\"1\"}]", "item_type": "0", "whole_sale_price": "1600", "last_purchase_price": "1300", "warranty": "7", "guarantee": "0", "brand_name": " - Easy", "supplier_name": " - Easy", "description": null, "is_promo": "No", "promo_item_name": "", "promo_type": "", "promo_discount": "", "promo_qty": 0, "promo_get_qty": 0, "promo_description": "", "promo_item_id": "", "parent_id": "81" }];
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
        <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/userProfile">
          <img
            src="https://doorsoft-demo.com/off_pos/all_types/uploads/site_settings/1c89efb05f2bda6fb4e61365e3bb61dd.png"
            width="50" alt="Logo Image">
        </a>
      </div>
      <ul class="pos__menu__list">
        <li class="have_sub_menu2">
          <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/userProfile">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Outlet/addEditOutlet">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Outlet </a>
            </li>
            <li data-access="list-25" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Outlet/outlets">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Sale/POS">
                <iconify-icon icon="solar:cart-large-broken" width="15"></iconify-icon>
                POS Screen </a>
            </li>
            <li data-access="list-138" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Sale/sales">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Sale </a>
            </li>
            <li data-access="add-147" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Customer/addEditCustomer">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Customer </a>
            </li>
            <li data-access="list-147" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Customer/customers">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Customer </a>
            </li>
            <li data-access="add-154" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Group/addEditGroup">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Customer Group </a>
            </li>
            <li data-access="list-154" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Group/groups">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Customer Group </a>
            </li>
            <li data-access="add-133" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Promotion/addEditPromotion">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Promotion </a>
            </li>
            <li data-access="list-133" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Promotion/promotions">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Promotion </a>
            </li>
            <li data-access="add-159" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Delivery_partner/addEditPartner">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Delivery Partner </a>
            </li>
            <li data-access="list-159" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Delivery_partner/listPartner">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Item/addEditItem">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Item </a>
            </li>
            <li data-access="list-49" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Item/items">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Item </a>
            </li>
            <li data-access="list-49" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Item/bulkItemUpdate">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                Bulk Item Update </a>
            </li>
            <li data-access="add-60" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Category/addEditItemCategory">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Item Category </a>
            </li>
            <li data-access="list-60" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Category/itemCategories">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Item Category </a>
            </li>
            <li data-access="add-304" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Rack/addEditRack">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Rack </a>
            </li>
            <li data-access="list-304" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Rack/addEditRack">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Rack </a>
            </li>

            <li data-access="add-65" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Unit/addEditUnit">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Unit </a>
            </li>
            <li data-access="list-65" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Unit/units">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Unit </a>
            </li>
            <li data-access="add-70" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Variation/addEditVariation">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Variation Attribute </a>
            </li>
            <li data-access="list-70" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Variation/variations">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Variation Attribute </a>
            </li>
            <li data-access="add-297" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Brand/addEditBrand">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Brand </a>
            </li>
            <li data-access="list-297" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Brand/brands">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Brand </a>
            </li>
          </ul>
        </li>
        <li data-access="view-30" class="have_sub_menu2 menu_assign_class">
          <a href="https://doorsoft-demo.com/off_pos/all_types/Dashboard/dashboard">
            <iconify-icon icon="solar:chart-2-broken" width="30"></iconify-icon>
            <span>&nbsp;Dashboard</span>
          </a>
        </li>
        <li data-access="view-164" class="have_sub_menu2">
          <a href="https://doorsoft-demo.com/off_pos/all_types/Stock/stock">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase/addEditPurchase">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Purchase </a>
            </li>
            <li data-access="list-109" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Purchase/purchases">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/supplierLedgerReport">
                <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                Supplier Ledger </a>
            </li>
            <li data-access="supplier_balance_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/supplierDueReport">
                <iconify-icon icon="solar:banknote-broken" width="18"></iconify-icon>
                Supplier Balance Report </a>
            </li>

            <li data-access="customer_ledger-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/customerLedgerReport">
                <iconify-icon icon="solar:users-group-two-rounded-broken" width="18"></iconify-icon>
                Customer Ledger </a>
            </li>
            <li data-access="customer_balance_report-249" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/customerBalanceReport">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Stock/getStockAlertList">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Company_report/cashFlowReport">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Expense/addEditExpense">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Expense </a>
            </li>
            <li data-access="list-172" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Expense/expenses">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Expense </a>
            </li>
            <li data-access="add-177" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/ExpenseItem/addEditExpenseItem">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Expense Category </a>
            </li>
            <li data-access="list-177" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/ExpenseItem/expenseItems">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Income/addEditIncome">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Income </a>
            </li>
            <li data-access="list-182" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Income/incomes">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Income </a>
            </li>
            <li data-access="add-187" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/IncomeItem/addEditIncomeItem">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Income Item </a>
            </li>
            <li data-access="list-187" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/IncomeItem/incomeItems">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Sale_return/addEditSaleReturn">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Sale Return </a>
            </li>
            <li data-access="list-204" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Sale_return/saleReturns">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Setting/index">
                <iconify-icon icon="solar:settings-broken" width="18"></iconify-icon>
                Setting </a>
            </li>
            <li data-access="whatsappSetting-327" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Setting/whatsappSetting">
                <iconify-icon icon="solar:settings-minimalistic-broken" width="18"></iconify-icon>
                WhatsApp Setting </a>
            </li>
            <li data-access="add-3" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Denomination/addEditDenomination">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Denomination </a>
            </li>
            <li data-access="list-3" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Denomination/denominations">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Denominations </a>
            </li>
            <li data-access="add-340" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Counter/addEditCounter">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Counter </a>
            </li>
            <li data-access="list-340" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Counter/counters">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Counter </a>
            </li>
            <li data-access="edit-8" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Tax_setting/tax">
                <iconify-icon icon="solar:target-broken" width="18"></iconify-icon>
                Tax Setting </a>
            </li>
            <li data-access="edit-10" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Email_setting/emailConfiguration">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/WhiteLabel/index">
                <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                White Label </a>
            </li>
            <li data-access="edit-23" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Authentication/logingPage">
                <iconify-icon icon="solar:sledgehammer-broken" width="18"></iconify-icon>
                Login Page </a>
            </li>

            <li data-access="edit-335" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Payment_getway/paymentGetway">
                <iconify-icon icon="solar:password-broken" width="18"></iconify-icon>
                Payment Getway </a>
            </li>
            <li data-access="add-311" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/MultipleCurrency/addEditMultipleCurrency">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Multiple Currency </a>
            </li>
            <li data-access="list-311" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/MultipleCurrency/multipleCurrencies">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Multiple Currency </a>
            </li>
            <li data-access="add_dummy_data-325" class="menu_assign_class">
              <a class="add_dummy_data" href="https://doorsoft-demo.com/off_pos/all_types/Setting/add_dummy_data">
                <iconify-icon icon="solar:import-broken" width="18"></iconify-icon>
                Import Dummy Data </a>
            </li>

            <li data-access="deleteDummyData-329" class="menu_assign_class">
              <a class="delete" href="https://doorsoft-demo.com/off_pos/all_types/Setting/deleteDummyData">
                <iconify-icon icon="solar:trash-bin-2-broken" width="18"></iconify-icon>
                Delete Dummy Data </a>
            </li>
            <li data-access="wipeTransactionalData-331" class="menu_assign_class">
              <a class="delete" href="https://doorsoft-demo.com/off_pos/all_types/Setting/wipeTransactionalData">
                <iconify-icon icon="solar:transfer-horizontal-broken" width="18"></iconify-icon>
                Wipe Transactional Data </a>
            </li>
            <li data-access="wipeAllData-333" class="menu_assign_class">
              <a class="delete" href="https://doorsoft-demo.com/off_pos/all_types/Setting/wipeAllData">
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
              <a href="https://doorsoft-demo.com/off_pos/all_types/Role/addEditRole">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Role </a>
            </li>
            <li data-access="list-282" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/Role/listRole">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Role </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/User/addEditUser">
                <iconify-icon icon="solar:add-circle-broken" width="18"></iconify-icon>
                Add Employee </a>
            </li>
            <li data-access="list-287" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/User/users">
                <iconify-icon icon="solar:checklist-bold" width="18"></iconify-icon>
                List Employee </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/User/changeProfile">
                <iconify-icon icon="solar:user-check-broken" width="18"></iconify-icon>
                Change Profile </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/User/changePassword">
                <iconify-icon icon="solar:key-broken" width="18"></iconify-icon>
                Change Password </a>
            </li>
            <li data-access="add-287" class="menu_assign_class">
              <a href="https://doorsoft-demo.com/off_pos/all_types/User/securityQuestion">
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
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery-3.3.1.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery-ui.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery.slimscroll.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/sweetalert2-new.all.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/calculator.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.mousewheel.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.extension-typing.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.extension-autocomplete.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/virtual_keyboard/jquery.keyboard.extension-caret.js"></script>
    <!-- TOP End-->
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/notify/toastr.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/marquee.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/datable.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/jquery.cookie.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/feather/feather.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/assets/POS/js/howler.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/lib/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/js/popper.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/js/tippy.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/newDesign/pos/lib/date/datepicker.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/dataTables.buttons.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/jquery.dataTables.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/dataTables.bootstrap4.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/dataTables.buttons.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/buttons.html5.min.js"></script>
    <script
      src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/buttons.print.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/jszip.min.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/dataTable/pdfmake.min.js"></script>
    <!-- Plugin Js End -->
    <!-- Custom JS Start -->
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/stripe.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/pos_script.js"></script>
    <script src="https://doorsoft-demo.com/off_pos/all_types/frequent_changing/js/register_details.js"></script>
    <!-- Custom JS End -->

    <!-- ################ Script Start ################ -->
    <script>
      window.menu_objects = ['edit-1', 'add-3', 'edit-3', 'delete-3', 'list-3', 'edit-8', 'edit-10', 'edit-12', 'add-14', 'edit-14', 'delete-14', 'list-14', 'edit-19', 'edit-21', 'edit-23', 'add-25', 'edit-25', 'delete-25', 'list-25', 'view-30', 'add-32', 'edit-32', 'delete-32', 'list-32', 'add-37', 'edit-37', 'delete-37', 'list-37', 'add-42', 'edit-42', 'delete-42', 'list-42', 'view-47', 'add-49', 'edit-49', 'view-49', 'delete-49', 'list-49', 'upload_item-49', 'upload_photo-49', 'bulkdelete-49', 'print_barcode-49', 'print_label-49', 'add-60', 'edit-60', 'delete-60', 'list-60', 'add-65', 'edit-65', 'delete-65', 'list-65', 'add-70', 'edit-70', 'delete-70', 'list-70', 'add-75', 'edit-75', 'delete-75', 'list-75', 'add-80', 'edit-80', 'delete-80', 'list-80', 'filter-85', 'add-87', 'edit-87', 'delete-87', 'list-87', 'print-87', 'add-93', 'edit-93', 'view-93', 'delete-93', 'list-93', 'sms_send-93', 'add-100', 'edit-100', 'view-100', 'delete-100', 'list-100', 'print-100', 'installment_collection-100', 'due_installment-100', 'add-109', 'edit-109', 'view-109', 'delete-109', 'list-109', 'print-109', 'print_barcode-109', 'add-117', 'edit-117', 'view-117', 'delete-117', 'list-117', 'debit_supplier-117', 'credit_supplier-117', 'add-125', 'edit-125', 'view-125', 'delete-125', 'list-125', 'status_change-125', 'challan_invoice-125', 'add-133', 'edit-133', 'delete-133', 'list-133', 'pos-138', 'add-138', 'edit-138', 'delete-138', 'list-138', 'invoice-138', 'challan-138', 'delivery_status-138', 'add-147', 'edit-147', 'view-147', 'delete-147', 'list-147', 'bulk_upload-147', 'add-154', 'edit-154', 'delete-154', 'list-154', 'add-159', 'edit-159', 'delete-159', 'list-159', 'view-164', 'add-166', 'edit-166', 'view-166', 'delete-166', 'list-166', 'add-172', 'edit-172', 'delete-172', 'list-172', 'add-177', 'edit-177', 'delete-177', 'list-177', 'add-182', 'edit-182', 'delete-182', 'list-182', 'add-187', 'edit-187', 'delete-187', 'list-187', 'add-192', 'edit-192', 'delete-192', 'list-192', 'receipt-192', 'add-198', 'edit-198', 'delete-198', 'list-198', 'print-198', 'add-204', 'edit-204', 'view-204', 'delete-204', 'list-204', 'print-204', 'add-211', 'edit-211', 'view-211', 'delete-211', 'list-211', 'print-211', 'add-218', 'edit-218', 'delete-218', 'list-218', 'add-223', 'edit-223', 'delete-223', 'list-223', 'list-228', 'list-230', 'list-232', 'add-234', 'edit-234', 'delete-234', 'list-234', 'add-239', 'edit-239', 'view-239', 'delete-239', 'list-239', 'copy-239', 'print-239', 'update-247', 'register_report-249', 'customer_receive_report-249', 'daily_summary_report-249', 'sale_report-249', 'service_sale_report-249', 'employee_sale_report-249', 'product_sale_report-249', 'detailed_sale_report-249', 'stock_report-249', 'low_stock_report-249', 'profit_loss_report-249', 'product_profit_report-249', 'attendance_report-249', 'supplier_ledger-249', 'supplier_balance_report-249', 'customer_balance_report-249', 'customer_ledger-249', 'purchase_report-249', 'product_purchase_report-249', 'expense_report-249', 'income_report-249', 'salary_report-249', 'purchase_return_report-249', 'sale_return_report-249', 'damage_report-249', 'installment_report-249', 'installment_due_report-249', 'tax_report-249', 'servicing_report-249', 'item_tracing_report-249', 'price_history_report-249', 'cash_flow_report-249', 'add-282', 'edit-282', 'delete-282', 'list-282', 'add-287', 'edit-287', 'delete-287', 'list-287', 'change_profile-287', 'change_password-287', 'set_security_quatation-287', 'activate_user-287', 'deactivate_user-287', 'add-297', 'edit-297', 'delete-297', 'list-297', 'sort-302', 'add-304', 'edit-304', 'delete-304', 'list-304', 'status-75', 'print-75', 'add-311', 'edit-311', 'delete-311', 'list-311', 'zReport-249', 'discountPermission-287', 'uninstall-318', 'list-320', 'unreadList-320', 'marakAllAsRead-320', 'delete-320', 'add_dummy_data-325', 'whatsappSetting-327', 'deleteDummyData-329', 'wipeTransactionalData-331', 'wipeAllData-333', 'edit-335', 'salePriceModify-287', 'available_loyalty_point-249', 'usage_loyalty_point-249', 'add-1', 'edit-340', 'delete-340', 'list-340', 'combo_item_report-249', 'view_purchase_price-138', 'enable_disable_status-49', 'enable_disable_status-49', 'enable_disable_status-49'];
    </script>
</body>

</html>