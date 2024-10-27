$(function () {
    "use strict"
    let stripePayementStatus = false;
    let paypalPayementStatus = false;
    toastr.options = {
        positionClass: 'toast-bottom-right'
    };
    const ps = new PerfectScrollbar(".pos__menu__list", {
        wheelSpeed: 2,
        wheelPropagation: true,
        minScrollbarLength: 20,
    });
    ps.update();
    const br = new PerfectScrollbar(".brand__sub__menu", {
        wheelSpeed: 2,
        wheelPropagation: true,
        minScrollbarLength: 20,
    });
    br.update();
    let no_permission_for_this_module = $('#no_permission_for_this_module').val();
    let pharmacy_search_place_holder_pos = $('#pharmacy_search_place_holder_pos').val();
    let other_search_place_holder_pos = $('#other_search_place_holder_pos').val();
    let The = $('#The').val();
    let field_is_required = $('#field_is_required').val();
    let The_discount_code_field_required = $('#The_discount_code_field_required').val();
    let The_coupon_code_field_required = $('#The_coupon_code_field_required').val();
    let print_format = $('#print_format').val();
    let invoice_print = $('#invoice_print').val();
    let Place_Order = $("#Place_Order").val();
    let direct_cart = $("#direct_cart").val();
    let base_url = $('#base_url').val();
    let warning = $('#alert').val();
    let ok = $('#ok').val();
    let yes = $('#yes').val();
    let cancel = $('#cancel').val();
    let sure_delete_this_sale = $('#sure_delete_this_sale').val();
    let no_access = $('#no_access').val();
    let default_cursor_position = $('#default_cursor_position').val();
    let please_select_an_order = $('#please_select_an_order').val();
    let please_select_hold_sale = $('#please_select_hold_sale').val();
    let sure_delete_this_hold = $('#sure_delete_this_hold').val();
    let are_you_delete_all_hold_sale = $('#are_you_delete_all_hold_sale').val();
    let no_hold = $('#no_hold').val();
    let select_a_customer = $('#select_a_customer').val();
    let edit_warning = $('#edit_warning').val();
    let collect_tax = $('#collect_tax').val();
    let collect_gst = $('#tax_is_gst').val();
    let gst_state_code = $('#gst_state_code').val();
    let csrf_value_ = $("#csrf_value_").val();
    let op_precision = $("#op_precision").val();
    let op_decimals_separator = $("#op_decimals_separator").val();
    let op_thousands_separator = $("#op_thousands_separator").val();
    let allow_less_sale = $("#allow_less_sale").val();
    let check_issue_date_lan = $("#check_issue_date_lan").val();
    let check_no_lan = $("#check_no_lan").val();
    let check_expiry_date_lan = $("#check_expiry_date_lan").val();
    let mobile_no_lan = $("#mobile_no_lan").val();
    let transaction_no_lan = $("#transaction_no_lan").val();
    let card_holder_name_lan = $("#card_holder_name_lan").val();
    let card_holding_number_lan = $("#card_holding_number_lan").val();
    let paypal_email_lan = $("#paypal_email_lan").val();
    let stripe_email_lan = $("#stripe_email_lan").val();
    let note_lan = $("#note_lan").val();
    let cart_empty = $("#cart_empty").val();
    let sms_enable_status = $("#sms_enable_status").val();
    let smtp_enable_status = $("#smtp_enable_status").val();
    let send_invoice_whatsapp = $("#send_invoice_whatsapp").val();
    let product_display = $("#product_display").val();
    let dummy_data_delete_alert = $("#dummy_data_delete_alert").val();
    let select = $("#select").val();
    let customer = $("#customer").val();
    let edit_mode = $("#old_sale_id").val();
    let session_uer_id = $("#session_uer_id").val();
    let role = $("#role").val();
    let grocery_experience = $("#grocery_experience").val();
    let view_purchase_price = $("#view_purchase_price").val();
    let Alternative_Medicine_will_shown_here = $("#Alternative_Medicine_will_shown_here").val();
    let already_added = $("#already_added").val();


    function getAmtPCustom(amount) {
        if (isNaN(amount)) {
            amount = 0;
        }
        let precision = op_precision || 0;
        let decimalsSeparator = op_decimals_separator || '.';
        let thousandsSeparator = op_thousands_separator || '';
    
        // Truncate the amount to the specified precision
        let factor = Math.pow(10, precision);
        amount = Math.floor(amount * factor) / factor;
    
        // Format the amount
        let strAmount = amount.toLocaleString(undefined, {
            minimumFractionDigits: precision,
            maximumFractionDigits: precision,
            useGrouping: !!thousandsSeparator
        });
    
        // Replace default decimal separator with custom one
        if (decimalsSeparator !== '.') {
            strAmount = strAmount.replace('.', decimalsSeparator);
        }
    
        // Replace default thousands separator with custom one
        if (thousandsSeparator !== ',') {
            strAmount = strAmount.replace(/,/g, thousandsSeparator);
        }
    
        return strAmount;
    }



    function searchPlaceHolderSetter(){
        let generic_name_search = $('input[name="generic_serch_option_checkbox"]:checked').val();
        if(generic_name_search == 'Yes'){
            $('#search').attr('placeholder', 'Search by generic name');
        }else{
            $('#search').attr('placeholder', 'Search by name, code, category');
        }
    }
    searchPlaceHolderSetter();
    


    // Menu Access Check
    $(".menu_assign_class").each(function() {
        let this_access = $(this).attr("data-access");
        if((window.menu_objects).indexOf(this_access) > -1) {
    
        } else {
            if(this_access!=undefined){
                $(this).remove();
            }
        }
    });

    // Left Sidebar Menu
    $('.have_sub_menu2').hover(function(){
        $('.treeview').removeClass("active_sub_menu");
        $(".sidebar_sub_menu").css("display", "none");
    });
    $(".have_sub_menu").hover(function () {
        //Every time hover active_sub_menu class remove
        $(".have_sub_menu").removeClass("active_sub_menu");
        $(".treeview-menu-in").remove();
        $(".sidebar_sub_menu").css("display", "block");
        $(this).addClass("active_sub_menu");
        let html = '<ul class="treeview-menu-in">';
        html += $(this).find(".sub__menu__list").html();
        html += "</ul>";
        $(".sidebar_sub_menu").html(html);
    },
    function () {
        $(".sidebar_sub_menu").css("display", "block");
    });
    $(document).click(function (event) {
        if (!$(event.target).closest(".have_sub_menu").length) {
            $(".sidebar_sub_menu").css("display", "none");
            $(".have_sub_menu").removeClass("active_sub_menu");
        }
    });

    let activeSubMenu = $(".active_sub_menu");
    if (activeSubMenu.length) {
        $(".sidebar-menu").scrollTop(activeSubMenu.position().top);
    }
    $(document).on('click', '.arabic-lang .mobile_sideber_hide_show', function(){
        if(!$('.sidebar-mini').hasClass('sidebar-open')){
            $('.main-sidebar2').removeClass('active')
        }else{
            $('.sidebar-mini').removeClass('sidebar-collapse')
        }
    });
    // Left Sidebar Menu End
    function checkItemShortType(param){
        if (param == 'General_Product'){
            return 'General';
        }else if(param == 'Medicine_Product'){
            return 'Medicine';
        }else if(param == 'IMEI_Product'){
            return 'IMEI';
        }else if(param == 'Serial_Product'){
            return 'Serial';
        }else if(param == 'Variation_Product'){
            return 'Variation';
        }else if(param == 'Installment_Product'){
            return 'Installment';
        }else if(param == 'Service_Product'){
            return 'Service';
        }
    }

    // Added By Azhar
    function customDecimalRound(number, multiply_by, precision) {
        let factor = Math.pow(10, precision);
        let integerPart = Math.floor(number);
        let decimalPart = number - integerPart;
        let roundedDecimal = Math.round(decimalPart * factor / multiply_by) * multiply_by /factor;
        return (integerPart + roundedDecimal).toFixed(precision);
    }

    


    // Code optimize by Azhar ** Final **
    $(document).on('keydown', '.integerchk', function (e) {
        let keys = e.charCode || e.keyCode || 0;
        // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
        // home, end, period, and numpad decimal
        return (
            keys == 8 ||
            keys == 9 ||
            keys == 13 ||
            keys == 46 ||
            keys == 110 ||
            keys == 86 ||
            keys == 190 ||
            (keys >= 35 && keys <= 40) ||
            (keys >= 48 && keys <= 57) ||
            (keys >= 96 && keys <= 105));
    });

    // Code optimize by Azhar ** Final **
    $(document).on('keyup', '.integerchk', function (e) {
        let input = $(this).val();
        let ponto = input.split('.').length;
        let slash = input.split('-').length;
        if (ponto > 2)
            $(this).val(input.substr(0, (input.length) - 1));
        $(this).val(input.replace(/[^0-9]/, ''));
        if (slash > 2)
            $(this).val(input.substr(0, (input.length) - 1));
        if (ponto == 2)
            $(this).val(input.substr(0, (input.indexOf('.') + 3)));
        if (input == '.')
            $(this).val("");
    });

    // Code optimize by Azhar ** Final **
    function checkPercentageOrPlain(value) {
        if (value) {
            if (value.indexOf("%") > -1) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    // Code optimize by Azhar ** Final **
    function singleSubtotalCalculateByPriceDiscount(price, discount){
        let subtotal;
        if (checkPercentageOrPlain(discount)) {
            let discountWithoutPercent = discount.replace('%', '');
            let percentCalculate = Number(price) * Number(discountWithoutPercent) / 100;
            subtotal = Number(price) - percentCalculate;
        } else {
            subtotal = Number(price) - Number(discount);
        }
        return subtotal;
    }

    // Code optimize by Azhar ** Final **
    function subtotalCalculateByPriceQtyDiscount(price, quantity, discount){
        let subtotal;
        if (checkPercentageOrPlain(discount)) {
            let discountWithoutPercent = discount.replace('%', '');
            let percentCalculate = Number(price) * Number(discountWithoutPercent) / 100;
            subtotal = Number(price) - percentCalculate;
            subtotal = Number(subtotal) * Number(quantity);
        } else {
            subtotal = (Number(price) * Number(quantity)) - Number(discount);
        }
        return subtotal;
    }

    // Code optimize by Azhar ** Final **
    function percentValueCalculateByPriceQtyDiscount(price, quantity, discount){
        let subtotal;
        let percentValue;
        if (checkPercentageOrPlain(discount)) {
            let discountWithoutPercent = discount.replace('%', '');
            let percentCalculate = Number(price) * Number(discountWithoutPercent) / 100;
            subtotal = Number(price) - percentCalculate;
            percentValue = price - subtotal;
        } else {
            subtotal = (Number(price) - (Number(discount)) * Number(quantity));
            percentValue = price - subtotal;
        }
        return percentValue;
    }

    // Code optimize by Azhar ** Final **
    function dateMonthYearFinder(wg, sale_date) {
        let currentDate = new Date(Date.parse(sale_date));
        let futureDate = new Date(currentDate.getFullYear(), currentDate.getMonth() + Number(wg), currentDate.getDate());
        return futureDate.toISOString().slice(0, 10);
    }


    // Code optimize by Azhar ** Final **
    function formatDate(date, format) {
        let formattedDate = "";
        let currentDate = new Date(date)
        let day = currentDate.getDate();
        let month = currentDate.getMonth() + 1;
        let year = currentDate.getFullYear();
        format = format.toLowerCase();
        // Replace 'Y', 'm', 'd', 'y' with actual date values
        formattedDate = format.replace('y', year)
                            .replace('m', (month < 10 ? '0' : '') + month)
                            .replace('d', (day < 10 ? '0' : '') + day);
        return formattedDate;
    }
   
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.sms_enable_status', function(){
        if(sms_enable_status != '1'){
            Swal.fire({
                title: warning + "!",
                text: 'Your SMS is not configured yet!, configure first.',
                confirmButtonColor: "#8b5cf6",
                confirmButtonText: ok,
                showCancelButton: false,
            });
            $(this).prop('checked', false);
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.smtp_enable_status', function(){
        if(smtp_enable_status != '1'){
            Swal.fire({
                title: warning + "!",
                text: 'Your SMTP is not configured yet!, configure first.',
                confirmButtonColor: "#8b5cf6",
                confirmButtonText: ok,
                showCancelButton: false,
            });
            $(this).prop('checked', false);
        }
    });

    // Code optimize by Azhar ** Final **
    function posDefaultCursor(){
        if(default_cursor_position == 'Search Box'){
            $('#search').focus();
        }else if(default_cursor_position == 'Barcode Box'){
            $('#search_barcode').focus();
        }
    }
    setTimeout(function(){
        posDefaultCursor();
    }, 100)


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#go_to_dashboard', function(){
        window.location.href = base_url+'Dashboard/dashboard';
    });

    // Code optimize by Azhar ** Final **
    function searchItemAndConstructGallery(searchedValue, sort_id='',is_main_search='') {
        let resultObject = search(searchedValue, window.items,sort_id,is_main_search);
        return resultObject;
    }



    // Code optimize by Azhar ** Final **
    function getNewDateTime() {
        let refresh = 1000; // Refresh rate in milli seconds
        setTimeout(display_date_time, refresh);
    }

    // Code optimize by Azhar ** Final **
    function display_date_time() {
        //for date and time
        let today = new Date();
        let dd = today.getDate();
        let mm = today.getMonth() + 1; //January is 0!
        let yyyy = today.getFullYear();
        if (dd < 10) {
            dd = "0" + dd;
        }
        if (mm < 10) {
            mm = "0" + mm;
        }
        let time_a = new Date().toLocaleTimeString();
        let today_date = yyyy + "-" + mm + "-" + dd;
        tippy(".time__date", {
            content: `<div class="text-center"><span>${today_date}</span><br><span>${time_a}</span></div>`,
            allowHTML: true,
            // animation: "scale",
        });
        $("#closing_register_time").html(today_date + " " + time_a);
        getNewDateTime();
    }
    display_date_time();



    // Code optimize by Azhar ** Final **
    function opDateFormat($date = '') {
        let date_format = $('#op_date_format').val();
        let formatted = new Date($date);
        if (date_format == 'd/m/Y') {
            date_format = 'dd/mm/yy';
        }
        if (date_format == 'm/d/Y') {
            date_format = 'mm/dd/yy';
        }
        if (date_format == 'Y/m/d') {
            date_format = 'yy/mm/dd';
        }
        return $.datepicker.formatDate(date_format, formatted);
    }



    // Code optimize by Azhar ** Final **
    function put_cart_content() {
        let total_items_in_cart = Number($("#total_items_in_cart_with_quantity").text());
        let sub_total = parseFloat($("#sub_total_show").text());
        let discounted_sub_total_amount = parseFloat($("#discounted_sub_total_amount").text());
        let total_vat = parseFloat($("#show_vat_modal").text());
        let total_payable = parseFloat($("#total_payable").text());
        let total_discount_amount = parseFloat($("#all_items_discount").text());
        let delivery_charge = Number($("#show_charge_amount").text());
        let sub_total_discount = Number($("#sub_total_discount").text());
        let sub_total_discount_value = $("#show_discount_amount").text();

        let order = {
            total_items_in_cart: getAmtPCustom(total_items_in_cart),
            sub_total: getAmtPCustom(sub_total),
            total_vat: getAmtPCustom(total_vat),
            total_payable: getAmtPCustom(total_payable),
            total_discount_amount: getAmtPCustom(total_discount_amount),
            actual_discount: getAmtPCustom(discounted_sub_total_amount),
            sub_total_discount: getAmtPCustom(sub_total_discount),
            delivery_charge: getAmtPCustom(delivery_charge),
            sub_total_discount_value: getAmtPCustom(sub_total_discount_value),
            items: []
        };

        if ($(".single_order").length > 0) {
            $(".single_order").each(function (i, obj) {
                let item_id = Number($(this).attr("id").substr(15));
                let item_name = $(this).find(".first_column").text();
                let item_vat = $("#item_vat_percentage_table" + item_id).text() || '';
                let item_note = $(".item_modal_description_table_" + item_id).text() || '';
                let item_unit_price = $("#item_price_table_" + item_id).text() || '';
                let item_quantity = $("#item_quantity_table_" + item_id).text() || '';
                let item_total_price_table = $("#item_total_price_table_" + item_id).text() || '';
                let item_g_w = $("#item_g_w_table_" + item_id).text() || '';
                let discount = $("#percentage_table_" + item_id).text() || '';
                let item = {
                    item_id: $.trim(item_id),
                    item_name: $.trim(item_name),
                    item_note: $.trim(item_note),
                    item_g_w: $.trim(item_g_w),
                    item_total_price_table: getAmtPCustom($.trim(item_total_price_table)),
                    discount: getAmtPCustom($.trim(discount)),
                    item_vat: getAmtPCustom($.trim(item_vat)),
                    item_unit_price: getAmtPCustom($.trim(item_unit_price)),
                    item_quantity: getAmtPCustom($.trim(item_quantity))
                };
                order.items.push(item);
            });
        }
        let order_object = JSON.stringify(order);
        $.ajax({
            url: base_url + "put-customer-panel-data",
            method: "POST",
            dataType: 'json',
            data: {
                order: order_object
            },
            success: function (response) {
            }
        });
    }
    // Code optimize by Azhar ** Final **

    $(document).on('keyup', '#search_barcode', function(e){
        let this_value = $(this).val();
        let key = e.which;
        let default_unit = 1;
        let p_code = this_value;
        if(key == 13 && this_value != ""){
            let scanned_code = this_value;
            let scanned_code_lenght = scanned_code.length;
            if(Number(scanned_code_lenght) == 12){
                p_code = scanned_code.substr(4, 3);
                let p_unit_1 = Number(scanned_code.substr(7, 2));
                let p_unit_2 = (scanned_code.substr(9, 3));
                default_unit = Number(p_unit_1 +"."+ p_unit_2);
            }
            let item = findItemInfoByItemCode(p_code);
            if(item){
                if(item.item_type == 'IMEI_Product' || item.item_type == 'Serial_Product' || item.item_type == 'Medicine_Product'){
                    if (window.matchMedia("(min-width: 320px) and (max-width: 575.98px)").matches) {
                        $('.item-modal-top-header').css({
                            'grid-template-columns':'1fr',
                        });
                    }else{
                        $('.item-modal-top-header').css({
                            'grid-template-columns':'32% 32% 32%',
                        });
                    }
                    itemAppentToCart(item.item_id,item.item_type,item.is_promo,default_unit);
                }else{
    
                    let current_row = '';
                    let matchRow = '';
                    let qty = 0;
                    $('.order_holder .single_order').each(function(){
                        current_row = $(this).attr('data_cart_item_id');
                        if(item.item_id == current_row){
                            qty = $(`#item_quantity_table_${current_row}`).text();
                            $(`#item_quantity_table_${current_row}`).text(parseFloat(qty) + 1);
                            toastr['success'](('The Quantity has been increased.'), '');
                            matchRow = '1';
                        }
                    });
                    if(matchRow == ''){
                        generalItemdirectAddToCart(item.item_id,item.item_type,default_unit);
                        $('.item-modal-top-header').css({
                            'grid-template-columns':'65% 33%',
                        });
                        $('.modal_stock_wrapper p').css({
                            'text-align':'left',
                        });
                    }
                }
                $('#edit_item_modal_header').text(`${item.item_name} (${item.item_code})`);
                $(this).val('');
            } else{
                toastr['error'](('Item now found!'), '');
            }
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#edit_customer', function () {
        $.ajax({
            url: base_url + "Master/checkAccess",
            method: "GET",
            async: false,
            dataType: 'json',
            data: { controller: "147", function: "edit" },
            success: function (response) {
                if (response == false) {
                    Swal.fire({
                        title: warning+" !",
                        text: no_permission_for_this_module,
                        showDenyButton: false,
                        showCancelButton: false,
                        confirmButtonText: ok,
                    });
                } else {
                    let selected_customer_id = $('#walk_in_customer').val();
                    let selected_customer_name = $('option:selected', '#walk_in_customer').attr('data-customer-name');
                    if (selected_customer_name == 'Walk-in Customer') {
                        toastr['error']((edit_warning), '');
                    } else {
                        $('#add_or_edit_text').html('Edit Customer');
                        getCustomerForEdit(selected_customer_id);
                    }
                }
            }
        });
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_finalize_discount", function (e) {
        e.preventDefault();
        let sub_total_discount = $('#sub_total_discount').val();
        let dis_permission_status = $('#sub_total_discount_finalize').attr('varified-status');

        if(dis_permission_status == 'Yes'){
            $('#sub_total_discount_finalize').parent().show();
        }else{
            $('#sub_total_discount_finalize').parent().hide();
        }
        if(sub_total_discount){
            toastr['error'](('Discount already given'), '');
        }else{
            $("#sub_total_discount_finalize").focus();
            $("#finalize_discount_modal").addClass("active");
            $(".pos__modal__overlay").fadeIn(300);
        }
    });



    $(document).on('click', '.finalize_dis_submit', function(){
        let sub_total_discount_finalize = $('#sub_total_discount_finalize').val();
        if(sub_total_discount_finalize){
            $('#finalize_discount_modal').removeClass('active');
        }else{
            let user_id = $('#session_uer_id').val();
            let discount_permission_code = $('.discount_permission_code_f').val();
            let error = false;
            if(discount_permission_code == ''){
                error = true;
                $('.discount_err_message_f').parent().show();
                $('.discount_err_message_f').text(The_discount_code_field_required)
                return false
            }else{
                $.ajax({
                    method: "POST",
                    url: base_url+"Sale/checUserDiscountPermission",
                    data: {
                        user_id: user_id,
                        discount_permission_code: discount_permission_code,
                    },
                    success: function (response) {
                        if(response.status == 'success'){
                            $('.discount_err_message_f').parent().hide();
                            $('#sub_total_discount_finalize').parent().show();
                            $('#sub_total_discount_finalize').attr('varified-status', 'Yes');
                        }else{
                            $('.discount_err_message').text(response.message)
                            $('.discount_err_message').parent().show();
                        }
                    }
                });
            }
        }
    });


    // Code optimize by Azhar ** Final **
    $('#please_read_close_button,#please_read_close_button_cross').on('click', function () {
        $('#please_read_modal').slideUp('500');
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#calculator_button', function (e) {
        if ($('#calculator_main').css('display') == 'none') {
            $("#cal_open_status").val(1);
        } else {
            $('#calculator_main').css('display', 'none');
            $("#cal_open_status").val(2);
        }
    });


    // Code optimize by Azhar ** Final **
    function set_calculator_position() {
        $('.overlayForCalculator').css('display', 'block');
        $('#calculator_main').css('display', 'block');
        if ($(window).width() > 992) {
            let calculator_button_top = $("#calculator_button").offset().top;
            let calculator_button_left = $("#calculator_button").offset().left;
            let calculator_button_height = $("#calculator_button").height();
            let calculator_button_width = $("#calculator_button").width();
            let calculator_width = $("#calculator_main").width();
            let left_for_calculator =
                calculator_button_left +
                calculator_button_width +
                calculator_button_width -
                calculator_width;
                let total_top_for_calculator =
                calculator_button_top + calculator_button_height + 5;
            $("#calculator_main")
                .css("top", calculator_button_top + 40)
                .css("left", calculator_button_left - 100);
        } else {
            $("#calculator_main").css({
                top: '40%',
                left: '50%',
                transform: 'translate(-50%, -50%)'
            });
        }
    }

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.calculator_button', function () {
        set_calculator_position();
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', function(event) {
        // Close the calculator after clicking on the window
        if (!$(event.target).closest('.calculator_button').length && !$(event.target).closest('#calculator_main').length ) {
            $('.overlayForCalculator').css('display', 'none');
            $('#calculator_main').css('display', 'none');
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#keyboard_short_cut', function () {
        $("#show_keyboard_short_cut").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.keyboard_short_cut', function () {
        $("#show_keyboard_short_cut").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
    });

    // Code optimize by Azhar ** Final **
    function holdSaleModalDataClear(){
        // Hold Modal
        $('.modifier_item_details_holder').html('');
        $('#hold_customer_name').text('');
        $('#last_ten_customer_mobile').text('');
        $('#sub_total_show_hold').text(Number(0).toFixed(op_precision));
        $('#total_items_in_cart_hold').text(Number(0));
        $('#total_items_qty_in_cart_hold').text(Number(0));
        $('#hold_all_tax_amount').text(Number(0).toFixed(op_precision));
        $('#delivery_charge_hold').text(Number(0).toFixed(op_precision));
        $('#sub_total_discount_hold').text(Number(0).toFixed(op_precision));
        $('#all_items_discount_hold').text(Number(0).toFixed(op_precision));
        $('#total_payable_hold').text(Number(0).toFixed(op_precision));
        // Other
        $('#hold_customer_id').text('');
        $("#sub_total_hold").text(Number(0).toFixed(op_precision));
        $("#total_item_discount_hold").text(Number(0).toFixed(op_precision));
        $("#discounted_sub_total_amount_hold").text(Number(0).toFixed(op_precision));
    }

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#open_hold_sales', function () {
        $("#show_sale_hold_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
        getAllHoldSales();
        recentSaleModalDataClear();
        holdSaleModalDataClear();
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.open_hold_sales', function () {
        $("#show_sale_hold_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
        getAllHoldSales();
        recentSaleModalDataClear();
        holdSaleModalDataClear();
    });


    // Code optimize by Azhar ** Final **
    $(document).on('mouseover', '.single_hold_sale,.single_last_ten_sale', function () {
        $(this).css('background-color', '#cfcfcf');
    });

    // Code optimize by Azhar ** Final **
    $(document).on('mouseout', '.single_hold_sale,.single_last_ten_sale', function () {
        $(this).css('background-color', '#ffffff');
        if ($(this).attr('data-selected') == 'selected') {
            $(this).css('background-color', '#cfcfcf');
        }
    });


   
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.single_hold_sale', function () {
        let hold_id = $(this).attr('id').substr(5);
        $('.single_hold_sale').css('background-color', '#ffffff');
        $('.single_hold_sale').attr('data-selected', 'unselected');
        $(this).css('background-color', '#cfcfcf');
        $(this).attr('data-selected', 'selected');
        $.ajax({
            url: base_url + "Sale/get_single_hold_info_by_ajax",
            method: "POST",
            data: {
                hold_id: hold_id,
                csrf_offpos: csrf_value_
            },
            success: function (response) {
                response = JSON.parse(response);
                let totalQty = 0;
                $('#hold_customer_id').html(response.customer_id);
                $('#hold_customer_name').html(response.customer_name);
                let draw_table_for_hold_order = '';
                for (let key in response.items) {
                    let this_item = response.items[key];
                    totalQty+=Number(this_item.qty);
                    let discount_value = (this_item.menu_discount_value != "") ? this_item.menu_discount_value : Number(0).toFixed(op_precision);
                    

                    let expiry_imei_serial = '';
                    if((this_item.item_type == 'IMEI_Product' || this_item.item_type == 'Serial_Product' || this_item.item_type == 'Medicine_Product') && this_item.expiry_imei_serial){
                        expiry_imei_serial = `<span class="recent_imei_serial_note" id="expiry_imei_serial">${checkItemShortType(this_item.item_type)}: <span class="expiry_imei_serial_${this_item.food_menu_id}">${$.trim(this_item.expiry_imei_serial)}</span></span>`;
                    }else{
                        expiry_imei_serial = '';
                    }

                    draw_table_for_hold_order += `
                    <div data-variation-parent="${this_item.parent_id}" class="single_item_modifier" id="hold_order_for_item_${this_item.food_menu_id}">
                        <div class="first_portion">
                            <span class="item_vat_hold d-none" id="hold_item_vat_percentage_table${this_item.food_menu_id}">${this_item.menu_vat_percentage}</span>
                            <span class="item_discount_hold d-none" id="hold_item_discount_table${this_item.food_menu_id}">${this_item.discount_amount}</span>
                            <span class="item_price_without_discount_hold d-none" id="hold_item_price_without_discount_${this_item.food_menu_id}">${this_item.menu_price_without_discount}</span>
                            <div class="single_order_column_hold first_column column">
                                <span id="hold_item_name_table_${this_item.food_menu_id}">${ (this_item.parent_name ? this_item.parent_name + ' ' : '') + this_item.item_name +'('+ this_item.code +')'}</span>
                            </div>
                            <div class="single_order_column_hold second_column column">
                                <span id="hold_item_price_table_${this_item.food_menu_id}">${parseFloat(this_item.menu_unit_price).toFixed(op_precision)}</span>
                            </div>
                            <div class="single_order_column_hold third_column column">
                                <span id="hold_item_quantity_table_${this_item.food_menu_id}">${this_item.qty}</span>
                            </div>
                            <div class="single_order_column_hold forth_column column">
                                <span class="hold_special_textbox" id="hold_percentage_table_${this_item.food_menu_id}">${discount_value}</span>
                            </div>
                            <div class="single_order_column_hold fifth_column column">
                                <span id="hold_item_total_price_table_${this_item.food_menu_id}">${parseFloat(this_item.menu_price_with_discount).toFixed(op_precision)}</span>
                            </div>
                        </div>
                    </div>${expiry_imei_serial}`;

                    if(this_item.promo_item_object){
                        let jsonObj = jQuery.parseJSON(this_item.promo_item_object);
                        draw_table_for_hold_order+=`<div class="single_item_modifier" id="hold_order_for_item_${this_item.food_menu_id}">
                                <div class="first_portion">
                                    <span class="item_vat_hold d-none" id="hold_item_vat_percentage_table${this_item.food_menu_id}">0</span>
                                    <span class="item_discount_hold d-none" id="hold_item_discount_table${this_item.food_menu_id}">0</span>
                                    <span class="item_price_without_discount_hold d-none" id="hold_item_price_without_discount_${this_item.food_menu_id}">0</span>
                                    <div class="single_order_column_hold first_column column">
                                        <span id="hold_item_name_table_${this_item.food_menu_id}">${jsonObj.promo_item_name} <small class="font-style-i">Frre Item</small></span>
                                    </div>
                                    <div class="single_order_column_hold second_column column"> 
                                        <span id="hold_item_price_table_${this_item.food_menu_id}">${Number(0).toFixed(op_precision)}</span>
                                    </div>
                                    <div class="single_order_column_hold third_column column">
                                        <span id="hold_item_quantity_table_${this_item.food_menu_id}">${jsonObj.promo_item_qty}</span>
                                    </div>
                                    <div class="single_order_column_hold forth_column column">
                                        <span class="hold_special_textbox" id="hold_percentage_table_${this_item.food_menu_id}">${Number(0)}</span>
                                    </div>
                                    <div class="single_order_column_hold fifth_column column"> 
                                        <span id="hold_item_total_price_table_${this_item.food_menu_id}">${Number(0).toFixed(op_precision)}</span>
                                    </div>
                                </div>
                            </div>`;
                    }
                    draw_table_for_hold_order += '</div>';
                }
                $(".item_modifier_details .modifier_item_details_holder").empty();
                $(".item_modifier_details .modifier_item_details_holder").prepend(draw_table_for_hold_order);
                $('#total_items_in_cart_hold').text(response.total_items);
                $('#hold_all_tax_amount').text(Number(response.vat).toFixed(op_precision));
                $('#total_items_qty_in_cart_hold').text(totalQty);
                let sub_total_discount_hold = (response.sub_total_discount_value != "") ? Number(response.sub_total_discount_value).toFixed(op_precision) : Number(0).toFixed(op_precision);
                $("#sub_total_show_hold").text(parseFloat(response.sub_total).toFixed(op_precision));
                $("#sub_total_hold").text(Number(response.sub_total).toFixed(op_precision));
                $("#total_item_discount_hold").text(Number(response.total_item_discount_amount).toFixed(op_precision));
                $("#discounted_sub_total_amount_hold").text(Number(response.sub_total_discount_amount).toFixed(op_precision));
                $("#sub_total_discount_hold").text(Number(sub_total_discount_hold).toFixed(op_precision));
                let total_vat_section_to_show = '';
                $.each(JSON.parse(response.sale_vat_objects), function (key, value) {
                    total_vat_section_to_show += `<span class="tax_field_order_details" id="tax_field_order_details_${value.tax_field_id}">${value.tax_field_type}</span> 
                        <span class="tax_field_amount_order_details" id="tax_field_amount_order_details_${value.tax_field_id}">${parseFloat(value.tax_field_amount).toFixed(op_precision)}</span><br>`;
                });
                $("#all_items_discount_hold").text(parseFloat(response.total_discount_amount).toFixed(op_precision));
                $("#delivery_charge_hold").text(parseFloat(response.delivery_charge).toFixed(op_precision));
                $("#total_payable_hold").text(parseFloat(response.total_payable).toFixed(op_precision));
            }
        });
    });



    // Code optimize by Azhar ** Final **
    $(document).on('click', '.single_last_ten_sale', function () {
        let sale_id = $(this).attr('id').substr(9);
        $('.single_last_ten_sale').css('background-color', '#ffffff');
        $('.single_last_ten_sale').attr('data-selected', 'unselected');
        $(this).css('background-color', '#cfcfcf');
        $(this).attr('data-selected', 'selected');
        $.ajax({
            url: base_url + "Sale/get_all_information_of_a_sale_ajax",
            method: "POST",
            data: {
                sale_id: sale_id,
                csrf_offpos: csrf_value_
            },
            success: function (response) {
                response = JSON.parse(response);
                let totalQty = 0;
                $('#last_10_customer_id').html(response.customer_id);
                $('#last_10_customer_name').html(`${response.customer_name}`);
                $('#last_ten_customer_mobile').html(`${response.c_phone ? '(' + response.c_phone + ')' : ''}`);
                $('#last_10_order_date_time').html(opDateFormat(response.date_time) + ' ' + response.order_time);
                let draw_table_for_last_ten_sales_order = '';
                for (let key in response.items) {
                    let this_item = response.items[key];
                    let is_free_text = '';
                    if(this_item.is_promo_item == ''){
                        is_free_text = `<small class="font-style-i">(Frre Item)</small>`;
                    }else{
                        is_free_text = '';
                    }
                    totalQty+=Number(this_item.qty);
                    let discount_value = (this_item.menu_discount_value != "") ? this_item.menu_discount_value : Number(0).toFixed(op_precision);
                    let expiry_imei_serial = '';
                    if((this_item.item_type == 'IMEI_Product' || this_item.item_type == 'Serial_Product' || this_item.item_type == 'Medicine_Product') && this_item.expiry_imei_serial){
                        expiry_imei_serial = `<span class="recent_imei_serial_note" id="expiry_imei_serial">${checkItemShortType(this_item.item_type)}: <span class="expiry_imei_serial_${this_item.food_menu_id}">${$.trim(this_item.expiry_imei_serial)}</span></span>`;
                    }else{
                        expiry_imei_serial = '';
                    }
                    draw_table_for_last_ten_sales_order += `
                        <div class="single_item_modifier" id="last_10_order_for_item_${this_item.food_menu_id}">
                            <div class="first_portion">
                                <span class="item_vat_hold d-none" id="last_10_item_vat_percentage_table${this_item.food_menu_id}">${this_item.menu_taxes}</span>
                                <span class="item_type d-none" id="item_type_table${this_item.food_menu_id}">${this_item.item_type}</span>
                                <span class="item_discount_hold d-none" id="last_10_item_discount_table${this_item.food_menu_id}">${parseFloat(this_item.discount_amount).toFixed(op_precision)}</span>
                                <span class="item_price_without_discount_hold d-none" id="last_10_item_price_without_discount_${this_item.food_menu_id}">${parseFloat(this_item.menu_price_without_discount).toFixed(op_precision)}</span>
                                <div class="single_order_column_hold first_column column">
                                    <span id="last_10_item_name_table_${this_item.food_menu_id}">${this_item.item_name +'('+ this_item.code +')'}  ${is_free_text}</span>
                                </div>
                                <div class="single_order_column_hold second_column column">
                                    <span id="last_10_item_price_table_${this_item.food_menu_id}">${parseFloat(this_item.menu_unit_price).toFixed(op_precision)}</span>
                                </div>
                                <div class="single_order_column_hold third_column column">
                                    <span id="last_10_item_quantity_table_${this_item.food_menu_id}">${this_item.qty}</span>
                                </div>
                                <div class="single_order_column_hold forth_column column">
                                    <span class="hold_special_textbox" id="last_10_percentage_table_${this_item.food_menu_id}">${discount_value}</span>
                                </div>
                                <div class="single_order_column_hold fifth_column column">
                                    <span id="last_10_item_total_price_table_${this_item.food_menu_id}">${parseFloat(this_item.menu_price_with_discount).toFixed(op_precision)}</span>
                                </div>
                            </div>
                            ${expiry_imei_serial}`;
                            if (this_item.menu_note !== "") {
                                draw_table_for_last_ten_sales_order += `<span class="cart_item_modal_des_last_ten_sale item_modal_description_table_${this_item.food_menu_id}">${this_item.menu_note !== '' ? this_item.menu_note : ''}</span>`;
                            }
                    draw_table_for_last_ten_sales_order += `</div>`;
                }
                $(".item_modifier_details .modifier_item_details_holder").empty();
                $(".item_modifier_details .modifier_item_details_holder").prepend(draw_table_for_last_ten_sales_order);
                $('#total_items_in_cart_last_10').text(response.total_items);
                $('#last_10_order_invoice_no').text(response.sale_no);
                $('#total_items_qty_in_cart_last_10').text(totalQty);
                $("#sub_total_show_last_10").text(parseFloat(response.sub_total).toFixed(op_precision));
                $("#sub_total_last_10").text(parseFloat(response.sub_total).toFixed(op_precision));
                $("#total_item_discount_last_10").text(parseFloat(response.total_item_discount_amount).toFixed(op_precision));
                $("#discounted_sub_total_amount_last_10").text(parseFloat(response.sub_total_discount_amount).toFixed(op_precision));
                $("#sub_total_discount_last_10").text(parseFloat(response.sub_total_discount_amount).toFixed(op_precision));
                $("#all_items_vat_last_10").text(Number(response.vat).toFixed(op_precision));
                $("#all_items_discount_last_10").text(parseFloat(response.total_discount_amount).toFixed(op_precision));
                $("#delivery_charge_last_10").text(parseFloat(response.delivery_charge).toFixed(op_precision));
                $("#paid_amount_last_10").text(parseFloat(response.paid_amount).toFixed(op_precision));
                $("#due_amount_last_10").text(parseFloat(response.due_amount).toFixed(op_precision));
                $("#total_payable_last_10").text(parseFloat(response.total_payable).toFixed(op_precision));
            }
        });
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#delete_all_hold_sales_button', function () {
        if ($('.detail_hold_sale_holder .single_hold_sale').length > 0) {
            $.ajax({
                url: base_url + "Master/checkAccess",
                method: "GET",
                async: false,
                dataType: 'json',
                data: { controller: "138", function: "delete" },
                success: function (response) {
                    if (response == false) {
                        Swal.fire({
                            title: warning+" !",
                            text: no_permission_for_this_module,
                            showDenyButton: false,
                            showCancelButton: false,
                            confirmButtonText: ok,
                        });
                    } else {
                        Swal.fire({
                            title: warning + '!',
                            text: are_you_delete_all_hold_sale,
                            showDenyButton: true,
                            showCancelButton: false,
                            confirmButtonText: yes,
                            denyButtonText: cancel
                        }).then((result) => {
                            /* Read more about isConfirmed, isDenied below */
                            if (result.isConfirmed) {
                                $.ajax({
                                    url: base_url + "Sale/delete_all_holds_with_information_by_ajax",
                                    method: "POST",
                                    data: {
                                        csrf_offpos: csrf_value_
                                    },
                                    success: function (response) {
                                        if (response == 1) {
                                            $('.hold_sale_modal_info_holder .detail_hold_sale_holder .hold_sale_left .detail_holder').empty();
                                        }
                                        holdSaleModalDataClear();
                                        $('#show_sale_hold_modal').removeClass('active');
                                        $(".pos__modal__overlay").fadeOut(300);
                                    }
                                });
                            }
                        });
                    }
                }
            });
        } else {
            toastr['error']((no_hold), '');
        }
    });


    
    // Code optimize by Azhar ** Final **
    $(document).on('click', '#hold_delete_button', function () {
        if ($('.single_hold_sale[data-selected=selected]').length > 0) {
            let hold_id = $('.single_hold_sale[data-selected=selected]').attr('id').substr(5);
            $.ajax({
                url: base_url + "Master/checkAccess",
                method: "GET",
                async: false,
                dataType: 'json',
                data: { controller: "138", function: "delete" },
                success: function (response) {
                    if (response == false) {
                        Swal.fire({
                            title: warning+" !",
                            text: no_permission_for_this_module,
                            showDenyButton: false,
                            showCancelButton: false,
                            confirmButtonText: ok,
                        });
                    } else {
                        Swal.fire({
                            title: warning + '!',
                            text: sure_delete_this_hold,
                            showDenyButton: true,
                            showCancelButton: false,
                            confirmButtonText: yes,
                            denyButtonText: cancel
                        }).then((result) => {
                            /* Read more about isConfirmed, isDenied below */
                            if (result.isConfirmed) {
                                $.ajax({
                                    url: base_url + "Sale/delete_all_information_of_hold_by_ajax",
                                    method: "POST",
                                    data: {
                                        hold_id: hold_id,
                                        csrf_offpos: csrf_value_
                                    },
                                    success: function (response) {
                                        getAllHoldSales();
                                        holdSaleModalDataClear();
                                    }
                                });
                            } 
                        });
                    }
                }
            });
        } else {
            toastr['error']((please_select_hold_sale), '');
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#last_ten_delete_button', function () {
        if ($('.single_last_ten_sale[data-selected=selected]').length > 0) {
            let sale_id = $('.single_last_ten_sale[data-selected=selected]').attr('id').substr(9);
            $.ajax({
                url: base_url + "Master/checkAccess",
                method: "GET",
                async: false,
                dataType: 'json',
                data: { controller: "138", function: "delete" },
                success: function (response) {
                    if (response == false) {
                        Swal.fire({
                            title: warning+" !",
                            text: no_permission_for_this_module,
                            showDenyButton: false,
                            showCancelButton: false,
                            confirmButtonText: ok,
                        });
                    } else {
                        Swal.fire({
                            title: warning + '!',
                            text: sure_delete_this_sale,
                            showDenyButton: true,
                            showCancelButton: false,
                            confirmButtonText: yes,
                            denyButtonText: cancel
                        }).then((result) => {
                            if (result.isConfirmed) {
                                $.ajax({
                                    url: base_url + "Sale/cancel_particular_order_ajax",
                                    method: "POST",
                                    data: {
                                        sale_id: sale_id,
                                        csrf_offpos: csrf_value_
                                    },
                                    success: function (response) {
                                        $("#last_ten_sales_button").click();
                                        recentSaleModalDataClear();
                                    }
                                });
                            }
                        });
                    }
                }
            });
        } else {
            toastr['error']((please_select_an_order), '');
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#last_ten_print_invoice_button', function () {
        if ($('.single_last_ten_sale[data-selected=selected]').length > 0) {
            let sale_id = $('.single_last_ten_sale[data-selected=selected]').attr('id').substr(9);
            printInvoice(sale_id);
        } else {
            toastr['error']((please_select_an_order), '');
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#last_ten_print_challan_button', function () {
        if ($('.single_last_ten_sale[data-selected=selected]').length > 0) {
            let sale_id = $('.single_last_ten_sale[data-selected=selected]').attr('id').substr(9);
            printChallan(sale_id);
        } else {
            toastr['error']((please_select_an_order), '');
        }
    });


    // Code optimize by Azhar ** Final **
    function bin2hex (s) {
        let i
        let l
        let o = ''
        let n
        s += ''
        for (i = 0, l = s.length; i < l; i++) {
            n = s.charCodeAt(i)
                .toString(16)
            o += n.length < 2 ? '0' + n : n
        }
        return o
    }

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#print_last_invoice', function () {
        let last_sale_id = ($("#last_sale_id").val());
        if (last_sale_id) {
            printInvoice(last_sale_id);
        } else {
            toastr['error']((please_select_an_order), '');
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.print_last_invoice', function () {
        let last_sale_id = ($("#last_sale_id").val());
        if (last_sale_id) {
            printInvoice(last_sale_id);
        } else {
            toastr['error']((please_select_an_order), '');
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#hold_edit_in_cart_button', function () {
        let this_action = $(this);
        if ($('.single_hold_sale[data-selected=selected]').length > 0) {
            $.ajax({
                url: base_url + "Sale/checkAccess",
                method: "GET",
                async: false,
                dataType: 'json',
                data: { controller: "4", function: "edit" },
                success: function (response) {
                    if (response == false) {
                        toastr['error']((no_access), '');
                    } else {
                        let hold_id = $('.single_hold_sale[data-selected=selected]').attr('id').substr(5);
                        let total_items_in_cart = $('.order_holder .single_order').length;
                        if (total_items_in_cart > 0) {
                            Swal.fire({
                                title: warning + "!",
                                text: `Are you sure? previous cart data will be empty!`,
                                showDenyButton: true,
                                showCancelButton: false,
                                confirmButtonText: yes,
                                denyButtonText: cancel
                            }).then((result) => {
                                /* Read more about isConfirmed, isDenied below */
                                if (result.isConfirmed) {
                                    $(".order_holder").empty();
                                    clearFooterCartCalculation();
                                    getDetailsOfParticularHold(hold_id);
                                }
                            });
                        } else {
                            clearFooterCartCalculation();
                            getDetailsOfParticularHold(hold_id);
                        }
                    }
                }
            });
        } else {
            toastr['error']((please_select_hold_sale), '');
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#hold_sales_close_button, #hold_sales_close_button_cross', function () {
        holdSaleModalDataClear();
        $('#show_sale_hold_modal').removeClass("active");
        $(".pos__modal__overlay").fadeOut(300);
    });

    // Code optimize by Azhar ** Final **
    $('#finalize_order_cancel_button').on('click', function () {
        resetFinalizeModal();
    });

    // Code optimize by Azhar ** Final **
    //load first category's items default at site load
    $(".specific_category_items_holder:first").show('1000');


    // Code optimize by Azhar ** Final **
    //get all images based on category when category button is clicked
    $(document).on('click', '.category_button', function () {
        let cat_id = $(this).attr('data-id');
        if(cat_id!=undefined){
            showAllItemByCategory(cat_id);
        }else{
            cat_id = '';
            showAllItemByCategory(cat_id);
        }

        setTimeout(function() {
            $('.category_items').animate({
                scrollTop: $("#searched_item_found").offset().top
            },100);
        },100);
    });

    // Code optimize by Azhar ** Final **
    //get all images based on category when category button is clicked
    $('.brand_button').on('click', function () {
        let brand_id = $(this).attr('id').substr(15);
        $("#search").val('');
        $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
        showAllItems(brand_id,'');
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.button_category_show_all', function () {
        $("#search").val('');
        $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
        showAllItems('','');
    });


    // Code optimize by Azhar ** Final **
    //when anything is searched
    $(document).on('keyup', '#search', function (e) {
        let searched_string = $(this).val().trim();
        let foundItems = searchItemAndConstructGallery(searched_string,'',1);
        let searched_category_items_to_show = `<div id="searched_item_found" class="specific_category_items_holder d-block"><div class="single-inner-div ${grocery_experience == 'Medicine' || grocery_experience == 'Grocery' ? 'grocery_single_on' : 'grocery_single_off'}">`;
        if(grocery_experience == 'Medicine' || grocery_experience == 'Grocery'){
            for (let key in foundItems) {
                if(foundItems[key].item_type != '0'){
                    if (foundItems.hasOwnProperty(key)) {
                        searched_category_items_to_show += `
                        <div item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item grocery_medicine_el    brand_${foundItems[key].brand_id} ${product_display == 'Image View' ? '' : 'bg-box-view'} d-flex align-items-center" id="item_${foundItems[key].item_id}">
                            <p class="item_name mt-0" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name} (${foundItems[key].item_code}) ${grocery_experience != 'Medicine' ? foundItems[key].brand_name : foundItems[key].supplier_name}
                            
                            ${foundItems[key].generic_name ? '<br> <small class="generic_small">Generic Name: '+foundItems[key].generic_name+'</small>' : ''}
                            
                            </p>
                            <p class="d-none generic_name generic_name_gm ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">Generic Name: ${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>
                            <p class="item_price item_price_gm">Sale Price: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                            <span class="item_vat_percentage d-none">${foundItems[key].vat_percentage}</span>
                        </div>`;
                    }
                }
            }
        }else{
            for (let key in foundItems) {
                if(foundItems[key].item_type != '0'){
                    if (foundItems.hasOwnProperty(key)) {
                        searched_category_items_to_show += `
                        <div item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item brand_${foundItems[key].brand_id} ${product_display == 'Image View' ? '' : 'bg-box-view'}" id="item_${foundItems[key].item_id}">
                            <div class="single-item-img">
                                <img src="${foundItems[key].image}" alt="" class="${product_display == 'Image View' ? 'd-block' : 'd-none'}">
                            </div>
                            <p class="item_name" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name}${foundItems[key].brand_name} (${foundItems[key].item_code})</p>
                            <p class="generic_name ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">${$.trim(foundItems[key].generic_name) ? $.trim($.trim(foundItems[key].generic_name)) : ''}</p>
                            <p class="item_price">SP: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                            <span class="item_vat_percentage d-none">${foundItems[key].vat_percentage}</span>
                        </div>`;
                    }
                }
            }
        }
        if(searched_string){
            if(foundItems[0]){
                let array_as = {};            
                if(foundItems[0].item_type != '0'){
                    if (foundItems.hasOwnProperty(0)) {
                        if(foundItems[0].generic_name){
                            let foundItemsForItems = searchItemAndConstructGallery(foundItems[0].generic_name,'','');
                            for (let key1 in foundItemsForItems) {
                            if(foundItemsForItems[key1].item_type != '0'){
                                if (foundItemsForItems.hasOwnProperty(key1)) {
                                    if(!array_as[foundItemsForItems[key1].item_id]){
                                        array_as[foundItemsForItems[key1].item_id] = foundItemsForItems[key1].item_id;
                                    }
                                }
                            }
                            }
                        }
                    }
                }
                let alternativeProduct = '';
                for (let ar in array_as) {
                    let item_details = findItemByItemId(ar);
                    if(item_details.item_type != '0'){
                        let if_exist = true;
                        for (let key in foundItems) {
                            if(foundItems[key].item_id==ar){
                                if_exist = false;
                            }
                        }
                        if(if_exist==true){
                            alternativeProduct+=`<div class="alternative-medicine single_item medicine_el  brand_${item_details.brand_id}" item-type="${item_details.item_type}" plain-id="${item_details.item_id}" data-last_purchase_price="${item_details.last_purchase_price}" data-whole_sale_price="${item_details.whole_sale_price}" data-sale_price="${item_details.price}" id="item_${item_details.item_id}">
                            <p class="item_name" data-tippy-content="${item_details.item_name}(${item_details.item_code})">${item_details.item_name}${item_details.brand_name} (${item_details.item_code})</p>
                            <p class="generic_name ${$.trim(item_details.generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(item_details.generic_name) ? $.trim(item_details.generic_name) : ''}">${$.trim(item_details.generic_name) ? $.trim($.trim(item_details.generic_name)) : ''}</p>
                            <p class="item_price">SP: <span id="price_${item_details.item_id}">${parseFloat(item_details.price).toFixed(op_precision)}</span></p>
                            <span class="item_vat_percentage d-none">${item_details.vat_percentage}</span>
                        </div>`;
                        }
                    }
                }
                if(alternativeProduct){
                    $('#alternative_item_render').html('');
                    $('#alternative_item_render').html(alternativeProduct);
                    $('#main_left').addClass('alternative-exist');
                }else{
                    $('#main_left').removeClass('alternative-exist');
                    $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
                }
                setTimeout(function(){
                    $(".grocery_medicine_el").eq(0).addClass('active_gm');
                }, 100);
            }
        }else{
            $('#alternative_item_render').html('');
            $('#main_left').removeClass('alternative-exist');
            $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
        }
        searched_category_items_to_show += `<div></div>`;
        $("#searched_item_found").remove();
        $('.specific_category_items_holder').hide('1000');
        $(".category_items").html(searched_category_items_to_show);
        // tippy("[data-tippy-content]", {
        //     animation: "scale",
        // });
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.model_price_three', function () {
        let value = $(this).find(".s_sale").text()
        $('#modal_item_price').text(value);
        $('#modal_item_price_input_field').val(value);
        updateCartItemPrice();
    });

    // Code optimize by Azhar ** Final **

    $(document).on('keyup', '.comboCalculation', function(){
        let cThis = $(this);
        comboCalculation(cThis);
    });

    function comboCalculation(cThis){
        let unit_price = $(cThis).parent().parent().find('.combo_unit_price').val();
        let quantity = $(cThis).parent().parent().find('.combo_quantity').val();
        let combIFSale;
        if(isNaN(quantity) || quantity == ''){
            quantity = 0;
        }else{
            quantity = parseFloat(quantity);
        }
        if(isNaN(unit_price) || unit_price == ''){
            unit_price = 0;
        }else{
            unit_price = parseFloat(unit_price);
        }
        $(cThis).parent().parent().find('.subtotal_combo').text(parseFloat(quantity * unit_price).toFixed(op_precision));
        let total = 0;
        let totalSum = 0;
        $('.subtotal_combo').each(function(){
            combIFSale = $(this).parent().parent().find('.to_sales_item').is(':checked');
            if(combIFSale){
                total = $(this).text();
                if(isNaN(total) || total == ''){
                    total = 0;
                }else{
                    total = parseFloat(total);
                    totalSum += total;
                }
            }
        });
        $('#modal_item_price_input_field').val(parseFloat(totalSum).toFixed(op_precision));
        $('#s_price').text(parseFloat(totalSum).toFixed(op_precision));
    }



    //when single ite is clicked pop-up modal is appeared
    $(document).on('click', '.single_item', function () {
        let itemName = $(this).find('.item_name').text();
        let cartItemLength = $('.order_holder .single_order').length;
        let item_type = $(this).attr('item-type');
        let item_id = $(this).attr('plain-id');
        let is_promo = $(this).attr('is_promo');
        $('#edit_item_modal_header').text(itemName);
        if(item_type == 'Service_Product'){
            $('.service_disabled').css({
                'pointer-events':'none',
                'opacity':'0.5',
                'cursor':'not-allowed',
            });
        } else {
            $('.service_disabled').css({
                'pointer-events':'unset',
                'opacity':'unset',
                'cursor':'unset',
            });
        }
        if(item_type == 'IMEI_Product' || item_type == 'Serial_Product' || item_type == 'Medicine_Product'){
            if (window.matchMedia("(min-width: 320px) and (max-width: 575.98px)").matches) {
                $('.item-modal-top-header').css({
                    'grid-template-columns':'1fr',
                });
            }else{
                $('.item-modal-top-header').css({
                    'grid-template-columns':'32% 32% 32%',
                });
            }
            $('#IMEI_Serial').attr('tabindex', '0');
            if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
                $('.item_enable_disable').css({
                    'cursor':'not-allowed',
                });
            }else{
                $('.item_enable_disable').css({
                    'cursor':'pointer',
                });
            }
        }else{
            $('#modal_item_price_input_field').focus();
            $('.item_enable_disable').css({
                'cursor':'pointer',
            });
            $('.item-modal-top-header').css({
                'grid-template-columns':'65% 33%',
            });
            $('.modal_stock_wrapper p').css({
                'text-align':'left',
            });
        }

        if(item_type == 'Combo_Product'){
            $('.combo_product_html_render').show();
        }else{
            $('.combo_product_html_render').hide();
        }

        $('#seller_id').attr('tabindex', '-1');
        if(cartItemLength == '0'){
            itemAppentToCart(item_id, item_type, is_promo, 1);
        }else{
            let current_row = '';
            let matchRow = '';
            let item_type_single = '';
            $('.order_holder .single_order').each(function(){
                item_type_single = $(this).find('.item_type ').text();
                current_row = $(this).attr('data_cart_item_id');
                if(item_type_single != 'IMEI_Product' && item_type_single != 'Serial_Product' && item_type_single != 'Medicine_Product'){
                    if(item_id == current_row){
                        $(this).find('.edit_item').click();
                        matchRow = '1';
                    }
                }
            });
            if(matchRow == ''){
                itemAppentToCart(item_id, item_type, is_promo, 1); 
            }
        }
    });

    function itemAppentToCart(item_id, item_type, is_promo, default_qty){
        let quantity = 0;
        if(item_type == 'General_Product'){
            quantity = 1;
        } else if(item_type == 'Installment_Product'){
            quantity = 1;
        } else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            quantity = 0;
        } else if(item_type == 'Medicine_Product'){
            quantity = 0;
        } else if(item_type == 'Service_Product'){
            quantity = 1;
        }

        if(item_type != 'Service_Product' && item_type != 'Combo_Product'){
            if(item_type == 'Variation_Product'){
                callAddToCartModal(item_id, item_type, default_qty);
            }else{
                $.ajax({
                    url: base_url + "Sale/stockCheckingForThisOutletById",
                    method: "POST",
                    dataType: 'json',
                    async: false,
                    data: { item_id: item_id},
                    success: function (response) {
                        if(response.status == 'success'){
                            $('.current_stock_t').text((Number(response.data)).toFixed(op_precision));
                            $('#current_stock_hidden').val((Number(response.data)).toFixed(op_precision));
                            if(Number(response.data) > 0){ 
                                if(is_promo == 'Yes'){
                                    callAddToCartModal(item_id, item_type, default_qty);
                                }else if(direct_cart == 'Yes' && item_type == 'General_Product'){
                                    generalItemdirectAddToCart(item_id, item_type, default_qty)
                                }else{
                                    callAddToCartModal(item_id, item_type, default_qty);
                                }
                            }else{
                                if(is_promo == 'Yes' && allow_less_sale == 'Yes'){
                                    callAddToCartModal(item_id, item_type, default_qty);
                                }else if(direct_cart == 'Yes' && item_type == 'General_Product' && allow_less_sale == 'Yes'){
                                    generalItemdirectAddToCart(item_id, item_type, default_qty)
                                }else if(allow_less_sale == 'Yes'){
                                    callAddToCartModal(item_id, item_type, default_qty);
                                }else{
                                    toastr['error'](("Over selling is not allowed!"), '');
                                }
                            }
                        }
                    }
                });
            }
        }else if(item_type == 'Service_Product'){
            callAddToCartModal(item_id, item_type, default_qty)
        }else if(item_type == 'Combo_Product'){
            callAddToCartModal(item_id, item_type, default_qty)
        }else{
            generalItemdirectAddToCart(item_id, item_type, default_qty)
        }
    }


    function generalItemdirectAddToCart(item_id, item_type, default_qty){
        let customerPrice = 0;
        let cDiscount = 0;
        let qtyItem = default_qty;
        let readonlyAttr = '';
        let customerPriceType = $("#walk_in_customer option:selected").attr("price_type");
        let customerDiscount = $("#walk_in_customer option:selected").attr("discount");
        let item_object = findItemByItemId(item_id);
        if(customerPriceType == 1){
            customerPrice = item_object.price;
        }else if(customerPriceType == 2){
            customerPrice = item_object.whole_sale_price;
        }else{
            customerPrice = item_object.price;
        }

        if(item_object.is_promo == 'Yes'){
            if(item_object.promo_discount){
                cDiscount = item_object.promo_discount;
            }else{
                cDiscount = 0;
            }
            $(`#percentage_table_${item_object.item_id}`).prop('readonly', true);
        }else{
            if(customerDiscount){
                cDiscount = customerDiscount;
            }else{
                cDiscount = 0;
            }
        }
        modalFieldHideShowByItemType(item_type)
        let draw_table_for_order = '';
        draw_table_for_order = `<div class="single_order" is_promo="${item_object.is_promo}" data-qty_default="1" data-sale-unit="${item_object.sale_unit_name}" id="order_for_item_${item_id}" data-single-order-row-no="" data_cart_item_id="${item_id}">
            <div class="first_portion">
                <span id="item_seller_table${item_id}" class="d-none"></span>
                <span class="item_type d-none" id="item_type_table${item_id}">${item_type}</span>
                <span class="item_vat d-none" id="item_vat_percentage_table${item_id}">${item_object.tax_information}</span>
                <span class="item_discount d-none" id="item_discount_table${item_id}">${percentValueCalculateByPriceQtyDiscount(customerPrice, qtyItem, cDiscount)}</span>
                <span class="item_price_without_discount d-none" id="item_price_without_discount_${item_id}">${Number(customerPrice) * Number(qtyItem)}</span>
                <div class="single_order_column first_column">
                    <iconify-icon icon="solar:pen-broken" class="op_cursor_pointer edit_item" id="edit_item_${item_id}" width="22"></iconify-icon>
                    <span id="item_name_table_${item_id}">${item_object.item_name + '(' + item_object.item_code + ')'}</span>
                </div>
                <div class="single_order_column second_column">
                    <span id="item_price_table_${item_id}">${customerPrice}</span>
                </div>
                <div class="single_order_column third_column">
                    <iconify-icon icon="uil:minus" class="decrease_item_table op_cursor_pointer" id="decrease_item_table_${item_id}" width="22"></iconify-icon>
                    <span class="cart_quantity" id="item_quantity_table_${item_id}">${qtyItem}</span> 
                    <iconify-icon icon="uil:plus" class="increase_item_table op_cursor_pointer" id="increase_item_table_${item_id}" width="22"></iconify-icon>
                </div>
                <div class="single_order_column forth_column">
                    <input type="" name="" onfocus="select();" inline_dis_column="${item_id}" placeholder="Amt or %" class="special_textbox access_control inline_dis_column" id="percentage_table_${item_id}" value="${cDiscount}" ${readonlyAttr}>
                </div>
                <div class="single_order_column fifth_column">
                    <span id="item_total_price_table_${item_id}">${subtotalCalculateByPriceQtyDiscount(customerPrice,qtyItem,cDiscount)}</span> 
                    <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-remove-order-row-no="" class="remove_this_item_from_cart" width="22"></iconify-icon>
                </div>
            </div>
            <span class="cart_item_modal_des item_modal_description_table_${item_id}"></span>
        </div>`;
        $(".order_holder").append(draw_table_for_order);
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
        itemModalHiddenDataClear();
        cartItemCalculationInPOS();
        cartMobileItemCount();
        cartMobileSuccessMsgAndItemCount();
    }
    


    function callAddToCartModal(item_id, item_type, default_unit){
        // Modal Field Hide Show By Item Type
        modalFieldHideShowByItemType(item_type);
        productSound1.play();
        let combo_checker = '';
        let modalQty = 0;
        let discount_global = '';
        let customer_price_type = $("#walk_in_customer option:selected").attr("price_type");
        let customer_discount = $("#walk_in_customer option:selected").attr("discount");
        let item_object = findItemByItemId(item_id);
        if(item_type == 'General_Product'){
            modalQty = 1;
            $('#item_quantity_modal_input').val(Number(default_unit));
            $('#sale_unit_name_modal').text(item_object.sale_unit_name);
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Installment_Product'){
            modalQty = 1;
            $('#item_quantity_modal_input').val(Number(default_unit));
            $('#sale_unit_name_modal').text(item_object.sale_unit_name);
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            $('.item_type_heading').text(`Available ${item_type == 'IMEI_Product' ? 'IMEI Number' : 'Serial Number'}`);
            modalQty = 1;
            $('#item_quantity_modal_input').val(Number(0));
            $('#sale_unit_name_modal').text(item_object.sale_unit_name);
            $.ajax({
                url: base_url + "Sale/getIMEISerial",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    let imeiHtml = '';
                    imeiHtml = `<option value="">Select ${item_type == 'IMEI_Product' ? 'IMEI' : 'Serial'}</option>`;
                    if(response.data.allimei){
                        let stockIMEI = response.data.allimei.split("||");
                        $.each(stockIMEI, function (i, v) { 
                            imeiHtml += `<option value="${$.trim(v)}">${$.trim(v)}</option>`;
                        });
                    }
                    $('#IMEI_Serial').html('');
                    $('#IMEI_Serial').append(imeiHtml);
                }
            });
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Medicine_Product'){
            $('.item_type_heading').text('Expiry Dates');
            modalQty = 0;
            $('#item_quantity_modal_input').val(Number(0));
            $('#sale_unit_name_modal').text(item_object.sale_unit_name);
            $.ajax({
                url: base_url + "Sale/getExpiryByOutlet",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    let expiryHtml = '';
                    expiryHtml = `<option value="">Select Expiry</option>`;
                    if(response.data){
                        $.each(response.data, function (i, v) { 
                            if(v.stock_quantity != 0){
                                expiryHtml += `<option value="${$.trim(v.expiry_imei_serial)}">${$.trim(v.expiry_imei_serial)}</option>`;
                            }
                        });
                    }
                    $('#IMEI_Serial').html('');
                    $('#IMEI_Serial').append(expiryHtml);
                }
            });
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Variation_Product'){
            $('.current_stock_t').text(Number(0).toFixed(op_precision));
            $('.item_type_variation_heading').text('Variations');
            $('#variation_parent').text(item_id);
            modalQty = 0;
            $('#item_quantity_modal_input').val(Number(0));
            $.ajax({
                url: base_url + "Sale/getVariationByItemId",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    if(response.status == 'success'){
                        let variationHtml = '';
                        $.each(response.data, function (i, v) { 
                            variationHtml += `<div class="container variationSingleItem" data-is-promo="" data-item-id="${v.id}" id="item-id-${v.id}" data-item-name="${v.parent_name +' ' + v.name + '('+v.code+')'}" data-sale-price="${v.sale_price ? v.sale_price : 0}" data-whole-sale-price="${v.whole_sale_price ? v.whole_sale_price : 0}" data-purchase-price="${v.purchase_price ? v.purchase_price : 0 }" data-menu-tax='${v.tax_information}' data-sale-unit="${v.sale_unit_name}">
                                <span>${v.name}</span>
                                <span class="pl-10">Price: ${v.sale_price}</span>
                                <input type="radio" name="variation_items">
                                <span class="checkmark"></span>
                            </div>`;
                        });
                        $('.variationProductHtmlRender').html('');
                        $('.variationProductHtmlRender').append(variationHtml);
                    }
                }
            });
            $('.item-modal-top-header').show();
        }else if(item_type == 'Combo_Product'){
            $('.item-modal-top-header').hide();
            $('.modal_qty_area').addClass('item_modal_quantity_area_disabled');
            $.ajax({
                url: base_url + "Sale/getComboItemCheck",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    if(response.status == 'success'){
                        if(!response.data.combo_items){
                            Swal.fire({
                                title: warning + "!",
                                text: `No Combo  items found of this  product.`,
                                showDenyButton: false,
                                showCancelButton: false,
                                confirmButtonText: ok,
                            });
                            combo_checker = 'Not Exist';
                        }
                        let html = '';
                        let html2 = '<option value="">Select Employee</option>';
                        $.each(response.data.sellers, function (i, v) { 
                            html2+=`<option value="${v.id}">${v.full_name}</option>`;
                        });
                        $.each(response.data.combo_items, function (i, v) { 
                            html +=`<li>
                                <div>${i + 1}</div>
                                <div class="text-center">
                                    <label class="container">
                                        <input type="checkbox" class="show_in_invoice" ${v.show_invoice == 'Yes' ? 'checked' : ''}>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="text-center">
                                    <label class="container">
                                        <input type="checkbox" class="to_sales_item" checked>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div>
                                    <p class="combo_name">${v.item_name}</p>
                                    <input type="hidden" class="combo_child_id" value="${v.child_combo_item_id}">
                                    <input type="hidden" class="combo_parent_id" value="${v.combo_parent_id}">
                                </div>
                                <div>
                                    <input type="text" class="form-control combo_quantity  comboCalculation" value="${parseFloat(v.quantity)}">
                                </div>
                                <div>
                                    <input type="text" class="form-control combo_unit_price  comboCalculation" value="${parseFloat(v.unit_price)}">
                                </div>
                                <div>
                                    <p class="subtotal_combo comboCalculation text-center">${(parseFloat(v.quantity) * parseFloat(v.unit_price)).toFixed(op_precision)}</p>
                                </div>
                                <div>
                                    <select class="inline_seller_id select2">
                                        ${html2}
                                    </select>
                                </div>
                            </li>`;
                        });
                        $('.combo_product_html_render .combo_modal_body').html('');
                        $('.combo_product_html_render .combo_modal_body').append(html);
                        $(".select2").select2();
                    }
                }
            });
        }else{
            modalQty = 1;
            $('#item_quantity_modal_input').val(Number(default_unit));
        }
        // Item Info
        $('#modal_item_name').text(item_object.item_name + '(' + item_object.item_code + ')');
        $('#modal_is_promo').text(item_object.is_promo);
        $('#modal_promo_buy_qty').text(item_object.promo_qty);
        $('#modal_promo_get_qty').text(item_object.promo_get_qty);
        $('#modal_promo_discount').text(item_object.promo_discount);
        $('#modal_promo_item_id').text(item_object.promo_item_id);
        $('#modal_promo_type').text(item_object.promo_type);
        $('#modal_item_id').text(item_object.item_id);
        $('#modal_item_type').text(item_object.item_type);
        $('#modal_item_sale_unit').text(item_object.sale_unit_name);
        $('#modal_item_vat_percentage').text(item_object.tax_information);
        if(view_purchase_price == 'Yes'){
            $('#w_s_price').text(Number(item_object.whole_sale_price).toFixed(op_precision));
            $('#m_p_price').text(Number(item_object.last_purchase_price / item_object.conversion_rate).toFixed(op_precision));
        }else{
            $('#w_s_price').text(Number(0).toFixed(op_precision));
            $('#m_p_price').text(Number(0).toFixed(op_precision));
        }
        $('#s_price').text(Number(item_object.price).toFixed(op_precision));

        // Promotion Check And Discount Set
        if(item_object.is_promo == 'Yes'){
            discount_global = item_object.promo_discount ? item_object.promo_discount : 0;
            $('#promotion-text').html('');
            $('#promotion-text').html(item_object.promo_description);
            $('#modal_discount').prop('readonly', true);
        }else{
            discount_global = customer_discount ? customer_discount : 0;
            $('#promotion-text').html('');
            $('#modal_discount').prop('readonly', false);
        }

        // Price Set According to customer price type and discount
        let modal_subtotal = 0;
        $('#modal_discount').val(discount_global);
        if(customer_price_type == 2){
            $('#modal_item_price_input_field').val(Number(item_object.whole_sale_price).toFixed(op_precision));
            $(".whole_price_class").click();
            modal_subtotal = subtotalCalculateByPriceQtyDiscount(item_object.whole_sale_price,modalQty,discount_global);
        }else{
            $('#modal_item_price_input_field').val(Number(item_object.price).toFixed(op_precision));
            $(".sale_price_class").click();
            modal_subtotal = subtotalCalculateByPriceQtyDiscount(item_object.price,modalQty,discount_global);
        }
        if(item_type == 'General_Product' || item_type == 'Variation_Product' || item_type == 'Installment_Product' || item_type == 'Service_Product'){
            $('#modal_total_price').text(Number(modal_subtotal).toFixed(op_precision));
        }else{
            $('#modal_total_price').text(Number(0).toFixed(op_precision));
        }
        if(item_type == 'Combo_Product'){
            if(combo_checker == ''){
                $('#item_modal').addClass('active');
                $(".pos__modal__overlay").fadeIn(200);
            }
        }else{
            $('#item_modal').addClass('active');
            $(".pos__modal__overlay").fadeIn();
        }
        if(item_type == 'IMEI_Product' || item_type == 'Serial_Product' || item_type == 'Medicine_Product'){
            setTimeout(function(){
                let op1 = $("#IMEI_Serial").data("select2");    
                op1.open();
                $('#seller_wrapper .select2-container .select2-selection--single').attr('tabindex', '-1');
            }, 1000);
        }
    }



    
    

    function modalFieldHideShowByItemType(item_type){
        if(item_type == 'General_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('#item_quantity_modal_input').prop('readonly', false);
            $('.modal_increase_item_table').prop('disabled', false);
            $('.modal_decrease_item_table').prop('disabled', false);
        }else if(item_type == 'Installment_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('#item_quantity_modal_input').prop('readonly', false);
            $('.modal_increase_item_table').prop('disabled', false);
            $('.modal_decrease_item_table').prop('disabled', false);
        }else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            $('.Available_IMEI_Srial').show();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('#item_quantity_modal_input').prop('readonly', true);
            $('.modal_increase_item_table').prop('disabled', true);
            $('.modal_decrease_item_table').prop('disabled', true);
        }else if(item_type == 'Medicine_Product'){
            $('.Available_IMEI_Srial').show();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('#item_quantity_modal_input').prop('readonly', true);
            $('.modal_increase_item_table').prop('disabled', true);
            $('.modal_decrease_item_table').prop('disabled', true);
        }else if(item_type == 'Variation_Product' || item_type == '0'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').show();
            $('#modal_item_price_input_field').prop('readonly', true);
            $('#modal_discount').prop('readonly', true);
            $('.modal_increase_item_table').prop('disabled', true);
            $('.modal_decrease_item_table').prop('disabled', true);
            $('#item_quantity_modal_input').prop('readonly', true);
        }else if(item_type == 'Service_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('.modal_increase_item_table').prop('disabled', false);
            $('.modal_decrease_item_table').prop('disabled', false);
            $('#item_quantity_modal_input').prop('readonly', false);
        }else if(item_type == 'Combo_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
        }
    }


    $(document).on('click', '.variationSingleItem', function(){
        item_quantity_modal_input
        let subtotal = 0;
        let cutomerPriceType = $('option:selected','#walk_in_customer').attr('price_type');
        let cutomerDiscount = $('option:selected','#walk_in_customer').attr('discount');
        let item_id = $(this).attr('data-item-id');
        let item_name = $(this).attr('data-item-name');
        let salePrice = $(this).attr('data-sale-price');
        let wholePrice = $(this).attr('data-whole-sale-price');
        let purchasePrice = $(this).attr('data-purchase-price');
        let saleUnit = $(this).attr('data-sale-unit');
        let modal_item_vat_percentage = $(this).attr('data-menu-tax');
        let modalQty = Number($('#item_quantity_modal_input').val());
        if(modalQty){
            modalQty = modalQty;
        }else{
            modalQty = 1;
            $('#item_quantity_modal_input').val(1);
        }
        $.ajax({
            type: "POST",
            url: base_url+"Sale/stockCheckingForThisOutletById",
            async: false,
            data: {
                item_id: item_id,
            },
            success: function (response) {
                if(response.status == 'success'){
                    $('.current_stock_t').text((Number(response.data)).toFixed(op_precision));
                    $('#current_stock_hidden').val(Number(response.data));
                }
            }
        });
        $('.modal_increase_item_table').prop('disabled', false);
        $('.modal_decrease_item_table').prop('disabled', false);
        $('#item_quantity_modal_input').prop('readonly', false);
        $('#modal_item_price_input_field').prop('readonly', false);
        $('#modal_discount').prop('readonly', false);
        $('#s_price').text(Number(salePrice).toFixed(op_precision));
        if(view_purchase_price == 'Yes'){
            $('#w_s_price').text(Number(wholePrice).toFixed(op_precision));
            $('#m_p_price').text(Number(purchasePrice).toFixed(op_precision));
        }else{
            $('#w_s_price').text(Number(0).toFixed(op_precision));
            $('#m_p_price').text(Number(0).toFixed(op_precision));
        }
        $('#modal_item_id').text(item_id);
        $('#modal_item_name').text(item_name);
        $('#modal_item_vat_percentage').text(modal_item_vat_percentage);
        $('#modal_item_sale_unit').text(saleUnit);
        $('#sale_unit_name_modal').text(saleUnit);
        if(cutomerPriceType == 1){
            $('#modal_item_price_input_field').val(Number(salePrice).toFixed(op_precision));
            $(".sale_price_class").click();
            subtotal = subtotalCalculateByPriceQtyDiscount(parseFloat(salePrice), modalQty, cutomerDiscount);
        }else if(cutomerPriceType == 2){
            $('#modal_item_price_input_field').val(Number(wholePrice).toFixed(op_precision));
            $(".whole_price_class").click();
            subtotal = subtotalCalculateByPriceQtyDiscount(parseFloat(wholePrice), modalQty, cutomerDiscount);
        }else{
            $('#modal_item_price_input_field').val(Number(salePrice).toFixed(op_precision));
            $(".sale_price_class").click();
            subtotal = subtotalCalculateByPriceQtyDiscount(parseFloat(salePrice), modalQty, cutomerDiscount);
        }
        if(cutomerDiscount){
            $('#modal_discount').val(cutomerDiscount);
        }else{
            $('#modal_discount').val(0);
        }
        $('#modal_total_price').text(parseFloat(subtotal));
    });


    $(document).on('click', '.variationProductHtmlRender .container', function(){
        $(".variationProductHtmlRender .container").removeClass("v-active");
        $(this).addClass("v-active");
    });



    // Code optimize by Azhar ** Final **
    //when add to card button is clicked information goes to table of middle to top
    $(document).on('click', '#add_to_cart', function () {
        let error = false;
        let readonlyAttr = '';
        let default_qty_amt = 1;
        // Setter And Getter Item Modal 
        let item_name = $.trim($('#modal_item_name').text());
        let item_id = $.trim($('#modal_item_id').text());
        let variation_parent = $.trim($('#variation_parent').text());
        let sale_unit_name = $.trim($('#modal_item_sale_unit').text());
        let item_type = $.trim($('#modal_item_type').text());
        let modal_item_vat_percentage = $.trim($('#modal_item_vat_percentage').text());
        let modal_item_price = $.trim($('#modal_item_price_input_field').val());
        let item_quantity_modal_input = $.trim($('#item_quantity_modal_input').val());
        let modal_discount = $.trim($('#modal_discount').val());
        let item_total_price = $.trim($('#modal_total_price').text());
        let seller_id = $('#seller_id').val();
        let IMEI_Serial = $.trim($('#IMEI_Serial').val());
        let modal_item_note = $.trim($('#modal_item_note').val());
        // Promotion Setting And Getter 
        let is_promo = $.trim($('#modal_is_promo').text());
        let promotionId = $.trim($('#modal_promo_item_id').text());
        let promotionName = $.trim($(`#item_${promotionId} .item_name`).attr('data-tippy-content'));
        let buyPromoQty = $.trim($('#modal_promo_buy_qty').text());
        let getPromoQty = $.trim($('#modal_promo_get_qty').text());
        let itemPromoNo = parseInt(Number(item_quantity_modal_input) / Number(buyPromoQty)) * parseInt(getPromoQty);
        let cartItemLength = $('.order_holder .single_order').length;
        // Alear When Modal Quantity is "0"
        if(item_type != 'Combo_Product' && Number(item_quantity_modal_input) == 0){
            Swal.fire({
                title: warning + "!",
                text: `Select at least 1 Quantity`,
                showDenyButton: false,
                showCancelButton: false,
                confirmButtonText: ok,
            });
            error = true;
        }

        // Item Type Wise Condition Set
        if(item_type == 'General_Product'){
        }else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product' || item_type == 'Medicine_Product'){
            let expiry_imei_serial = $.trim($('#IMEI_Serial').val());
            if(expiry_imei_serial == ''){
                $('#expiry_imei_serial_err_msg').text(`${The} ${checkItemShortType(item_type)} ${field_is_required}`);
                $('.expiry_imei_serial_msg_contnr').show(200).delay(6000).hide(200, function () {});
                error = true;
            }
        }else if(item_type == 'Variation_Product'){
            let variationSelect = $('.variationProductHtmlRender .v-active').length;
            if(Number(variationSelect) == Number(0)){
                Swal.fire({
                    title: warning + "!",
                    text: `No Item is select! Please select an Item`,
                    showDenyButton: false,
                    showCancelButton: false,
                    confirmButtonText: ok,
                });
                error = true;
            }
        }else if(item_type == 'Combo_Product'){
            item_name = $('#edit_item_modal_header').text();
            let if_exit_combo_parent = $(`.order_holder #order_for_item_${item_id}`).length;
            if(if_exit_combo_parent){
                $(`.order_holder #order_for_item_${item_id}`).find('.remove_this_item_from_cart').click();
            }
            let to_sale_item = $('.to_sales_item:checked').length;
            item_quantity_modal_input = 1;
            if(to_sale_item == 0){
                Swal.fire({
                    title: warning+" !",
                    text: 'No Item is select',
                    showDenyButton: false,
                    showCancelButton: false,
                    confirmButtonText: ok,
                }); 
                error = true;
            }
        }
        // Return False When error occur
        if(error == true){
            return false;
        }else{
            $('#item_modal').removeClass('active');
            $(".pos__modal__overlay").fadeOut(300);
            posDefaultCursor();
        }

        if(cartItemLength == '0'){
            newItemAppentToCart();  
        }else{
            let current_row = '';
            let matchRow = '';
            let item_type_single = '';
            $('.order_holder .single_order').each(function(){
                item_type_single = $(this).find('.item_type ').text();
                current_row = $(this).attr('data_cart_item_id');
                if(item_type_single != 'IMEI_Product' && item_type_single != 'Serial_Product' && item_type_single != 'Medicine_Product'){
                    if(item_id == current_row){
                        matchRow = '1';
                    }
                }else{
                    let imei_serial_expiry = $(this).find('#expiry_imei_serial span').eq(0).text();
                    if(item_id == current_row &&  imei_serial_expiry == IMEI_Serial){
                        matchRow = '2';
                    }
                }
            });
            if(item_type == 'Combo_Product'){
                newItemAppentToCart();
            }else{
                if(matchRow == '1'){
                    oldItemAppentToCart();
                } else if(matchRow == '2'){
                    oldItemAppentToCartIMEISerialExpiry();
                } else{
                    newItemAppentToCart();
                }
            }
        }

        function oldItemAppentToCartIMEISerialExpiry(){
            $(`.imei_serial_expiry_${IMEI_Serial} #item_seller_table${item_id}`).text(seller_id);
            $(`.imei_serial_expiry_${IMEI_Serial} #item_price_table_${item_id}`).text($.trim(modal_item_price));
            $(`.imei_serial_expiry_${IMEI_Serial} #item_total_price_table_${item_id}`).text($.trim(item_total_price));
            $(`.imei_serial_expiry_${IMEI_Serial} #item_quantity_table_${item_id}`).text($.trim(item_quantity_modal_input));
            $(`.imei_serial_expiry_${IMEI_Serial} #item_price_without_discount_${item_id}`).text(`${Number($.trim(modal_item_price)) * Number($.trim(item_quantity_modal_input))}`);
            $(`.imei_serial_expiry_${IMEI_Serial} .imei_serial_expiry_${IMEI_Serial} #percentage_table_${item_id}`).val($.trim(modal_discount));
            $(`.imei_serial_expiry_${IMEI_Serial} .expiry_imei_serial_${item_id}`).text($.trim(IMEI_Serial));
            $(`.imei_serial_expiry_${IMEI_Serial} .item_modal_description_table_${item_id}`).text($.trim(modal_item_note));
            $(`.imei_serial_expiry_${IMEI_Serial} #free_item_quantity_table_${item_id}`).text($.trim(itemPromoNo));
            itemModalHiddenDataClear();
            increaseFreeItemQty(1,  item_quantity_modal_input, item_id)
        }
        function oldItemAppentToCart(){
            $(`#item_seller_table${item_id}`).text(seller_id);
            $(`#item_price_table_${item_id}`).text($.trim(modal_item_price));
            $(`#item_total_price_table_${item_id}`).text($.trim(item_total_price));
            $(`#item_quantity_table_${item_id}`).text($.trim(item_quantity_modal_input));
            $(`#item_price_without_discount_${item_id}`).text(`${Number($.trim(modal_item_price)) * Number($.trim(item_quantity_modal_input))}`);
            $(`#percentage_table_${item_id}`).val($.trim(modal_discount));
            $(`.expiry_imei_serial_${item_id}`).text($.trim(IMEI_Serial));
            $(`.item_modal_description_table_${item_id}`).text($.trim(modal_item_note));
            $(`#free_item_quantity_table_${item_id}`).text($.trim(itemPromoNo));
            itemModalHiddenDataClear();
            increaseFreeItemQty(1,  item_quantity_modal_input, item_id)
        }
        function newItemAppentToCart(){
            let draw_table_for_order = '';
            let expiry_imei_serial = '';
            let promotionHtml = '';
            if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'|| item_type == 'Medicine_Product'){
                expiry_imei_serial = `<span class="imei_serial_note" id="expiry_imei_serial">${checkItemShortType(item_type)}: <span class="expiry_imei_serial_${item_id}">${IMEI_Serial}</span></span>`;
            }else{
                expiry_imei_serial = '';
            }


            let comboHtml = '';
            if(item_type == 'Combo_Product'){
                let comboName = 0;
                let comboQty = 0;
                let comboUnitPrice = 0;
                let combSubTotal = 0;
                let combChildId = '';
                let combParentId = '';
                let combSellerId = '';
                let combIFSale = '';
                let combItemShownInInvoice = '';
                $('.combo_product_html_render .combo_modal_body li').each(function(){
                    comboName = $(this).find('.combo_name').text();
                    comboQty = $(this).find('.combo_quantity').val();
                    comboUnitPrice = $(this).find('.combo_unit_price').val();
                    combSubTotal = $(this).find('.subtotal_combo').text();
                    combSubTotal = $(this).find('.subtotal_combo').text();
                    combChildId = $(this).find('.combo_child_id').val();
                    combParentId = $(this).find('.combo_parent_id').val();
                    combSellerId = $(this).find('.inline_seller_id').val();
                    combIFSale = $(this).find('.to_sales_item').is(':checked');
                    combItemShownInInvoice = $(this).find('.show_in_invoice').is(':checked');

                    if(combIFSale){
                        comboHtml +=`<div class="combo_cart_item combo_item_div_${combChildId}"  data-is_combo="Yes">
                            <div data-id="${combChildId}" class="customer_panel single_order_column first_column">
                                <iconify-icon icon="solar:pen-broken" class="op_cursor_pointer" width="22" data-parent_id=""></iconify-icon>
                                <span id="combo_item_name_table_${combChildId}">${comboName}</span>
                                <span class="d-none" id="combo_seller_table_${combChildId}">${combSellerId}</span>
                                <span class="d-none" id="combo_inv_show_table_${combChildId}">${combItemShownInInvoice ? 'Yes' : 'No'}</span>
                                <span class="d-none" id="combo_ifsale_table_${combChildId}">${combIFSale ? 'Yes' : 'No'}</span>
                            </div>
                            <div class="single_order_column second_column text-center"> 
                                <span id="combo_item_price_table_${combChildId}">${parseFloat(comboUnitPrice).toFixed(op_precision)}</span>
                            </div>
                            <div class="single_order_column third_column">
                                <iconify-icon icon="uil:minus" class="alert_combo_item_increase op_cursor_pointer decrease_item_table" id="combo_decrease_item_table_${combChildId}" width="22"></iconify-icon>
                                <span class="4_cp_qty_${combChildId} qty_item_custom cart_quantity" id="combo_item_quantity_table_${combChildId}">${parseFloat(comboQty)}</span> 
                                <iconify-icon icon="bitcoin-icons:plus-outline" class="alert_combo_item_increase op_cursor_pointer" id="increase_item_table_${combChildId}" width="22"></iconify-icon>
                            </div>
                            <div class="single_order_column forth_column">
                                <input type="" name="" onfocus="select();" placeholder="Amt or %" class="discount_cart_input" value="0" disabled>
                            </div>
                            <div class="single_order_column fifth_column text-right"> 
                                <span id="combo_item_total_price_table_${combChildId}">${parseFloat(combSubTotal).toFixed(op_precision)}</span>
                                <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-id="${combChildId}" class="combo-item-remove removeCartItemCombo"></iconify-icon>
                            </div>
                        </div>`;
                    }
                });
            }


            if(is_promo == 'Yes'){
                readonlyAttr = 'readonly';
                if(itemPromoNo > 0){
                    promotionHtml +=`<div class="free-item free_item_div_${item_id}" data-free-item-id="${promotionId}" data-get_fm_id="${item_id}" data-is_free="Yes">
                        <div data-id="${item_id}" class="customer_panel single_order_column first_column">
                        <iconify-icon icon="solar:pen-broken" class="op_cursor_pointer edit_item" width="22" data-parent_id=""></iconify-icon>
                            <span id="free_item_name_table_${item_id}">${promotionName}</span>
                            <span class="d-none" id="free_item_buy_table_${item_id}">${buyPromoQty}</span>
                            <span class="d-none" id="free_item_get_table_${item_id}">${getPromoQty}</span>
                        </div>
                        <div class="single_order_column second_column text-center"> 
                            <span id="free_item_price_table_${item_id}">${Number(0).toFixed(op_precision)}</span>
                        </div>
                        <div class="single_order_column third_column">
                            <iconify-icon icon="uil:minus" class="alert_free_item_increase op_cursor_pointer decrease_item_table" id="free_decrease_item_table_${item_id}" width="22"></iconify-icon>
                            <span class="4_cp_qty_${item_id} qty_item_custom cart_quantity" id="free_item_quantity_table_${item_id}">${itemPromoNo}</span> 
                            <iconify-icon icon="bitcoin-icons:plus-outline" class="alert_free_item_increase op_cursor_pointer" id="increase_item_table_${item_id}" width="22"></iconify-icon>
                        </div>
                        <div class="single_order_column forth_column">
                            <input type="" name="" onfocus="select();" placeholder="Amt or %" class="discount_cart_input" value="0" disabled>
                        </div>
                        <div class="single_order_column fifth_column text-right"> 
                            <span id="free_item_total_price_table_${item_id}">${Number(0).toFixed(op_precision)}</span>
                            <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-id="${item_id}" class="free-item-remove removeCartItemFree"></iconify-icon>
                        </div>
                    </div>`;
                }
            }


            draw_table_for_order = `<div data-variation-parent="${variation_parent}" class="single_order imei_serial_expiry_${IMEI_Serial}" is_promo="${is_promo}" data-qty_default="${default_qty_amt}" data-sale-unit="${sale_unit_name}" id="order_for_item_${item_id}" data-single-order-row-no="" data_cart_item_id="${item_id}">
                <div class="first_portion">
                    <span id="item_seller_table${item_id}" class="d-none">${seller_id}</span>
                    <span class="item_type d-none" id="item_type_table${item_id}">${item_type}</span>
                    <span class="item_vat d-none" id="item_vat_percentage_table${item_id}">${modal_item_vat_percentage}</span>
                    <span class="item_discount d-none" id="item_discount_table${item_id}">${percentValueCalculateByPriceQtyDiscount(modal_item_price, item_quantity_modal_input, modal_discount)}</span>
                    <span class="item_price_without_discount d-none" id="item_price_without_discount_${item_id}">${Number(modal_item_price) * Number(item_quantity_modal_input)}</span>
                    <div class="single_order_column first_column">
                        <iconify-icon icon="solar:pen-broken" class="op_cursor_pointer edit_item" width="22" id="edit_item_${item_id}"></iconify-icon>
                        <span id="item_name_table_${item_id}">${item_name}</span>
                    </div>
                    <div class="single_order_column second_column">
                        <span id="item_price_table_${item_id}">${modal_item_price}</span>
                    </div>
                    <div class="single_order_column third_column ${item_type == 'Combo_Product' ? 'combo_parent_inc_dec' : ''}">
                        <iconify-icon icon="uil:minus" class="decrease_item_table op_cursor_pointer" id="decrease_item_table_${item_id}" width="22"></iconify-icon>
                        <span class="cart_quantity" id="item_quantity_table_${item_id}">${item_quantity_modal_input}</span> 
                        <iconify-icon icon="uil:plus" class="increase_item_table op_cursor_pointer" id="increase_item_table_${item_id}" width="22"></iconify-icon>
                    </div>
                    <div class="single_order_column forth_column ${item_type == 'Combo_Product' ? 'combo_parent_inc_dec' : ''}">
                        <input type="" name="" onfocus="select();" inline_dis_column="${item_id}" placeholder="Amt or %" class="special_textbox access_control inline_dis_column" id="percentage_table_${item_id}" value="${modal_discount}" ${readonlyAttr}>
                    </div>
                    <div class="single_order_column fifth_column">
                        <span id="item_total_price_table_${item_id}">${item_total_price}</span> 
                        <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-remove-order-row-no="" class="remove_this_item_from_cart" width="22"></iconify-icon>
                    </div>
                </div>
                ${expiry_imei_serial}
                <span class="cart_item_modal_des item_modal_description_table_${item_id}">${modal_item_note}</span>
                ${promotionHtml}
                ${comboHtml}
            </div>`;

            $(".order_holder").append(draw_table_for_order);
            if(edit_mode == ''){
                storageCartDataInLocal();
            }
            itemModalHiddenDataClear();
        }
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }

        if ($(window).width() < 991) {
            cartMobileSuccessMsgAndItemCount();
            cartMobileItemCount();
        }
        $('#search').val('');
        $('#search_barcode').val('');
        setTimeout(function(){
            posDefaultCursor();
        }, 100)

    });

    function cartMobileSuccessMsgAndItemCount(){
        toastr.options = {
            "toas-container": "toast-top-right"
        };
        toastr.success('Product Successfully added in cart', '');
    }
    function cartMobileRemoveMsgAndItemCount(){
        toastr.options = {
            "toas-container": "toast-top-right"
        };
        toastr.success('Product Successfully remove from cart', '');
    }
    function cartMobileItemCount(){
        let cart_item = $('.single_order').length;
        $('.mobile_cart_count').text(`(${cart_item})`);
    }
    setTimeout(function(){
        cartMobileItemCount();
    }, 200);


    function itemModalHiddenDataClear(){
        $('#variation_parent').text('');
        $('#modal_item_name').text('');
        $('#modal_is_promo').text('');
        $('#modal_promo_buy_qty').text('');
        $('#modal_promo_get_qty').text('');
        $('#modal_promo_discount').text('');
        $('#modal_promo_item_id').text('');
        $('#modal_promo_type').text('');
        $('#modal_item_id').text('');
        $('#modal_item_type').text('');
        $('#modal_item_sale_unit').text('');
        $('#sale_unit_name_modal').text('');
        $('#modal_item_vat_percentage').text('');
        $('#m_p_price').text('');
        $('#w_s_price').text('');
        $('#s_price').text('');
        $('#modal_item_note').val('');
        $('.current_stock_t').text(Number(0).toFixed(op_precision));
        $('#current_stock_hidden').text(Number(0).toFixed(op_precision));
    }
    function storageCartDataInLocal(){
        localStorage['cart_html'] = $(".order_holder").html();
    }

    $(document).on('click', '.close_item_modal', function(){
        itemModalHiddenDataClear();
    });
    $(document).on('click', '.close_item_modal', function(){
        itemModalHiddenDataClear();
    });


    $(document).on('change', '#IMEI_Serial', function(){
        let item_id = $('#modal_item_id').text();
        let item_type = $('#modal_item_type').text();
        let sale_unit = $('#modal_item_sale_unit').text();
        let singleExpiryDate = $(this).val();
        let current_stock_hidden = $('#current_stock_hidden').val();
        let customer_price_type = $("#walk_in_customer option:selected").attr("price_type");
        if(item_type == 'Medicine_Product'){
            if(singleExpiryDate == ''){
                $('#item_quantity_modal_input').prop('readonly', true);
                $('.modal_increase_item_table').prop('disabled', true);
                $('.modal_decrease_item_table').prop('disabled', true);
                $('#sale_unit_name_modal').text('');
                $('#item_quantity_modal_input').val(0);
                $('#modal_total_price').text(Number(0).toFixed(op_precision));
                $('.current_stock_t').text(Number(current_stock_hidden).toFixed(op_precision));
            }else{
                $('#item_quantity_modal_input').prop('readonly', false);
                $('.modal_increase_item_table').prop('disabled', false);
                $('.modal_decrease_item_table').prop('disabled', false);
                $('#sale_unit_name_modal').text(sale_unit);
                $.ajax({
                    type: "POST",
                    url: base_url+"Sale/singleExpiryDateStockCheck",
                    async: false,
                    data: {
                        expiry_imei_serial: singleExpiryDate,
                        item_id: item_id,
                    },
                    success: function (response) {
                        if(response.status == 'success'){
                            $('.current_stock_t').text((Number(response.data.stock_quantity)).toFixed(op_precision));
                            $('#item_quantity_modal_input').val(parseFloat(1));
                        }
                    }
                });
                if(customer_price_type == 2){
                    $(".whole_price_active").click();
                }else{
                    $(".sale_price_active").click();
                }
            }
        }else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            if(singleExpiryDate == ''){
                $('.current_stock_t').text(parseFloat(current_stock_hidden).toFixed(op_precision));
                $('#item_quantity_modal_input').val(0);
            }else{
                $('.current_stock_t').text(parseFloat(1).toFixed(op_precision));
                $('#item_quantity_modal_input').val(1);
                if(customer_price_type == 2){
                    $(".whole_price_active").click();
                }else{
                    $(".sale_price_active").click();
                }
            }
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#cancel_button', function () {
        //get total items in cart
        let total_items_in_cart = $('.order_holder .single_order').length;
        if (total_items_in_cart > 0) {
            Swal.fire({
                title: warning + "!",
                text: `Total Items in cart ${total_items_in_cart}`,
                showDenyButton: true,
                showCancelButton: false,
                confirmButtonText: yes,
                denyButtonText: cancel
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    clearFooterCartCalculation(); 
                    $('.order_table_holder .order_holder').empty();
                    $('.main_top').find('button').css('background-color', '#F3F3F3');
                    $('.main_top').find('button').attr('data-selected', 'unselected');
                    $("#walk_in_customer").val('').trigger('change');
                    $("#select_employee_id").val('').trigger('change');
                    $('#place_edit_order').text('Payment');
                } 
            });
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('keyup', '#modal_item_price_input_field', function(){
        let discount = $('#modal_discount').val();
        let modalPrice = $(this).val();
        let modalQty = $('#item_quantity_modal_input').val();
        let subtotal = subtotalCalculateByPriceQtyDiscount(modalPrice, modalQty, discount);
        $('#modal_total_price').text(Number(subtotal).toFixed(op_precision));
    });

    // Code optimize by Azhar ** Final **
    function itemModalQtyUpDown(modalQty){
        let single_item_subtotal;
        let item_type = $(`#modal_item_type`).text();
        let fixedCurrentStock = $('#current_stock_hidden').val();
        let discount = $('option:selected', "#walk_in_customer").attr('discount');
        let modalPrice = $('#modal_item_price_input_field').val();
        let modal_discount =  $('#modal_discount').val();
        if(allow_less_sale == 'No' && (Number(fixedCurrentStock) < Number(modalQty)) && item_type != 'Service_Product'){
            let curr_qty = $('.current_stock_t').text();
            $('#item_quantity_modal_input').val(Number(fixedCurrentStock));
            toastr['error'](('Over selling is not allowed!'), '');
            return false;
        }else if(item_type != 'Service_Product'){
            $('.current_stock_t').text((Number(fixedCurrentStock)).toFixed(op_precision));
        }
        let modal_promo_discount = $('#modal_promo_discount').text();
        if(modal_promo_discount){
            $('#modal_discount').val(modal_promo_discount);
            single_item_subtotal = subtotalCalculateByPriceQtyDiscount(modalPrice,modalQty,modal_promo_discount);
        }else{
            if(modal_discount){
                $('#modal_discount').val(modal_discount);
            }else{
                $('#modal_discount').val(discount);
            }
            single_item_subtotal = subtotalCalculateByPriceQtyDiscount(modalPrice,modalQty,discount);
        }
        $('#modal_total_price').text(Number(single_item_subtotal).toFixed(op_precision));
    }

    // Code optimize by Azhar ** Final **
    $(document).on('keyup', '#item_quantity_modal_input', function(){
        let modalQty = $(this).val();
        itemModalQtyUpDown(modalQty); 
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.modal_decrease_item_table', function(){
        let modalQty = $('#item_quantity_modal_input').val();
        if(Number(modalQty) > 1){
            $('#item_quantity_modal_input').val(Number(modalQty) - 1);
            itemModalQtyUpDown(Number(modalQty) - 1); 
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.modal_increase_item_table', function(){
        let modalQty = $('#item_quantity_modal_input').val();
        $('#item_quantity_modal_input').val(Number(modalQty) + 1);
        itemModalQtyUpDown(Number(modalQty) + 1); 
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.edit_item', function (event) {
        $("#item_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
        let item_id = $(this).attr('id').substr(10);
        let item_obj = findItemByItemId(item_id);

        // Promotion Setter And Getter
        $('#modal_is_promo').text(item_obj.is_promo);
        $('#modal_promo_buy_qty').text(item_obj.promo_qty);
        $('#modal_promo_get_qty').text(item_obj.promo_get_qty);
        $('#modal_promo_type').text(item_obj.promo_type);
        $('#modal_promo_discount').text(item_obj.promo_discount);
        $("#promotion-text").html(item_obj.promo_description);

        let single_item_subtotal;
        let price_type = $('#walk_in_customer').find(':selected').attr('price_type');
        let variationParent_id = item_obj.parent_id;
        let last_purchase_price = item_obj.last_purchase_price ? item_obj.last_purchase_price : 0;
        let whole_sale_price = item_obj.whole_sale_price ? item_obj.whole_sale_price : 0;
        let sale_price = item_obj.price ? item_obj.price : 0;
        let item_type = item_obj.item_type;

        if(item_type != 'Combo_Product'){
            $('.combo_product_html_render').hide();
        }else{
            $('.combo_product_html_render').show();
        }

        if(item_type == 'IMEI_Product' || item_type == 'Serial_Product' || item_type == 'Medicine_Product'){
            if (window.matchMedia("(min-width: 320px) and (max-width: 575.98px)").matches) {
                $('.item-modal-top-header').css({
                    'grid-template-columns':'1fr',
                });
            }else{
                $('.item-modal-top-header').css({
                    'grid-template-columns':'32% 32% 32%',
                });
            }
        }else{
            $('.item-modal-top-header').css({
                'grid-template-columns':'65% 33%',
            });
        }
        
        editModalFieldHideShowByItemType(item_type)

        // Modal Value Set
        let item_name = $(this).siblings('span').text();
        $('#modal_item_name').text(item_name)
        $('#modal_item_id').text(item_id)
        // Set Unit Type
        $('#modal_item_sale_unit').text(item_obj.sale_unit_name);
        $('#sale_unit_name_modal').text(item_obj.sale_unit_name);
        let currentItemPrice = $(this).parent().parent().find('.second_column span').eq(0).text();
        let item_quantity = $(this).parent().parent().find('.third_column .cart_quantity').text();
        let discount = $(this).parent().parent().find('.forth_column .inline_dis_column').val();

        $('#modal_item_price_input_field').val(currentItemPrice);
        $('#modal_discount').val(discount)

        $('#item_quantity_modal_input').val($.trim(item_quantity));
        $('#edit_item_modal_header').text(item_name);
        $('#modal_item_type').text(item_type);
        let itemNoteOldValue = $(this).parent().parent().parent().find('.cart_item_modal_des span').text();
        if($.trim(itemNoteOldValue) == ''){
            $('#modal_item_note').val('');
        }else{
            $('#modal_item_note').val(itemNoteOldValue);
        }

        if(item_type == 'Service_Product'){
            $('.service_disabled').css({
                'pointer-events':'none',
                'opacity':'0.5',
                'cursor':'not-allowed',
            });
        } else {
            $('.service_disabled').css({
                'pointer-events':'unset',
                'opacity':'unset',
                'cursor':'unset',
            });
        }


        // Get Item Id and Set Current Stock
        if(item_type != 'Service_Product' && item_type != 'Combo_Product'){
            $.ajax({
                url: base_url + "Sale/stockCheckingForThisOutletById",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    $('.current_stock_t').text((Number(response.data)).toFixed(op_precision));
                    $('#current_stock_hidden').val((Number(response.data)).toFixed(op_precision));
                }
            });
        }else{
            $('.current_stock_t').text(Number(0).toFixed(op_precision));
        }
        
        if(item_type == 'General_Product'){
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Installment_Product'){
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            let cartImeiSerial = $(this).parent().parent().parent().find('.imei_serial_note span').eq(0).text();
            $.ajax({
                url: base_url + "Sale/getIMEISerial",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id, item_type:item_type },
                success: function (response) {
                    let imeiHtml = '';
                    imeiHtml = `<option value="">Select ${item_type == 'IMEI_Product' ? 'IMEI' : 'Serial'}</option>`;
                    if(response.data.allimei){
                        let stockIMEI = response.data.allimei.split("||");
                        $.each(stockIMEI, function (i, v) { 
                            imeiHtml += `<option ${$.trim(cartImeiSerial) == $.trim(v) ? 'selected' : ''} value="${$.trim(v)}">${v}</option>`;
                        });
                    }
                    $('#IMEI_Serial').html('');
                    $('#IMEI_Serial').append(imeiHtml);
                    setTimeout(function(){
                        $('#IMEI_Serial').val(cartImeiSerial).trigger('change');
                        $('#item_quantity_modal_input').val(item_quantity);
                    }, 500);
                }
            });
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Medicine_Product'){
            $('.item_type_heading').text('Expiry Dates');
            let cartExpiryDate = $(this).parent().parent().parent().find('.imei_serial_note span').eq(0).text();
            $.ajax({
                url: base_url + "Sale/getExpiryByOutlet",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    let expiryHtml = '';
                    expiryHtml = `<option value="">Select Expiry</option>`;
                    if(response.data){
                        $.each(response.data, function (i, v) { 
                            if(v.stock_quantity != 0){
                                expiryHtml += `<option ${$.trim(cartExpiryDate) == v.expiry_imei_serial ? 'selected' : ''} value="${$.trim(v.expiry_imei_serial)}">${$.trim(v.expiry_imei_serial)}</option>`;
                            }
                            if($.trim(cartExpiryDate) == v.expiry_imei_serial){
                                $('.current_stock_t').text((Number(v.stock_quantity)).toFixed(op_precision));
                                $('#current_stock_hidden').val((Number(v.stock_quantity)).toFixed(op_precision));
                            }
                        });
                    }
                    $('#IMEI_Serial').html('');
                    $('#IMEI_Serial').append(expiryHtml);
                    setTimeout(function(){
                        $('#IMEI_Serial').val(cartExpiryDate).trigger('change');
                        $('#item_quantity_modal_input').val(item_quantity);
                    }, 500);
                }
            });
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Variation_Product' || item_type == '0'){
            $('.item_type_variation_heading').text('Variations');
            $('#variation_parent').text(variationParent_id);
            $('#item_quantity_modal_input').val(Number(item_quantity));
            $.ajax({
                url: base_url + "Sale/getVariationByItemId",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: variationParent_id },
                success: function (response) {
                    if(response.status == 'success'){
                        let variationHtml = '';
                        $.each(response.data, function (i, v) { 
                            variationHtml += `<div class="container variationSingleItem ${v.id == item_id ? 'v-active' : ''}" data-is-promo="" data-item-id="${v.id}" id="item-id-${v.id}" data-item-name="${v.parent_name +' ' + v.name + '('+v.code+')'}" data-sale-price="${v.sale_price ? v.sale_price : 0}" data-whole-sale-price="${v.whole_sale_price ? v.whole_sale_price : 0}" data-purchase-price="${v.purchase_price ? v.purchase_price : 0 }" data-menu-tax='${v.tax_information}' data-sale-unit="${v.sale_unit_name}">
                                <span>${v.name}</span>
                                <span class="pl-10">Price: ${v.sale_price}</span>
                                <input type="radio" name="variation_items">
                                <span class="checkmark"></span>
                            </div>`;
                        });
                        $('.variationProductHtmlRender').html('');
                        $('.variationProductHtmlRender').append(variationHtml);
                    }
                }
            });
            $('.item-modal-top-header').show();
            $('.modal_qty_area').removeClass('item_modal_quantity_area_disabled');
        }else if(item_type == 'Combo_Product'){
            $('.item-modal-top-header').hide();
            $('.modal_qty_area').addClass('item_modal_quantity_area_disabled');
            $.ajax({
                url: base_url + "Sale/getComboItemCheck",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    if(response.status == 'success'){
                        let html = '';
                        $.each(response.data.combo_items, function (i, v) { 
                            let old_item_qty = $(`#combo_item_quantity_table_${v.child_combo_item_id}`).text();
                            let old_item_price = $(`#combo_item_price_table_${v.child_combo_item_id}`).text();
                            let old_show_inv = $(`#combo_inv_show_table_${v.child_combo_item_id}`).text();
                            let old_ifsale = $(`#combo_ifsale_table_${v.child_combo_item_id}`).text();
                            let old_seller = $(`#combo_seller_table_${v.child_combo_item_id}`).text();
                            let html2 = '<option value="">Select Employee</option>';
                            $.each(response.data.sellers, function (i, v) { 
                                console.log(old_seller == v.id ? 'Find' : 'Not Find');
                                html2+=`<option ${old_seller ? (old_seller == v.id ? 'selected' : '') : '' } value="${v.id}">${v.full_name}</option>`;
                            });
                            let inv_check = '';
                            if(old_show_inv){
                                inv_check = old_show_inv == 'Yes' ? 'checked' : '';
                            }else{
                                inv_check = '';
                            }
                            let ifsale_check = '';
                            if(old_ifsale){
                                ifsale_check = old_ifsale == 'Yes' ? 'checked' : '';
                            }else{
                                ifsale_check = '';
                            }
                            html +=`<li>
                                <div>${i + 1}</div>
                                <div class="text-center">
                                    <label class="container">
                                        <input type="checkbox" class="show_in_invoice" ${inv_check}>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="text-center">
                                    <label class="container">
                                        <input type="checkbox" class="to_sales_item" ${ifsale_check}>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div>
                                    <p class="combo_name">${v.item_name}</p>
                                    <input type="hidden" class="combo_child_id" value="${v.child_combo_item_id}">
                                    <input type="hidden" class="combo_parent_id" value="${v.combo_parent_id}">
                                </div>
                                <div>
                                    <input type="text" class="form-control combo_quantity  comboCalculation" value="${old_item_qty ? parseFloat(old_item_qty) : parseFloat(v.quantity)}">
                                </div>
                                <div>
                                    <input type="text" class="form-control combo_unit_price  comboCalculation" value="${ old_item_price ? parseFloat(old_item_price) : parseFloat(v.unit_price)}">
                                </div>
                                <div>
                                    <p class="subtotal_combo comboCalculation text-center">${old_item_qty  ? (parseFloat(old_item_qty) * parseFloat(old_item_price)).toFixed(op_precision)  : (parseFloat(v.quantity) * parseFloat(v.unit_price)).toFixed(op_precision)}</p>
                                </div>
                                <div>
                                    <select class="inline_seller_id select2">
                                        ${html2}
                                    </select>
                                </div>
                            </li>`;
                        });
                        setTimeout(function(){
                            $('.combo_product_html_render .combo_modal_body').html('');
                            $('.combo_product_html_render .combo_modal_body').append(html);
                            $('.combo_product_html_render [data-bs-toggle="tooltip"]').tooltip();
                            $(".select2").select2();
                        }, 200);
                    }
                }
            });
        }

        // Item Modal Data Set
        if (last_purchase_price != '' && last_purchase_price != null && view_purchase_price == 'Yes') {
            $("#m_p_price").html(parseFloat(last_purchase_price).toFixed(op_precision));
        } else {
            $("#m_p_price").html(Number(0).toFixed(op_precision));
        }
        if (whole_sale_price != '' && whole_sale_price != null && view_purchase_price == 'Yes') {
            $("#w_s_price").html(parseFloat(whole_sale_price).toFixed(op_precision));
        } else {
            $("#w_s_price").html(Number(0).toFixed(op_precision));
        }
        if (sale_price != '' && sale_price != null) {
            $("#s_price").html(parseFloat(sale_price).toFixed(op_precision));
        } else {
            $("#s_price").html(Number(0).toFixed(op_precision));
        }
        if (discount) {
            $('#modal_discount').val($.trim(discount));
        } else {
            $('#modal_discount').val(Number(0));
        }
        if(price_type == 1 && item_type != 'Service_Product'){
            $('input[name="model_price"][value="modal_sale_price"]').prop('checked', true);
            $('input[name="model_price"][value="modal_whole_sale_price"]').prop('checked', false);
            $('input[name="model_price"][value="modal_purchase_price"]').prop('checked', false);
        }else if(price_type == 2 && item_type != 'Service_Product'){
            $('input[name="model_price"][value="modal_whole_sale_price"]').prop('checked', true);
            $('input[name="model_price"][value="modal_sale_price"]').prop('checked', false);
            $('input[name="model_price"][value="modal_purchase_price"]').prop('checked', false);
        }else{
            $('input[name="model_price"][value="modal_whole_sale_price"]').prop('checked', false);
            $('input[name="model_price"][value="modal_sale_price"]').prop('checked', true);
            $('input[name="model_price"][value="modal_purchase_price"]').prop('checked', false);
        }
        single_item_subtotal = subtotalCalculateByPriceQtyDiscount(currentItemPrice, item_quantity, discount);
        let saleUnitName = $(`#order_for_item_${item_id}`).attr('data-sale-unit');
        $(`#sale_unit_name_modal`).text(saleUnitName);
        $('#modal_item_price_input_field').val(Number($.trim(currentItemPrice)).toFixed(op_precision))
        $('#modal_total_price').text(Number(single_item_subtotal).toFixed(op_precision));
    });

    function editModalFieldHideShowByItemType(item_type){
        if(item_type == 'General_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
        }else if(item_type == 'Installment_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
        }else if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            $('.Available_IMEI_Srial').show();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('#item_quantity_modal_input').prop('readonly', true);
            $('.modal_increase_item_table').prop('disabled', true);
            $('.modal_decrease_item_table').prop('disabled', true);
        }else if(item_type == 'Medicine_Product'){
            $('.Available_IMEI_Srial').show();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('#item_quantity_modal_input').prop('readonly', false);
            $('.modal_increase_item_table').prop('disabled', false);
            $('.modal_decrease_item_table').prop('disabled', false);
        }else if(item_type == 'Variation_Product' || item_type == '0'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').show();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('.modal_increase_item_table').prop('disabled', false);
            $('.modal_decrease_item_table').prop('disabled', false);
            $('#item_quantity_modal_input').prop('readonly', false);
        }else if(item_type == 'Service_Product'){
            $('.Available_IMEI_Srial').hide();
            $('.variationProductHtmlRenderWrap').hide();
            $('#modal_item_price_input_field').prop('readonly', false);
            $('#modal_discount').prop('readonly', false);
            $('.modal_increase_item_table').prop('disabled', false);
            $('.modal_decrease_item_table').prop('disabled', false);
            $('#item_quantity_modal_input').prop('readonly', false);
        }
    }



   
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.close_item_modal', function () {
        $('#item_modal').removeClass("active");
        $(".pos__modal__overlay").fadeOut(300);
        resetItemModalAfterAddToCartOrClose();
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#plus_button', function () {
        $.ajax({
            url: base_url + "Master/checkAccess",
            method: "GET",
            async: false,
            dataType: 'json',
            data: { controller: "147", function: "add" },
            success: function (response) {
                if (response == false) {
                    Swal.fire({
                        title: warning+" !",
                        text: no_permission_for_this_module,
                        showDenyButton: false,
                        showCancelButton: false,
                        confirmButtonText: ok,
                    });
                } else {
                    resetAddCustomerModalAfterAddOrClose();
                    $('#customer_discount_modal').val("").change();
                    $('#customer_id_modal').val("");
                    $('#customer_price_type').val(1).change();
                    $('#add_or_edit_text').text('Add Customer');
                    $('#add_customer_modal').addClass('active');
                    $('.pos__modal__overlay').fadeIn(300);
                }
            }
        });
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.cancel_customer_modal', function () {
        $('#add_customer_modal').removeClass('active');
        $('.pos__modal__overlay').fadeOut(300);
    });

    // Code optimize by Azhar ** Final **
    $("#customer_dob_modal").datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        maxDate: '0'
    });

    // Code optimize by Azhar ** Final **
    $("#customer_doa_modal").datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        maxDate: '0'
    });

    // Code optimize by Azhar ** Final **
    function getLastSale(date_c, customer_c, invoice_c, status) {
        $.ajax({
            url: base_url + "Sale/get_last_10_sales_ajax",
            method: "GET",
            data: { date_c: date_c, customer_c: customer_c, invoice_c: invoice_c, status: status },
            success: function (response) {
                let orders = JSON.parse(response);
                let last_10_orders = '';
                if (orders.length === 0) {
                    last_10_orders += `<div class="op_center op_padding_10">There is no sale found</div>`;
                } else {
                    for (let key in orders) {
                        last_10_orders += `<div class="single_last_ten_sale fix" id="last_ten_${orders[key].id}" data-selected="unselected">
                            <div class="first_column column fix">${orders[key].sale_no}</div>
                            <div class="second_column column fix">${orders[key].customer_name}</div>
                            <div class="third_column column fix">${opDateFormat(orders[key].sale_date) + ' ' + orders[key].order_time}</div>
                        </div>`;
                    }
                }
                $(".last_ten_sales_holder .hold_list_holder .detail_holder ").empty();
                $(".last_ten_sales_holder .hold_list_holder .detail_holder ").prepend(last_10_orders);
            }
        });
    }


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.search_sale', function () {
        let date_c = $("#date_c").val();
        let customer_c = $("#customer_c").val();
        let invoice_c = $("#invoice_c").val();
        getLastSale(date_c, customer_c, invoice_c, '');
    });

    // Code optimize by Azhar ** Final **
    function recentSaleModalDataClear(){
        $('#last_10_order_invoice_no').text('');
        $('#last_10_order_date_time').text('');
        $('#last_10_customer_name').text('');
        $('.modifier_item_details_holder').html('');
        $('#sub_total_show_last_10').text(Number(0).toFixed(op_precision));
        $('#total_items_in_cart_last_10').text(Number(0));
        $('#total_items_qty_in_cart_last_10').text(Number(0));
        $('#all_items_vat_last_10').text(Number(0).toFixed(op_precision));
        $('#delivery_charge_last_10').text(Number(0).toFixed(op_precision));
        $('#sub_total_discount_last_10').text(Number(0).toFixed(op_precision));
        $('#all_items_discount_last_10').text(Number(0).toFixed(op_precision));
        $('#total_payable_last_10').text(Number(0).toFixed(op_precision));
        $('#paid_amount_last_10').text(Number(0).toFixed(op_precision));
        $('#due_amount_last_10').text(Number(0).toFixed(op_precision));

        // Other
        $('#last_10_customer_id').text('');
        $("#sub_total_last_10").text(Number(0).toFixed(op_precision));
        $("#total_item_discount_last_10").text(Number(0).toFixed(op_precision));
        $("#discounted_sub_total_amount_last_10").text(Number(0).toFixed(op_precision));
        $("#date_c").val('');
    }


    $(document).on('click', '#last_ten_sales_button', function () {
        $.ajax({
            url: base_url + "Master/checkAccess",
            method: "GET",
            async: false,
            dataType: 'json',
            data: { controller: "138", function: "list" },
            success: function (response) {
                if (response == false) {
                    Swal.fire({
                        title: warning+" !",
                        text: no_permission_for_this_module,
                        showDenyButton: false,
                        showCancelButton: false,
                        confirmButtonText: ok,
                    });
                } else {
                    recentSaleModalDataClear();
                    holdSaleModalDataClear();
                    $("#show_last_ten_sales_modal").addClass("active");
                    $(".pos__modal__overlay").fadeIn(200);
                    $('.overlayForCalculator').css('display', 'none');
                    $('#calculator_main').css('display', 'none');
                    /**
                     * Add Datepicker in form Search field
                     */
                    let op_current_date = new Date();
                    $(".date_sale")
                        .datepicker({
                            autoclose: true,
                            format: "yyyy-mm-dd",
                            todayHighlight: true,
                        })
                        .datepicker("update", op_current_date);
                    $(".date_sale").on("changeDate", function (event) {
                        $("#date_c").val(event.format());
                    });
                    let date_c = $("#date_c").val();
                    getLastSale(date_c, '', '', 'default');
                }
            }
        });
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.last_ten_sales_button', function () {
        $.ajax({
            url: base_url + "Master/checkAccess",
            method: "GET",
            async: false,
            dataType: 'json',
            data: { controller: "138", function: "list" },
            success: function (response) {
                if (response == false) {
                    Swal.fire({
                        title: warning+" !",
                        text: no_permission_for_this_module,
                        showDenyButton: false,
                        showCancelButton: false,
                        confirmButtonText: ok,
                    });
                } else {
                    recentSaleModalDataClear();
                    holdSaleModalDataClear();
                    $("#show_last_ten_sales_modal").addClass("active");
                    $(".pos__modal__overlay").fadeIn(200);
                    $('.overlayForCalculator').css('display', 'none');
                    $('#calculator_main').css('display', 'none');
                    /**
                     * Add Datepicker in form Search field
                     */
                    let op_current_date = new Date();
                    $(".date_sale")
                        .datepicker({
                            autoclose: true,
                            format: "yyyy-mm-dd",
                            todayHighlight: true,
                        })
                        .datepicker("update", op_current_date);
                    $(".date_sale").on("changeDate", function (event) {
                        $("#date_c").val(event.format());
                    });
                    let date_c = $("#date_c").val();
                    getLastSale(date_c, '', '', 'default');
                }
            }
        });
    });

    // Code optimize by Azhar ** Final **
    function increaseFreeItemQty(type,qty_cart,s_item_id){
        // iterate over each item in the array
        let is_promo = '';
        let promo_type = '';
        let item_id = 0;
        let promo_qty = 0;
        let promo_get_qty = 0;
        let draw_table_for_order = ''
        let promo_item_name = ''
        let promo_item_id = ''
        for (let i = 0; i < window.items.length; i++) {
            if (items[i].item_id == Number(s_item_id)) {
                is_promo = (items[i].is_promo);
                promo_type = Number((items[i].promo_type));
                item_id = (items[i].item_id);
                promo_item_name = (items[i].promo_item_name);
                promo_item_id = (items[i].promo_item_id);
                promo_qty = (items[i].promo_qty);
                promo_get_qty = (items[i].promo_get_qty);
            }
        }
        if(is_promo=="Yes" && promo_type==2){
            let counting_qty_cart = (parseInt((qty_cart/promo_qty)) * promo_get_qty);
            if(counting_qty_cart > 0){
                draw_table_for_order +=`<div class="free-item free_item_div_${item_id}"  data-get_fm_id="${item_id}" data-free-item-id="${promo_item_id}"  data-is_free="Yes">
                        <div data-id="${item_id}" class="customer_panel single_order_column first_column">
                            <iconify-icon icon="solar:pen-broken" class="op_cursor_pointer edit_item" width="22" data-parent_id=""></iconify-icon>
                            <span id="free_item_name_table_${item_id}">${promo_item_name}</span>
                        </div>
                        <div class="single_order_column second_column">
                            <span id="free_item_price_table_${item_id}">${Number(0).toFixed(op_precision)}</span>
                        </div>
                        <div class="single_order_column third_column">
                            <iconify-icon icon="uil:minus" class="alert_free_item_increase op_cursor_pointer" id="free_decrease_item_table_${item_id}" width="22"></iconify-icon>
                            <span class="4_cp_qty_${item_id} qty_item_custom" id="free_item_quantity_table_${item_id}">1</span>
                            <iconify-icon icon="uil:plus" class="alert_free_item_increase increase_item_table op_cursor_pointer" id="free_increase_item_table_${item_id}" width="22"></iconify-icon>
                        </div>
                        <div class="single_order_column forth_column fix">
                            <input type="" name="" onfocus="select();" placeholder="Amt or %" class="discount_cart_input" id="free_percentage_table_${item_id}" value="" disabled>
                        </div>
                        <div class="single_order_column fifth_column">
                            <span id="free_item_total_price_table_${item_id}">${Number(0).toFixed(op_precision)}</span>
                            <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-id="${item_id}" class="free-item-remove removeCartItemFree"></iconify-icon>
                        </div>
                    </div>
                </div>`;
                let free_item_div = $(".free_item_div_"+item_id).attr('data-is_free');
                if(free_item_div=="Yes"){
                    $("#free_item_quantity_table_"+item_id).html(counting_qty_cart);
                }else{
                    $("#order_for_item_"+item_id).append(draw_table_for_order);
                }
            }else{
                $(".free_item_div_"+item_id).remove();
            }
        }
    }





    // Code optimize by Azhar ** Final **
    // when plus sign is clicked in the table ** Optimized Code By Azhar
    $(document).on('click', '.single_order .first_portion .third_column .increase_item_table', function () {
        productSound2.play();
        let item_id = $(this).attr('id').substr(20);
        let item_type = $(this).parent().parent().find('.item_type').text();
        let discount = $('#walk_in_customer').find(':selected').attr('discount');
        let percentage_table = $(this).parent().parent().find('.forth_column .inline_dis_column').val();
        cartIncDecButtonEnableDisableByType(item_type, item_id);
        let item_obj = findItemByItemId(item_id);
        if(item_obj.is_promo == "Yes"){
            discount = item_obj.promo_discount != '' ? item_obj.promo_discount : 0;
            $(this).parent().parent().find('.forth_column  .inline_dis_column').prop('readonly', true);
        }else{
            if(discount == 0 || discount == "" || discount == NaN || discount == undefined || discount == null || discount == 'null'){
                discount = 0;
            }else{
                discount = discount;
            }
            if(discount != 0){
                $(this).parent().parent().find('.forth_column .inline_dis_column').prop('readonly', true);
            }else{
                $(this).parent().parent().find('.forth_column .inline_dis_column').prop('readonly', false);
            }
        }
        let itemQty = '';
        if(item_type == 'IMEI_Product' || item_type == 'Serial_Product'){
            itemQty = parseFloat($(this).siblings('.cart_quantity').text());
        }else{
            itemQty = parseFloat($(this).siblings('.cart_quantity').text()) + 1;
        }
        if(percentage_table != '' && percentage_table != 0){
            $(this).parent().parent().find('.forth_column .inline_dis_column').val(percentage_table);
        }else{
            $(this).parent().parent().find('.forth_column .inline_dis_column').val(discount);
        }
        let unit_price = $(this).parent().parent().find('.second_column span').eq(0).text();
        let stock_checker = true;
        if(allow_less_sale=="No" && item_type != 'Service_Product'){
            $.ajax({
                url: base_url + "Authentication/checkQTY",
                method: "POST",
                async: false,
                dataType: 'json',
                data: { item_id: item_id },
                success: function (response) {
                    let return_stock = Number(response);
                    if(return_stock < itemQty){
                        stock_checker = false;
                        toastr['error'](("Stock Not available!"), '');
                    }
                }
            });
        }
        if(stock_checker){
            let updated_total_price = (parseFloat(itemQty) * parseFloat(unit_price)).toFixed(op_precision);
            $(this).parent().parent().find('.item_price_without_discount').text(updated_total_price);
            $(this).siblings('.cart_quantity').text(itemQty)
            cartItemCalculationInPOS();
            if(edit_mode == ''){
                storageCartDataInLocal();
            }
        }
        increaseFreeItemQty(2, itemQty, item_id);
    });

    function cartIncDecButtonEnableDisableByType(item_type, item_id){
        if(item_type == 'IMEI_Product' || item_type == 'Serail_Product')
        $(`#increase_item_table_${item_id}`).prop('disabled', true);
    }

    // Code optimize by Azhar ** Final **
    //when minus sign is clicked in the table ** Optimized Code By Azhar
    $(document).on('click', '.single_order .first_portion .third_column .decrease_item_table', function () {
        productSound2.play();
        let item_id = $(this).attr('id').substr(20);
        let discount = $('#walk_in_customer').find(':selected').attr('discount');  
        let percentage_table = $(this).parent().parent().find('.forth_column .inline_dis_column').val();
        let item_obj = findItemByItemId(item_id);
        if(item_obj.is_promo == "Yes"){
            discount = item_obj.promo_discount != '' ? item_obj.promo_discount : 0;
            $(this).parent().parent().find('.forth_column  .inline_dis_column').prop('readonly', true);
        }else{
            if(discount == 0 || discount == "" || discount == NaN || discount == undefined || discount == null || discount == 'null'){
                discount = 0;
            }else{
                discount = discount;
            }
            if(discount != 0){
                $(this).parent().parent().find('.forth_column  .inline_dis_column').prop('readonly', true);
            }else{
                $(this).parent().parent().find('.forth_column  .inline_dis_column').prop('readonly', false);
            }
        }
        let item_quantity = parseFloat($(this).siblings('.cart_quantity').text()) - 1;
        let unit_price = parseFloat($(this).parent().parent().find('.second_column span').eq(0).text());
        if(percentage_table != '' && percentage_table != 0){
            $(this).parent().parent().find('.forth_column  .inline_dis_column').val(percentage_table);
        }else{
            $(this).parent().parent().find('.forth_column  .inline_dis_column').val(discount);
        }
        if (item_quantity >= 1) {
            let updated_total_price = (parseFloat(item_quantity) * parseFloat(unit_price)).toFixed(op_precision);
            $(this).parent().parent().find('.item_price_without_discount').text(updated_total_price);
            $(this).siblings('.cart_quantity').text(item_quantity);
            cartItemCalculationInPOS();
            if(edit_mode == ''){
                storageCartDataInLocal();
            }
        } else {
            $(this).parent().parent().parent().remove();
            cartItemCalculationInPOS();
            if(edit_mode == ''){
                storageCartDataInLocal();
            }
        }
        increaseFreeItemQty(1, item_quantity, item_id);
    });


    // Code optimize by Azhar ** Final **
    //add discount for specific item
    $(document).on('keyup', '.single_order .first_portion .forth_column input', function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 96 && e.which != 97 && e.which != 98 && e.which != 99 && e.which != 100 && e.which != 101 && e.which != 102 && e.which != 103 && e.which != 104 && e.which != 105 && e.which != 110 && e.which != 190 && e.which != 16 && e.which != 53 && e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            $(this).val('');
        }
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
    });


    // Code optimize by Azhar ** Final **
    //add discount for specific item in modal
    $(document).on('keyup', '#modal_discount', function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 96 && e.which != 97 && e.which != 98 && e.which != 99 && e.which != 100 && e.which != 101 && e.which != 102 && e.which != 103 && e.which != 104 && e.which != 105 && e.which != 110 && e.which != 190 && e.which != 16 && e.which != 53 && e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            $(this).val('');
        }
        updateCartItemPrice();
    });

    // Code optimize by Azhar ** Final **
    $(document).on('keyup', '#sub_total_discount', function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 96 && e.which != 97 && e.which != 98 && e.which != 99 && e.which != 100 && e.which != 101 && e.which != 102 && e.which != 103 && e.which != 104 && e.which != 105 && e.which != 110 && e.which != 190 && e.which != 16 && e.which != 53 && e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            $(this).val('');
        }
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('keyup', '#delivery_charge', function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 96 && e.which != 97 && e.which != 98 && e.which != 99 && e.which != 100 && e.which != 101 && e.which != 102 && e.which != 103 && e.which != 104 && e.which != 105 && e.which != 110 && e.which != 190 && e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            $(this).val('');
        } else {
            $("#show_charge_amount").text(Number($(this).val()).toFixed(op_precision));
        }
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
    });


    $(document).on('click', '.delivery_charge_submit', function(){
        let delivery = $('#delivery_charge').val();
        $('#show_charge_amount').text(Number(delivery).toFixed(op_precision));
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
    });

    // Code optimize by Azhar ** Final **
    $("#walk_in_customer").select2({
        dropdownCssClass: 'bigdrop',
        dropdownAutoWidth: true,
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_finalize_cart_details", function () {
        $("#finalize_cart_details_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(300);
        let subtotal = $('#sub_total_show').text();
        let total_item = $('#total_items_in_cart_without_quantity').text();
        let total_item_with_qty = $('#total_items_in_cart_with_quantity').text();
        let total_vat = $('#show_vat_modal').text();
        let charge = $('#show_charge_amount').text();
        let all_discount = $('#all_items_discount').text();
        let total_discount = $('#show_discount_amount').text();
        let item_id;
        let itemName;
        let itemPrice;
        let itemQty;
        let itemDis;
        let itemSubTotal;
        let singleItem = '';
        $('.single_order').each(function(){
            item_id = $(this).attr('id').substr(15);
            itemName = $(`.single_order #item_name_table_${item_id}`).text();
            itemPrice = $(`.single_order #item_price_table_${item_id}`).text();
            itemQty = $(`.single_order #item_quantity_table_${item_id}`).text();
            itemDis = $(`.single_order #percentage_table_${item_id}`).val();
            itemSubTotal = $(`.single_order #item_total_price_table_${item_id}`).text();
            singleItem += `<div class="item-cart-details-item-list">
                            <span>${itemName}</span>
                            <span class="text-center">${itemPrice}</span>
                            <span class="text-center">${itemQty}</span>
                            <span class="text-center">${itemDis}</span>
                            <span class="text-center">${itemSubTotal}</span>
                        </div>`;
        });
        $('.finalize_item_details').html('');
        $('.finalize_item_details').append(singleItem);
        $('.cart_details_footer').html('');
        $('.cart_details_footer').html(`
            <div class="item">
                <span><b>Total Item:</b> </span> 
                <span>${Number(total_item)}</span>( <span>${Number(total_item_with_qty)}</span> )
            </div>
            <div class="item">
                <span><b>Sub Total:</b></span>
                <span id="cart_modal_total_subtotal_text">${Number(subtotal).toFixed(op_precision)}</span>
            </div>
            <div class="item">
                <span><b>Discount:</b></span> 
                <span >${Number(total_discount).toFixed(op_precision)}</span>
                </span>
            </div>
            <div class="item">
                <span><b>Total Discount:</b> </span>
                <span>${Number(all_discount).toFixed(op_precision)}</span>
            </div>
            <div class="item">
                <span><b>Tax:</b> </span>
                <span>${Number(total_vat).toFixed(op_precision)}</span>
            </div>
            <div class="item">
                <span><b>Delivery Charge: </b></span>
                <span>${Number(charge).toFixed(op_precision)}</span>
            </div>
        `);
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '#place_order_operation', function () {
        $('.pos__modal__overlay').fadeIn();
        $('.finalize_modal_is_mul_currency').hide();

        if(sms_enable_status == '1'){
            $('.sms_enable_status').prop('checked', true);
        }else{
            $('.sms_enable_status').prop('checked', false);
        }
        if(smtp_enable_status == '1'){
            $('.smtp_enable_status').prop('checked', true);
        }else{
            $('.smtp_enable_status').prop('checked', false);
        }
        if(send_invoice_whatsapp == 'Enable'){
            $('.send_invoice_whatsapp').prop('checked', true);
        }else{
            $('.send_invoice_whatsapp').prop('checked', false);
        }
        $('.clear_quick_data').click();
        $('#payment_list_div').html('');

        let currentActivePayment = $('.list-for-payment-type .active').attr('data-type_value');
        if(currentActivePayment != undefined){
            if(currentActivePayment == 'Cash'){
                $('#finalize_given_amount_input').focus();
            }else{
                $('#finalize_amount_input').focus();
            }
        }else{
            let accType;
            $('.account_type').each(function(){
                accType = $(this).attr('data-type_value');
                if(accType == 'Cash'){
                    $(this).addClass('active');
                    $(this).click();
                }
            });
            $('#finalize_given_amount_input').focus(); 
            $('#finalize_change_amount_input').prop('readonly', true); 
            $('#finalize_amount_input').prop('readonly', true); 
        }
        let customer_id = $('#walk_in_customer').val();
        let customer_name = $('#walk_in_customer').find(':selected').attr('data-customer-name');
        let previous_due = $('#walk_in_customer').find(':selected').attr('data-previous_due');
        let select_employee_id = $('#select_employee_id').val();
        let sub_total = parseFloat($('#sub_total_show').text()).toFixed(op_precision);
        let total_vat = parseFloat($('#show_vat_modal').text()).toFixed(op_precision);
        let total_payable = parseFloat($('#total_payable').text()).toFixed(op_precision);
        let total_item_discount_amount = parseFloat($('#total_item_discount').text()).toFixed(op_precision);
        let sub_total_with_discount = parseFloat($('#discounted_sub_total_amount').text()).toFixed(op_precision);
        let sub_total_discount_amount = parseFloat($('#sub_total_discount_amount').text()).toFixed(op_precision);
        let total_discount_amount = parseFloat($('#all_items_discount').text()).toFixed(op_precision);
        let charge_type = $('#charge_type').find(':selected').val();
        let sale_date1 = $('#sale_date1').val();
        let customer_previous_due = $("#customer_previous_due").val();
        let delivery_charge = ($('#delivery_charge').val() != "") ? parseFloat($('#delivery_charge').val()).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
        let sub_total_discount_value = $('#sub_total_discount').val();
        let sub_total_discount_type = '';
        let delivery_partner = $.trim($('#delivery_partner_info').attr('data-partner-id'));
        let rounding = $.trim($('#rounding').text());
        let old_sale_id = $('#old_sale_id').val();
        let total_items_in_cart = $('.order_holder .single_order').length;


        $("#finalize_previous_due").html(parseFloat(previous_due).toFixed(op_precision));
        $('.set_value_for').html(Number(customer_previous_due));
        $('.finalize-customer-name').text(`Customr: ${customer_name}`);
        $('.finalize_mobile_customer').text(`${customer_name}`);
        if(previous_due > 0){
            $('#previous_due_show').html('');
            $('#previous_due_show').html(`
                <span class="d-none" id="customer_all_due">${parseFloat(previous_due).toFixed(op_precision)}</span>
                <span>${parseFloat(previous_due).toFixed(op_precision)} (Debit)</span>
            `);
            $('.finalize_mobile_op_balance').text('');
            $('.finalize_mobile_op_balance').text(`${parseFloat(previous_due).toFixed(op_precision)} (Debit)`);
        }
        if(previous_due < 0){
            $('#previous_due_show').html('');
            $('#previous_due_show').html(`
                <span class="d-none" id="customer_all_due">${parseFloat(previous_due).toFixed(op_precision)}</span>
                <span>${parseFloat(Math.abs(previous_due)).toFixed(op_precision)} (Credit)</span>
            `);
            $('.finalize_mobile_op_balance').text('');
            $('.finalize_mobile_op_balance').text(`${parseFloat(previous_due).toFixed(op_precision)} (Credit)`);
        }
        if(previous_due == 0){
            $('#previous_due_show').html('');
            $('#previous_due_show').html(`
                <span class="d-none" id="customer_all_due">${parseFloat(previous_due).toFixed(op_precision)}</span>
                <span>${parseFloat(Math.abs(previous_due)).toFixed(op_precision)}</span>
            `);
            $('.finalize_mobile_op_balance').text('');
            $('.finalize_mobile_op_balance').text(`${parseFloat(Math.abs(previous_due)).toFixed(op_precision)}`);
        }
        
        let sale_vat_objects = [];
        $("#tax_row_show .tax_field").each(function (i, obj) {
            let tax_field_id = $(this).attr("data-tax_field_id");
            let tax_field_type = $(this).attr("data-tax_field_type");
            let tax_field_amount = $(this).attr("data-tax_field_amount");
            sale_vat_objects.push({
                tax_field_id: tax_field_id,
                tax_field_type: tax_field_type,
                tax_field_amount: Number(tax_field_amount).toFixed(op_precision),
            });
        });
        if (total_items_in_cart == 0) {
            $('.order_holder').css({
                'border': '3px solid red',
            });
            if ($(window).width() <= 1366){
                $('.order_holder').css({
                    'height': '89%',
                });
            }else if($(window).width() > 1366){
                $('.order_holder').css({
                    'height': '94.50%',
                });
            }
            setTimeout(function(){
                $('.order_holder').css({
                    'border': 'none',
                    'height': 'unset',
                });
                $('.pos__modal__overlay').css('display', 'none');
            }, 1000);
            alert_sound.play();
            toastr['error']((cart_empty), '');
            return false;
        }
        if (sub_total_discount_value.length > 0 && sub_total_discount_value.substr(sub_total_discount_value.length - 1) == '%') {
            sub_total_discount_type = 'percentage';
        } else {
            sub_total_discount_type = 'plain';
        }
        if (customer_id == "") {
            toastr['error']((select_a_customer), '');
            return false;
        }
        let orderInfo = {
            sale_id: old_sale_id,
            charge_type: charge_type,
            random_code: getRandomCode(15),
            customer_id: customer_id,
            select_employee_id: select_employee_id,
            total_items_in_cart: total_items_in_cart,
            sub_total: sub_total,
            total_vat: total_vat,
            delivery_partner: delivery_partner,
            rounding: rounding,
            total_payable: Number(total_payable),
            total_item_discount_amount: total_item_discount_amount,
            sub_total_with_discount: sub_total_with_discount,
            sub_total_discount_amount: sub_total_discount_amount,
            total_discount_amount: total_discount_amount,
            delivery_charge: delivery_charge,
            sub_total_discount_value: sub_total_discount_value,
            sub_total_discount_type: sub_total_discount_type,
            sale_date1: sale_date1,
            sale_vat_objects: sale_vat_objects,
            items: []
        };
          
        if ($('.order_holder .single_order').length > 0) {
            $('.order_holder .single_order').each(function (i, obj) {
                let item_id = $(this).attr('id').substr(15);
                let freeItemLength = $(this).find('.free-item').length;
                let is_promo = $(this).attr('is_promo');
                let item_name = $(this).find('#item_name_table_' + item_id).text();
                let item_seller_id = $(this).find('#item_seller_table' + item_id).text();
                let item_description = $(this).find('.item_modal_description_table_' + item_id).text();
                let item_last_purchase_price = $(this).find('#item_last_purchase_price_table_' + item_id).text();
                let item_vat = $(this).find('.item_vat').text();
                let item_discount = $(this).find('#percentage_table_' + item_id).val();
                let expiry_imei_serial = $(this).find('.expiry_imei_serial_' + item_id).text();
                let item_type = $(this).find('#item_type_table' + item_id).text();
                let discount_type = '';
                if (item_discount.length > 0 && item_discount.substr(item_discount.length - 1) == '%') {
                    discount_type = 'percentage';
                } else {
                    discount_type = 'plain';
                }
                let item_price_without_discount = $(this).find('.item_price_without_discount').text();
                let item_unit_price = $(this).find('#item_price_table_' + item_id).text();
                let item_quantity = $(this).find('#item_quantity_table_' + item_id).text();
                let item_price_with_discount = $(this).find('#item_total_price_table_' + item_id).text();
                let item_details = $(this).find('.item_modal_description_table_' + item_id).text();
                let item_discount_amount = (parseFloat(item_price_without_discount) - parseFloat(item_price_with_discount)).toFixed(op_precision);
            
                // Initialize item object
                let item = {
                    item_seller_id: item_seller_id,
                    item_id: item_id,
                    item_name: item_name,
                    item_last_purchase_price: item_last_purchase_price,
                    item_vat: item_vat,
                    item_discount: item_discount,
                    expiry_imei_serial: expiry_imei_serial,
                    item_type: item_type,
                    discount_type: discount_type,
                    item_price_without_discount: item_price_without_discount,
                    item_unit_price: item_unit_price,
                    item_quantity: item_quantity,
                    item_price_with_discount: item_price_with_discount,
                    item_discount_amount: item_discount_amount,
                    item_details: item_details,
                    is_promo_item: is_promo,
                    is_promo_item_exist: freeItemLength,
                    item_description: item_description,
                    combo_item: [] 
                };

                orderInfo.items.push(item);
                let itemIndex = orderInfo.items.length - 1; 
          
                if (freeItemLength > 0) {
                    let freeItemName = $(`#free_item_name_table_${item_id}`).text();
                    let freeItemQty = $(`#free_item_quantity_table_${item_id}`).text();
                    let freeItemId = $(this).find('.free-item').attr('data-free-item-id');
                    orderInfo.items.push({
                        item_seller_id: item_seller_id,
                        item_id: freeItemId,
                        item_name: freeItemName,
                        item_last_purchase_price: "",
                        item_vat: "",
                        item_discount: "",
                        expiry_imei_serial: "",
                        item_type: "",
                        discount_type: "",
                        item_price_without_discount: "",
                        item_unit_price: "",
                        item_quantity: freeItemQty,
                        item_price_with_discount: "",
                        item_discount_amount: "",
                        item_details: "",
                        is_promo_item: "",
                        is_promo_item_exist: "",
                        item_description: "",
                    });
                }
        
                // Combo Selector
                let combo_cart_item = $(this).find(`.combo_cart_item`).length;
                if (combo_cart_item > 0) {
                    $(this).find(`.combo_cart_item`).each(function() {
                        let combo_id = $(this).find('.first_column').attr('data-id');
                        let comboItemQty = $(`#combo_item_quantity_table_${combo_id}`).text();
                        let comboItemPrice = $(`#combo_item_price_table_${combo_id}`).text();
                        let comboItemSubtotal = $(`#free_item_total_price_table_${combo_id}`).text();
                        let comboItemSeller = $(`#combo_seller_table_${combo_id}`).text();
                        let comboItemShowInv = $(`#combo_inv_show_table_${combo_id}`).text();
                        orderInfo.items[itemIndex].combo_item.push({
                            combo_item_id: combo_id,
                            combo_item_qty: comboItemQty,
                            combo_item_price: comboItemPrice,
                            combo_item_subtotal: comboItemSubtotal,
                            combo_item_seller: comboItemSeller,
                            show_in_invoice: comboItemShowInv,
                        });
                    });
                }
            });
        }
        let order_object = JSON.stringify(orderInfo);
        add_sale_by_ajax(order_object, total_payable);
    });


    $(document).on("keyup", "#multi_currency_amount", function (e) {
        let this_value = $.trim($(this).val());
        if (isNaN(this_value)) {
            $(this).val("");
            $(".badge_custom").remove();
        }
        if(this_value==''){
            $(".badge_custom").remove();
        }
    });


    function calMultiCurrency(){
        let conversion_rate  = Number($("#multi_currency").find(':selected').attr('data-multi_currency'));
        $("#multi_currency_rate").val(conversion_rate);
        let finalize_total_payable  = Number($("#finalize_total_payable").html());
        let total_mul_amount = (conversion_rate*finalize_total_payable).toFixed(2);
        if(total_mul_amount){
            $("#multi_currency_amount").val(total_mul_amount);
        }else{
            $("#multi_currency_amount").val('');
        }
        calFinalizeModal('');
    }


    $(document).on("change", "#multi_currency", function (e) {
        calMultiCurrency();
    });






    // Code optimize by Azhar ** Final **
    function getRandomCode(length) {
        let result = '';
        let characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        let charactersLength = characters.length;
        for (let i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        return result;
    }


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#last_ten_sales_edit_buttons', function () {
        if ($('.single_last_ten_sale[data-selected=selected]').length > 0) {
            let sale_id = $('.single_last_ten_sale[data-selected=selected]').attr('id').substr(9);
            open(base_url +"Sale/edit_sale/" + bin2hex(sale_id),"_self");
        } else {
            toastr['error']((please_select_an_order), '');
        }
    });



    //when change customer  ** Optimized Code By Azhar
    $(document).on('change', '#walk_in_customer', function (e) {
        e.preventDefault();
        let discount = 0;
        let customer_id = $(this).val();
        let priceType = $('option:selected', this).attr('price_type');
        let thisC = $(this);

        if(customer_id){
            $.ajax({
                method: "GET",
                dataType: 'json',
                url: base_url+"Sale/findCustomerCreditLimit/"+customer_id,
                success: function (response) {
                    $("#customer_credit_limit").val(Number(response.credit_limit.credit_limit).toFixed(op_precision));
                    $("#customer_previous_due").val(Number(response.due_amount).toFixed(op_precision));
                }
            });
            if(edit_mode == ''){
                let card_data = $('.order_holder').html();
                if(card_data != ''){
                    let item_qty = 0;
                    let single_item_subtotal  = 0;
                    let singleItemDiscountSum = 0;
                    let whole_sale_price = 0;
                    let sale_price = 0;
                    let item_id;
                    let itemPrice = 0;
                    let item_type = '';
                    let item_obj;
                    $('.single_order').each(function(i,v){
                        item_id = $(this).attr('id').substr(15);
                        item_obj = findItemByItemId(item_id);

                        whole_sale_price = item_obj.whole_sale_price;
                        sale_price = item_obj.price;
                        item_type = item_obj.item_type;

                        if(whole_sale_price == '0' && priceType == '2'){
                            toastr['error'](("Whole sale is setup for this customer, and whole set is not set up for this product"), '');
                        }
                        if(item_obj.is_promo == "Yes"){
                            discount = item_obj.promo_discount != '' ? item_obj.promo_discount : 0;
                            $(this).find('.forth_column .inline_dis_column').prop('readonly', true);
                        }else{
                            discount = $('option:selected', thisC).attr('discount');
                            if(discount == 0 || discount == "" || discount == NaN || discount == undefined || discount == null || discount == 'null'){
                                discount = 0;
                            }else{
                                discount = discount;
                            }
                            if(discount != 0){
                                $(this).find('.forth_column .inline_dis_column').prop('readonly', true);
                            }else{
                                $(this).find('.forth_column .inline_dis_column').prop('readonly', false);
                            }
                        }
                        item_qty = $(this).find('.third_column .cart_quantity').text();
                        let old_sale_id = ($("#old_sale_id").val());
                        let edit_sale_customer = Number($("#edit_sale_customer").val());
                        if(old_sale_id && edit_sale_customer == customer_id){
                            discount = $(this).find('.forth_column .inline_dis_column').attr("data-discount_for_edit");
                        }
                        $(this).find('.forth_column .inline_dis_column').val(discount);
                        if(priceType == 1 && item_type != 'Service_Product'){
                            $(this).find('.second_column span').eq(0).text(Number(sale_price).toFixed(op_precision));
                            single_item_subtotal = singleSubtotalCalculateByPriceDiscount(sale_price, discount);
                            itemPrice = sale_price;
                        }else if(priceType == 2 && item_type != 'Service_Product'){
                            $(this).find('.second_column span').eq(0).text(Number(whole_sale_price).toFixed(op_precision));
                            single_item_subtotal = singleSubtotalCalculateByPriceDiscount(whole_sale_price, discount);
                            itemPrice = whole_sale_price;
                        }else{
                            $(this).find('.second_column span').eq(0).text(Number(sale_price).toFixed(op_precision));
                            single_item_subtotal = singleSubtotalCalculateByPriceDiscount(sale_price, discount);
                            itemPrice = sale_price;
                        }
                        $(this).find('.fifth_column span').eq(0).text(Number(single_item_subtotal).toFixed(op_precision));
                        $(this).find('.item_price_without_discount').text((Number(itemPrice) * Number(item_qty)).toFixed(op_precision));
                        let mainPrice = $(this).find('.second_column span').eq(0).text();
                        let cartQty = $(this).find('.third_column  .cart_quantity').text();
                        let subTotal = $(this).find('.fifth_column span').eq(0).text();
                        let singleItemDiscount = (Number(mainPrice) * Number(cartQty)) - Number(subTotal);
                        singleItemDiscountSum += singleItemDiscount;
                    });
                    $('#all_items_discount').text(Number(singleItemDiscountSum).toFixed(op_precision));
                    cartItemCalculationInPOS();
                    if(edit_mode == ''){
                        storageCartDataInLocal();
                    }
                }
            }
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('keydown keypress keyup', '.single_order_column access_control', function(){
        e.preventDefault();
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#cancel_set_qty_alert_sms_setting', function () {
        $('#show_qty_sms_setting_modal').slideUp('500');
    });

    // Code optimize by Azhar ** Final **
    function getAllCustomers(customer_id='',customer_previous_due_modal='',if_ignore){
        let edit_customer = Number($('#edit_sale_customer').val());
        $.ajax({
            url: base_url + "Sale/getAllCustomers",
            method: "GET",
            success: function (response) {
                let option_customers = '';
                option_customers += `<option value="">${select} ${customer}</option>`;
                $.each(response.data, function (i, v) { 
                    option_customers += `<option id="cid_${v.id}" data-same_or_diff_state="${v.same_or_diff_state}" discount="${v.discount}" price_type="${v.price_type}" data-previous_due="${v.opening_balance}"  value="${v.id}" data-customer-name="${v.name}" ${v.id == edit_customer ? 'selected' : ''} > ${v.name} ${v.phone != null ? '(' + v.phone + ')' : ''}</option>`;
                });
                $('#walk_in_customer').html(option_customers);
                if(edit_customer){ 
                    if(customer_id && (customer_id == edit_customer)){
                        $('#walk_in_customer').val(edit_customer).change();
                    }else{
                        $('#walk_in_customer').val(customer_id).change();
                    }
                }else{
                    $('#walk_in_customer').val(customer_id).change();
                }
                $('.loader1').slideUp('500');
                if(!if_ignore){
                    $("#add_customer_modal").removeClass("active");
                    $('.pos__modal__overlay').fadeOut(300);
                }
                resetAddCustomerModalAfterAddOrClose();
            }
        });
    }
    getAllCustomers(1,0,1);


    

    // Code optimize by Azhar ** Final **
    function IsEmail(email) {
        let regex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
        return regex.test(email);
    }

    // Code optimize by Azhar ** Final **
    $(document).on("click", "#add_customer", function(e) {
        $.ajax({
            url: base_url + "Master/checkAccess",
            method: "GET",
            async: false,
            dataType: 'json',
            data: { controller: "147", function: "add" },
            success: function (response) {
                if (response == false) {
                    Swal.fire({
                        title: warning+" !",
                        text: no_permission_for_this_module,
                        showDenyButton: false,
                        showCancelButton: false,
                        confirmButtonText: ok,
                    });
                } else {
                    let customer_id = $('#customer_id_modal').val();
                    let customer_name = $('#customer_name_modal').val();
                    let customer_phone = $('#customer_phone_modal').val();
                    let nid = $('#customer_nid_modal').val();
                    let customer_email = $('#customer_email_modal').val();
                    let customer_group_id = $('#customer_group_id_modal').val();
                    let customer_dob = $('#customer_dob_modal').val();
                    let customer_doa = $('#customer_doa_modal').val();
                    let opening_balance = $('#customer_previous_due_modal').val();
                    let opening_balance_type = $('#opening_balance_type').val();
                    let customer_credit_limit_modal = $('#customer_credit_limit_modal').val();
                    let customer_delivery_address = $('#customer_delivery_address_modal').val();
                    let same_or_diff_state = Number($(".same_or_diff_state_modal").val());
                    let customer_gst_number = $('#customer_gst_number_modal').val();
                    let customer_discount_modal = $('#customer_discount_modal').val();
                    let customer_price_type = $('#customer_price_type').val();
                    let error = 0;
                    if (customer_name == "") {
                        $("#name_err_msg").text('The Name field is require');
                        $(".name_err_msg_contnr").show(200).delay(6000).hide(200, function () {});
                        error = 1;
                    }
                    if (customer_phone == "") {
                        $("#phone_err_msg").text('The Phone field is require');
                        $(".phone_err_msg_contnr").show(200).delay(6000).hide(200, function () {});
                        error = 1;
                    }
                    if(customer_email != '' && !IsEmail(customer_email)){
                        $("#email_err_msg").text('The Email should be valid email');
                        $(".email_err_msg_contnr").show(200).delay(6000).hide(200, function () {});
                        error = 1;
                    }
                    if(collect_gst=="Yes"){
                        if (same_or_diff_state == "") {
                            $("#state_err_msg").text('The State field is require');
                            $(".state_err_msg_contnr").show(200).delay(6000).hide(200, function () {});
                            error = 1;
                        }
                        if (customer_gst_number == "") {
                            $("#gst_err_msg").text('The GST field is require');
                            $(".gst_err_msg_conter").show(200).delay(6000).hide(200, function () {});
                            error = 1;
                        }
                    }
                    if (error != 0) {
                        return false;
                    }
                    if(error == 0){
                        $.ajax({
                            url: base_url + "Sale/add_customer_by_ajax",
                            method: "POST",
                            data: {
                                customer_id: customer_id,
                                customer_name: customer_name,
                                nid: nid,
                                customer_phone: customer_phone,
                                customer_email: customer_email,
                                customer_dob: customer_dob,
                                customer_doa: customer_doa,
                                customer_delivery_address: customer_delivery_address,
                                customer_gst_number: customer_gst_number,
                                opening_balance: opening_balance,
                                opening_balance_type: opening_balance_type,
                                credit_limit: customer_credit_limit_modal,
                                same_or_diff_state: same_or_diff_state,
                                group_id: customer_group_id,
                                customer_discount: customer_discount_modal,
                                customer_price_type: customer_price_type,
                                csrf_offpos: csrf_value_
                            },
                            success: function (response) {
                                if (response > 0) {
                                    $('.loader1').slideUp('500');
                                    getAllCustomers(Number(response), opening_balance, '');
                                    customerModalFieldRest();
                                }
                            }
                        });
                    }
                }
            }
        });
    });


    // Code optimize by Azhar ** Final **
    function customerModalFieldRest(){
        $(".name_err_msg_contnr").hide(200, function () {});
        $(".phone_err_msg_contnr").hide(200, function () {});
        $(".email_err_msg_contnr").hide(200, function () {});
        $(".state_err_msg_contnr").hide(200, function () {});
        $(".gst_err_msg_contnr").hide(200, function () {});
    }


    // Code optimize by Azhar ** Final **
    function checkTaxApply(tax){
        let return_status = true;
        let same_or_diff_state = $('#walk_in_customer').find(":selected").attr('data-same_or_diff_state');
        if(same_or_diff_state==1){
            if(tax=="CGST" || tax=="SGST"){
                return_status = true;
            }else{
                if(tax=="IGST"){
                    return_status = false;
                }else{
                    return_status = true;
                }
            }
        }else if(same_or_diff_state==2){
            if(tax=="IGST"){
                return_status = true;
            }else{
                if(tax=="CGST" || tax=="SGST"){
                    return_status = false;
                }else{
                    return_status = true;
                }
            }
        }
        if(tax_is_gst=="No"){
            if(tax=="CGST" || tax=="SGST" || tax=="IGST"){
                return_status = false;
            }
        }
        return return_status;
    }


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.icon_pick_date', function () {
        $('.search_sale').show().focus().hide();
    });


    //update all price of modal
    function updateCartItemPrice() {
        $('#item_quantity_modal').html($('#item_quantity_modal_input').val());
        let item_quantity = (parseFloat($('#item_quantity_modal').html()) > parseFloat(0)) ? parseFloat($('#item_quantity_modal').html()).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
        let item_unit_price = parseFloat($('#modal_item_price_input_field').val()).toFixed(op_precision);
        if (item_unit_price == '' || item_unit_price == "NaN") {
            item_unit_price = 0;
        }
        //get item total price without discount
        let item_total_price_without_discount = (parseFloat(item_quantity) * parseFloat(item_unit_price)).toFixed(op_precision);
        //set item total price without discount
        $('#modal_item_price_variable_without_discount').html(item_total_price_without_discount);
        //get discount from modal
        let discount_on_modal = $('#modal_discount').val();
        discount_on_modal = (discount_on_modal != "") ? discount_on_modal : 0;
        //remove last digits if number is more than 2 digits after decimal
        removeLastTwoDigitWithPercentage(discount_on_modal, $('#modal_discount'));
        //get discount actual amount on item price
        let actual_modal_discount_amount = getParticularItemDiscountAmount(discount_on_modal, item_total_price_without_discount);
        //set blank if discount amount is more than item total price without discount
        if (parseFloat(actual_modal_discount_amount) > parseFloat(item_total_price_without_discount)) {
            $('#modal_discount').val('');
            actual_modal_discount_amount = parseFloat(0).toFixed(op_precision);
        }
        //set actual discount amouto hidden modal element
        $('#modal_discount_amount').html(parseFloat(actual_modal_discount_amount).toFixed(op_precision));
        //get item price after discount
        let item_price_after_discount = (parseFloat(item_total_price_without_discount) - parseFloat(actual_modal_discount_amount)).toFixed(op_precision);
        //set item total price with discount
        $('#modal_item_price_variable').html(item_price_after_discount);
        //add items and modifiers price
        let all_price = parseFloat(item_price_after_discount).toFixed(op_precision);
        //show to all total
        $('#modal_total_price').html(all_price);
    }


    // Code optimize by Azhar ** Final **
    function showAllItems(brand_id='',sorting='') {
        $('.specific_category_items_holder').hide();
        setTimeout(function () {
            let foundItems = searchItemAndConstructGallery('',sorting,'');
            let searched_category_items_to_show = `<div id="searched_item_found" class="specific_category_items_holder"><div class="single-inner-div ${grocery_experience == 'Medicine' || grocery_experience == 'Grocery' ? 'grocery_single_on' : 'grocery_single_off'}">`;
            if(grocery_experience == 'Medicine' || grocery_experience == 'Grocery'){
                let brand_id_tmp = Number(brand_id);
                for (let key in foundItems) {
                    if(foundItems[key].item_type != '0'){
                        let tax_information = (IsJsonString(foundItems[key].tax_information)) ? JSON.parse(foundItems[key].tax_information) : '';
                        if (foundItems.hasOwnProperty(key)) {
                            if (brand_id_tmp) {
                                if (brand_id_tmp == foundItems[key].brand_id) {
                                    searched_category_items_to_show += `
                                        <div item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" is_promo="${foundItems[key].is_promo}" class="single_item grocery_medicine_el   all_brand brand_${foundItems[key].brand_id} ${product_display == 'Image View' ? '' : 'bg-box-view'} d-flex align-items-center" id="item_${foundItems[key].item_id}">
                                            <p class="item_name mt-0" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name} (${foundItems[key].item_code}) ${grocery_experience != 'Medicine' ? foundItems[key].brand_name : foundItems[key].supplier_name}
                                            
                                            ${foundItems[key].generic_name ? '<br> <small class="generic_small">Generic Name: '+foundItems[key].generic_name+'</small>' : ''}
                                            </p>
                                            <p class="d-none generic_name generic_name_gm ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">Generic Name: ${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>

                                            <p class="item_price item_price_gm">Sale Price: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>

                                            <span class="item_vat_percentage d-none">${JSON.stringify(tax_information)}</span>
                                        </div>`;
                                }
                            } else {
                                searched_category_items_to_show += `
                                    <div item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" is_promo="${foundItems[key].is_promo}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item grocery_medicine_el   all_brand brand_${foundItems[key].brand_id} ${product_display == 'Image View' ? '' : 'bg-box-view'} d-flex align-items-center" id="item_${foundItems[key].item_id}">
                                        <p class="item_name mt-0" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name} (${foundItems[key].item_code}) ${grocery_experience != 'Medicine' ? foundItems[key].brand_name : foundItems[key].supplier_name} 
                                        
                                        ${foundItems[key].generic_name ? '<br> <small class="generic_small">Generic Name: '+foundItems[key].generic_name+'</small>' : ''}
                                        </p>

                                        <p class="d-none generic_name generic_name_gm ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">Generic Name: ${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>

                                        <p class="item_price item_price_gm">Sale Price: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>

                                        <span class="item_vat_percentage d-none">${JSON.stringify(tax_information)}</span>
                                    </div>`;
                            }
                        }
                    }
                }
            }else{
                let brand_id_tmp = Number(brand_id);
                for (let key in foundItems) {
                    if(foundItems[key].item_type != '0'){
                        let tax_information = (IsJsonString(foundItems[key].tax_information)) ? JSON.parse(foundItems[key].tax_information) : '';
                        if (foundItems.hasOwnProperty(key)) {
                            if (brand_id_tmp) {
                                if (brand_id_tmp == foundItems[key].brand_id) {
                                    searched_category_items_to_show += `
                                        <div item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" is_promo="${foundItems[key].is_promo}" class="single_item  all_brand brand_${foundItems[key].brand_id} ${product_display == 'Image View' ? '' : 'bg-box-view'}" id="item_${foundItems[key].item_id}">
                                            <div class="single-item-img">
                                                <img src="${foundItems[key].image}" alt="" class="${product_display == 'Image View' ? 'd-block' : 'd-none'}">
                                            </div>
                                            <p class="item_name" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name}${foundItems[key].brand_name} (${foundItems[key].item_code})</p>
                                            <p class="generic_name ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>
                                            <p class="item_price">SP: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                                            <span class="item_vat_percentage d-none">${JSON.stringify(tax_information)}</span>
                                        </div>`;
                                }
                            } else {
                                searched_category_items_to_show += `
                                    <div item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" is_promo="${foundItems[key].is_promo}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item  all_brand brand_${foundItems[key].brand_id} ${product_display == 'Image View' ? '' : 'bg-box-view'}" id="item_${foundItems[key].item_id}">
                                        <div class="single-item-img">
                                            <img src="${foundItems[key].image}" alt="" class="${product_display == 'Image View' ? 'd-block' : 'd-none'}">
                                        </div>
                                        <p class="item_name" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name}${foundItems[key].brand_name} (${foundItems[key].item_code})</p>
                                        <p class="generic_name ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>
                                        <p class="item_price">SP: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                                        <span class="item_vat_percentage d-none">${JSON.stringify(tax_information)}</span>
                                    </div>`;
                            }
                        }
                    }
                }
            }
            searched_category_items_to_show += `<div></div>`;
            $("#searched_item_found").remove();
            $('.specific_category_items_holder').hide('1000');
            $(".category_items").prepend(searched_category_items_to_show);
        }, 100);
    }
    //initialize item list
    showAllItems('','');

    $(document).on('click', '.sorting_item', function(){
        let sort_id = $(this).attr('data-sort_id');
        let sort_title = $(this).text();
        $('.sorting_item_title').text(sort_title);
        $(this).addClass('sort_active');
        $('.sorting_item').removeClass('sort_active');
        $("#search").val('');
        $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
        showAllItems('',sort_id);
    });

    // Code optimize by Azhar ** Final **
    function showAllItemByCategory(cat_id='') {
        $('.specific_category_items_holder').hide();
        setTimeout(function () {
            let foundItems = searchItemAndConstructGallery('','','');
            let searched_category_items_to_show = `<div id="searched_item_found" class="specific_category_items_holder d-block"><div class="single-inner-div ${grocery_experience == 'Medicine' || grocery_experience == 'Grocery' ? 'grocery_single_on' : 'grocery_single_off'}">`;
            if(grocery_experience == 'Medicine' || grocery_experience == 'Grocery'){
                let cat_id_tmp = Number(cat_id);
                for (let key in foundItems) {
                    if(foundItems[key].item_type != '0'){
                        if (foundItems.hasOwnProperty(key)) {
                            if (cat_id_tmp) {
                                if (cat_id_tmp == foundItems[key].cat_id) {
                                    searched_category_items_to_show += `
                                        <div is_promo="${foundItems[key].is_promo}" item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item grocery_medicine_el   all_brand brand_${foundItems[key].cat_id} ${product_display == 'Image View' ? '' : 'bg-box-view'} d-flex align-items-center" id="item_${foundItems[key].item_id}">
                                            <p class="item_name mt-0" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name} (${foundItems[key].item_code}) ${grocery_experience != 'Medicine' ? foundItems[key].brand_name : foundItems[key].supplier_name}
                                        
                                            ${foundItems[key].generic_name ? '<br> <small class="generic_small">Generic Name: '+foundItems[key].generic_name+'</small>' : ''}
                                            </p>

                                            <p class="d-none generic_name generic_name_gm ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">Generic Name: ${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>
                                            <p class="item_price item_price_gm">Sale Price: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                                            <span class="item_vat_percentage d-none">${foundItems[key].vat_percentage}</span>
                                        </div>`;
                                }
                            } else {
                                searched_category_items_to_show += `
                                    <div is_promo="${foundItems[key].is_promo}" item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item grocery_medicine_el   all_brand brand_${foundItems[key].cat_id} ${product_display == 'Image View' ? '' : 'bg-box-view'} d-flex align-items-center" id="item_${foundItems[key].item_id}">

                                        <p class="item_name mt-0" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name} (${foundItems[key].item_code}) ${grocery_experience != 'Medicine' ? foundItems[key].brand_name : foundItems[key].supplier_name}
                                        
                                        ${foundItems[key].generic_name ? '<br> <small class="generic_small">Generic Name: '+foundItems[key].generic_name+'</small>' : ''}
                                        </p>

                                        <p class="d-none generic_name generic_name_gm ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">Generic Name: ${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>

                                        <p class="item_price item_price_gm">Sale Price: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>

                                        <span class="item_vat_percentage d-none">${foundItems[key].vat_percentage}</span>
                                    </div>`;
                            } 
                        }
                    }
                }
            }else{
                let cat_id_tmp = Number(cat_id);
                for (let key in foundItems) {
                    if(foundItems[key].item_type != '0'){
                        if (foundItems.hasOwnProperty(key)) {
                            if (cat_id_tmp) {
                                if (cat_id_tmp == foundItems[key].cat_id) {
                                    searched_category_items_to_show += `
                                        <div is_promo="${foundItems[key].is_promo}" item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item  all_brand brand_${foundItems[key].cat_id} ${product_display == 'Image View' ? '' : 'bg-box-view'}" id="item_${foundItems[key].item_id}">
                                            <div class="single-item-img">
                                                <img src="${foundItems[key].image}" alt="" class="${product_display == 'Image View' ? 'd-block' : 'd-none'}">
                                            </div>
                                            <p class="item_name" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name}${foundItems[key].brand_name} (${foundItems[key].item_code})</p>
                                            <p class="generic_name ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>
                                            <p class="item_price">SP: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                                            <span class="item_vat_percentage d-none">${foundItems[key].vat_percentage}</span>
                                        </div>`;
                                }
                            } else {
                                searched_category_items_to_show += `
                                    <div is_promo="${foundItems[key].is_promo}" item-type="${foundItems[key].item_type}" plain-id="${foundItems[key].item_id}" data-last_purchase_price="${foundItems[key].last_purchase_price}" data-whole_sale_price="${foundItems[key].whole_sale_price}" data-sale_price="${foundItems[key].price}" class="single_item  all_brand brand_${foundItems[key].cat_id} ${product_display == 'Image View' ? '' : 'bg-box-view'}" id="item_${foundItems[key].item_id}">
                                        <div class="single-item-img">
                                            <img src="${foundItems[key].image}" alt="" class="${product_display == 'Image View' ? 'd-block' : 'd-none'}">
                                        </div>
                                        <p class="item_name" data-tippy-content="${foundItems[key].item_name}(${foundItems[key].item_code})">${foundItems[key].item_name}${foundItems[key].brand_name} (${foundItems[key].item_code})</p>
                                        <p class="generic_name ${$.trim(foundItems[key].generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}">${$.trim(foundItems[key].generic_name) ? $.trim(foundItems[key].generic_name) : ''}</p>
                                        <p class="item_price">SP: <span id="price_${foundItems[key].item_id}">${parseFloat(foundItems[key].price).toFixed(op_precision)}</span></p>
                                        <span class="item_vat_percentage d-none">${foundItems[key].vat_percentage}</span>
                                    </div>`;
                            } 
                        }
                    }
                }
            }
            searched_category_items_to_show += `<div></div>`;
            $("#searched_item_found").remove();
            $('.specific_category_items_holder').hide('1000');
            $(".category_items").prepend(searched_category_items_to_show);
        }, 100);
    }

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.promo_filter', function(){
        $('#show_all_promo').addClass('active');
        $(".pos__modal__overlay").fadeIn(200);
        $.ajax({
            url: base_url + "get_prom_details",
            method: "POST",
            dataType:'json',
            success: function (response) {
                $(".promo_modal_body").html(response);
            }
        });
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".get_prom_details", function (e) {
        $("#show_modal_view_promo").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
        $.ajax({
            url: base_url + "get_prom_details",
            method: "POST",
            dataType:'json',
            success: function (response) {
                $("#body_promo_view").html(response);
            }
        });
    });

    function cartItemCalculationClear(){
        $('#discounted_sub_total_amount').html(Number(0).toFixed(op_precision));
        $('#sub_total_discount').val(Number(0));
        $('#sub_total_discount_amount').html(Number(0).toFixed(op_precision));
        $('#all_items_discount').html(Number(0).toFixed(op_precision));
        $('#delivery_charge').val(Number(0).toFixed(op_precision));
    }

    // add all prices of item and modifiers
    function cartItemCalculationInPOS() {
        let total_items_in_cart = $('.order_holder .single_order').length;
        //if there is no item in cart reset necessary field and value
        if (total_items_in_cart < 1) {
            cartItemCalculationClear();
        }
        // Set Hidden And Visiable Discount
        let this_item_original_price = 0;
        let item_discount_value = 0;
        let actual_discount_amount = 0;
        let discounted_item_price = 0;
        let this_item_discount_amount = 0;
        let total_discount_sum = 0;
        let all_item_total_price = 0;
        let total_items_in_cart_with_quantity = 0;

        let sub_total_sum = 0;
        $('.single_order .first_portion .fifth_column span').each(function (i, obj) {
            this_item_original_price = parseFloat($(this).parent().parent().find('.item_price_without_discount').text()).toFixed(op_precision);
            item_discount_value = $(this).parent().parent().find('.forth_column input').val();
            item_discount_value = (item_discount_value != "") ? item_discount_value : 0;
            actual_discount_amount = getParticularItemDiscountAmount(item_discount_value, this_item_original_price);
            $(this).parent().parent().find('.item_discount').text(actual_discount_amount);

            discounted_item_price = (parseFloat(this_item_original_price) - parseFloat(actual_discount_amount)).toFixed(op_precision);
            $(this).parent().parent().find('.fifth_column span').html(discounted_item_price);

            this_item_discount_amount = (parseFloat($(this).parent().parent().find('.item_discount').html())).toFixed(op_precision);
            total_discount_sum = (parseFloat(total_discount_sum) + parseFloat(this_item_discount_amount)).toFixed(op_precision);

            all_item_total_price = parseFloat($(this).text()).toFixed(op_precision);
            sub_total_sum += parseFloat(all_item_total_price);

            total_items_in_cart_with_quantity = parseFloat($(this).parent().parent().find('.third_column span').eq(0).text());

        });


        $('#total_item_discount').html(total_discount_sum);

        //set total items in cart to view
        $('#total_items_in_cart_without_quantity').html($(".edit_item").length);
        $('#total_items_in_cart_with_quantity').html(total_items_in_cart_with_quantity);


        //set sub total
        $('#sub_total').html(sub_total_sum);
        $('#sub_total_show').html(parseFloat(sub_total_sum).toFixed(op_precision));

        //get the value of the delivery charge amount
        let delivery_charge_amount = ($('#delivery_charge').val() != "") ? $('#delivery_charge').val() : 0;

        //check wether value is valid or not
        removeLastTwoDigitWithoutPercentage(delivery_charge_amount, $('#delivery_charge'));

        //get subtotal amount
        let sub_total_amount = sub_total_sum;

        //get subtotal discount amount
        let sub_total_discount_amount = ($('#sub_total_discount').val() != "") ? $('#sub_total_discount').val() : 0;
        //check wether value is valid or not
        removeLastTwoDigitWithPercentage(sub_total_discount_amount, $('#sub_total_discount'));
        sub_total_discount_amount = getSubTotalDiscountAmount(sub_total_discount_amount, sub_total_amount);

        //if sub total discount amount is greater than subtotal then make it blank
        if (parseFloat(sub_total_discount_amount) > parseFloat(sub_total_amount)) {
            $('#sub_total_discount').val('');
            cartItemCalculationInPOS();
            if(edit_mode == ''){
                storageCartDataInLocal();
            }
            return false;
        }

        //get total item discount amount
        let total_item_discount_amount = (parseFloat(total_discount_sum)).toFixed(op_precision);

        //get all discount of table
        let total_discount = (parseFloat(sub_total_discount_amount) + parseFloat(total_item_discount_amount)).toFixed(op_precision);
        
        //set sub total discount amount
        $('#sub_total_discount_amount').html(sub_total_discount_amount);

        //set sub total amount after discount in a hidden field
        let discounted_sub_total_amount = (parseFloat(sub_total_amount) - parseFloat(sub_total_discount_amount)).toFixed(op_precision);

        $('#discounted_sub_total_amount').html(discounted_sub_total_amount)

        let sub_total_discount_tmp = $("#sub_total_discount").val();
        
        if (sub_total_discount_tmp.indexOf('%') > 0) {
            sub_total_discount_tmp = getSubTotalDiscountAmount(sub_total_discount_tmp,sub_total_amount);
        } else {
            sub_total_discount_tmp = Number(sub_total_discount_tmp).toFixed(op_precision);
        }
         
        $("#show_discount_amount").html(sub_total_discount_tmp);
        //set total discount
        $('#all_items_discount').html(total_discount);
        //get vat amount
        let vat_amount = collect_tax == "Yes" ? getTotalVat() : null;
        let total_vat_section_to_show = "";
        let html_modal = "";
        let total_tax_custom = 0;
        $.each(vat_amount, function (key, value) {
            total_vat_section_to_show +=
                `<span class="tax_field" id="tax_field_${key.substring(key.indexOf("_") + 1)}">${key.substr(0, key.indexOf("_"))}</span>: <span class="tax_field_amount" id="tax_field_amount_${key.substring(key.indexOf("_") + 1)}">${value}</span><br>`;

            html_modal +=`<tr class="tax_field" data-tax_field_id="${key.substr(0, key.indexOf("_"))}" data-tax_field_type="${key.substring(key.indexOf("_") + 1)}" data-tax_field_amount="${value}">
                    <td>${key.substring(key.indexOf("_") + 1)}</td>
                    <td>${value}</td>
                </tr>`;
            total_tax_custom += Number(value);
        });
        if (total_tax_custom) {
            $("#show_vat_modal").text(parseFloat(total_tax_custom).toFixed(op_precision));
        } else {
            $("#show_vat_modal").text(Number(0).toFixed(op_precision));
        }
        $("#tax_row_show").html(html_modal);
        //calculate total payable amount
        let total_vat_amount = 0;
        $.each(vat_amount, function (key, value) {
            total_vat_amount = (parseFloat(total_vat_amount) + parseFloat(value)).toFixed(op_precision);
        });
        let tax_type = Number($("#tax_type").val());
        if (total_vat_amount == "NaN" || tax_type==2) {
            total_vat_amount = 0;
        }
        let total_payable = (parseFloat(discounted_sub_total_amount) + parseFloat(total_vat_amount) + parseFloat(delivery_charge_amount)).toFixed(op_precision);
        //set total payable amount to view and set rounding value.
        let pos_total_payable_type = $('#pos_total_payable_type').val();
        let total_payable_round;
        let decimal_round;
        if(pos_total_payable_type == 0){
            total_payable_round = parseFloat(total_payable);
            decimal_round = 0;
        } else if(pos_total_payable_type == 1){
            total_payable_round = Math.round(total_payable);
            decimal_round = total_payable - total_payable_round;
        }else {
            total_payable_round = customDecimalRound(parseFloat(total_payable), pos_total_payable_type, op_precision);
            decimal_round = total_payable - total_payable_round;
        }
        $('#total_payable').html((parseFloat(total_payable_round)).toFixed(op_precision));
        $('#rounding').text(parseFloat(decimal_round).toFixed(op_precision));


        //set row number for every single item
        setTimeout(function(){
            $('.order_holder .single_order').each(function (i, obj) {
                $(this).attr('data-single-order-row-no', i + 1);
                $(this).find('.first_portion .fifth_column .remove_this_item_from_cart').attr('data-remove-order-row-no', i + 1);
            });
        }, 200)


        put_cart_content();
    }

    
    
    function getTotalVat() {
        let all_item_total_vat_amount = 0;
        let tax_object = {};
        let tax_name = [];
        let customer_id = $('#walk_in_customer').val();
        let customer_gst_number = '';
        let this_customer;
        for (m in window.customers) {
            this_customer = window.customers[m];
            if (this_customer.customer_id == customer_id) {
                customer_gst_number = this_customer.gst_number;
            }
        }
        let tax_type = Number($("#tax_type").val());
        let customer_state_code = (customer_gst_number != "") ? customer_gst_number.substr(0, 2) : '';
        let same_state = false;
        if (customer_state_code == gst_state_code) {
            same_state = true;
        }
        if (customer_state_code == '') {
            same_state = true;
        }
        $('.single_order .first_portion .fifth_column span').each(function (i, obj) {
            let item_total_price = parseFloat($(this).parent().parent().find('.fifth_column span').text()).toFixed(op_precision);
            let item_tax_obj = $(this).parent().parent().find('.item_vat').html();
            if(item_tax_obj){
                let tax_information = JSON.parse(item_tax_obj);
                if (tax_information.length > 0) {
                    for(let k in tax_information){
                        if(tax_name.includes(tax_information[k].tax_field_name) && checkTaxApply(tax_information[k].tax_field_name)){
                            let previous_value = tax_object["" + tax_information[k].tax_field_name];
                            let current_value  = 0;
                            if(tax_type == 1){
                                current_value = parseFloat((parseFloat(parseFloat(tax_information[k].tax_field_percentage)*parseFloat(item_total_price))/parseFloat(100)));
                            }else{
                                current_value = (parseFloat(item_total_price) - (parseFloat(item_total_price)/(1+(tax_information[k].tax_field_percentage/100)))).toFixed(op_precision);
                            }
                            tax_object["" + tax_information[k].tax_field_name] = (parseFloat(previous_value)+ Number(current_value)).toFixed(op_precision);
                        }else{
                            if(checkTaxApply(tax_information[k].tax_field_name)){
                                tax_name.push(tax_information[k].tax_field_name);
                                let current_value  = 0;
                                if(tax_type == 1){
                                    current_value = parseFloat((parseFloat(parseFloat(tax_information[k].tax_field_percentage)*parseFloat(item_total_price))/parseFloat(100)));
                                }else{
                                    current_value = (parseFloat(item_total_price) - parseFloat(item_total_price)/(1+(tax_information[k].tax_field_percentage/100))).toFixed(op_precision);
                                }
                                tax_object["" + tax_information[k].tax_field_name] = (Number(current_value)).toFixed(op_precision);
                            }
                        }
                    }
                }
            }
        });
        return tax_object;
    }


    function getParticularItemDiscountAmount(discount, item_price) {
        if (discount.length > 0 && discount.substr(discount.length - 1) == '%') {
            return (((parseFloat(item_price) * parseFloat(discount)) / parseFloat(100))).toFixed(op_precision);
        } else {
            return parseFloat(discount).toFixed(op_precision);
        }
    }

    

    function getSubTotalDiscountAmount(sub_total_discount, sub_total) {
        if (sub_total_discount.length > 0 && sub_total_discount.substr(sub_total_discount.length - 1) == '%') {
            return (((parseFloat(sub_total) * parseFloat(sub_total_discount)) / parseFloat(100))).toFixed(op_precision);
        } else {
            return parseFloat(sub_total_discount).toFixed(op_precision);
        }
    }


    // Code optimize by Azhar ** Final **
    function resetItemModalAfterAddToCartOrClose() {
        $('#item_quantity_modal').text('1');
        $('#item_quantity_modal_input').val('1');
        $('#modal_item_note').val('');
        $('#modal_item_price_variable_without_discount').text(Number(0).toFixed(op_precision))
        $('#modal_item_vat_percentage').text(Number(0).toFixed(op_precision));
        $('#modal_item_row').text(Number(0));
        $('#modal_discount_amount').text(Number(0).toFixed(op_precision));
    }


    // Code optimize by Azhar ** Final **
    function resetAddCustomerModalAfterAddOrClose() {
        $('.customer_add_modal_info_holder')[0].reset();
    }

    
    // Code optimize by Azhar ** Final **
    function clearFooterCartCalculation() {
        $('#sub_total_show').text(Number(0).toFixed(op_precision));
        $('#sub_total').text(Number(0).toFixed(op_precision));
        $('#total_item_discount').text(Number(0).toFixed(op_precision));
        $('#discounted_sub_total_amount').text(Number(0).toFixed(op_precision));
        $('#sub_total_discount').val(Number(0).toFixed(op_precision));
        $('#sub_total_discount_amount').text(Number(0).toFixed(op_precision));
        $('#all_items_vat').text(Number(0).toFixed(op_precision));
        $('#all_items_discount').text(Number(0).toFixed(op_precision));
        $('#delivery_charge').val(Number(0).toFixed(op_precision));
        $('#total_items_in_cart').text(Number(0));
        $('#total_items_in_cart_with_quantity').text(Number(0));
        $('#total_payable').text(Number(0).toFixed(op_precision));
        $('#show_charge_amount').text(Number(0).toFixed(op_precision));
        $('#show_vat_modal').text(Number(0).toFixed(op_precision));
        $('#total_items_in_cart_without_quantity').text(Number(0));
        $('#show_discount_amount').text(Number(0).toFixed(op_precision));
        $('#delivery_partner_info').attr('data-partner-id', '');
        $('#delivery_partner_info').text('');
        $('#rounding').text('');
        localStorage['cart_html'] = '';
    }

    // Code optimize by Azhar ** Final **
    function setDefaultPayment(){
        let default_payment_hidden = Number($("#default_payment_hidden").val());
        let acc_type;
        $(".set_payment").each(function (i, obj) {
            let id = Number($(this).attr('data-id'));
            acc_type = $(this).attr('data-type_value');
            if(id == default_payment_hidden){
                $(this).click();
                if(acc_type == 'Cash'){
                    $('#finalize_given_amount_input').focus();
                }else{
                    $('#finalize_amount_input').focus();
                }
            }
        });
    }

    function setAnimation() {
        let imgToDrag = $("#cash_img").eq(0);
        let cart = $(".payment_list_counter").find("span").last();
        if (imgToDrag) {
        let top_ = Number(imgToDrag.offset().top);
        let imgClone = imgToDrag
            .clone()
            .offset({
                top: top_,
                left: imgToDrag.offset().left,
            })
            .css({
                opacity: "0.5",
                position: "absolute",
                height: "150px",
                width: "150px",
                zIndex: "1000",
            })
            .appendTo($("body"))
            .animate({
                    top: cart.offset().top + 10,
                    left: cart.offset().left + 10,
                    width: "75px",
                    height: "75px",
                },
                1000,
                "easeInOutExpo"
            );
            imgClone.animate(
                {
                    width: 0,
                    height: 0,
                },
                function () {
                    $(this).detach();
                }
            );
        }
    }


    // Code optimize by Azhar ** Final **
    function setActivePayment(){
        $(".set_payment").each(function (i, obj) {
            let this_txt = $(this).text();
            let acc_type = $(this).attr('data-type_value');
            if($(this).hasClass('active')){
                $("#payment_preview").html(this_txt);
                $("#payment_preview").attr('data-account_type', acc_type);
                if(this_txt=="Cash"){
                    $(".cash_div").show();
                    $("#finalize_amount_input").prop("readonly", true);
                    $('#finalize_amount_input').css({
                        'cursor': 'not-allowed',
                    });
                    $("#finalize_change_amount_input").prop("readonly",true);
                    $('#finalize_change_amount_input').css({
                        'cursor': 'not-allowed',
                    });
                    $('#finalize_given_amount_input').focus();   
                }else{
                    $('#finalize_amount_input').focus();
                    $("#finalize_amount_input").prop("readonly",false);
                    $('#finalize_amount_input').css({
                        'cursor': 'unset',
                    });
                    $("#finalize_change_amount_input").prop("readonly",false);
                    $('#finalize_change_amount_input').css({
                        'cursor': 'unset',
                    });
                    $(".cash_div").hide();


                    if(acc_type == 'Paypal' || acc_type == 'Stripe'){
                        $('#add_payment').css({
                            'cursor': 'not-allowed',
                        });
                        $('#add_payment').prop('disabled', true);
                        $('.set_default_quick_cach').css({
                            'cursor': 'not-allowed',
                        });
                        $('.set_default_quick_cach').prop('disabled', true);
                    }else{
                        $('#add_payment').css({
                            'cursor': 'unset',
                        });
                        $('#add_payment').prop('disabled', false);
                        $('.set_default_quick_cach').css({
                            'cursor': 'unset',
                        });
                        $('.set_default_quick_cach').prop('disabled', false);
                    }


                }
            }
        });
    }
    

    // Code optimize by Azhar ** Final **
    function checkCashPayment(amount, is_quick = ''){
        $(".set_payment").each(function (i, obj) {
            let id = Number($(this).attr("data-id"));
            if($(this).hasClass('active')){
                let finalize_total_payable = Number($("#finalize_total_due").text());
                if(finalize_total_payable==amount){
                    let check_exist = false;
                    let payment_id = 0 ;
                    $(".set_payment").each(function (i, obj) {
                        let this_txt = $(this).text();
                        if($(this).hasClass('active')){
                            payment_id = Number($(this).attr('data-id'));
                        }
                    });
                    $(".payment_list_counter").each(function (i, obj) {
                        let payment_id_added = Number($(this).attr('data-payment_id'));
                        if(payment_id===payment_id_added){
                            check_exist = true;
                        }
                    });
                    if(check_exist==true){
                        toastr['error']((already_added), '');
                    }else{
                        if(is_quick == 'Yes'){
                            $("#add_payment").click();
                        }
                        $(".set_no_access").addClass('no_access');
                    }
                }
            }
        });
    }

    
    // Code optimize by Azhar ** Final **
    function setFinalizeDiscount(){
        let sub_total_discount_finalize = Number($("#sub_total_discount_finalize").val());
        let finalize_total_paid = Number($("#finalize_total_paid").val());
        let finalize_total_payable = Number($("#finalize_total_payable").attr('data-original_payable'));
        let new_finalize_amount = (finalize_total_payable - sub_total_discount_finalize).toFixed(op_precision);
        let new_due = ((finalize_total_payable - sub_total_discount_finalize)-finalize_total_paid).toFixed(op_precision);
        let conversion_rate  = Number($("#multi_currency").find(':selected').attr('data-multi_currency'));
        let cart_modal_total_discount_all_text = Number($("#cart_modal_total_discount_all_text").attr('data-original_discount'));
        $("#cart_modal_total_discount_all_text").html((cart_modal_total_discount_all_text+sub_total_discount_finalize).toFixed(op_precision));
        $("#finalize_total_payable").html(new_finalize_amount);
        if(conversion_rate){
            $("#finalize_total_paid").html(new_finalize_amount);
            $("#paid_amt").html(new_finalize_amount);
            let total_mul_amount = (conversion_rate*new_finalize_amount).toFixed(op_precision);
            if(total_mul_amount){
                $("#multi_currency_amount").val(total_mul_amount);
            }else{
                $("#multi_currency_amount").val('');
            }
        }else{
            $("#finalize_total_due").html(new_due);
        }
    }


    // Code optimize by Azhar ** Final **
    function removePaidListTitle(){
        if($('.paid-list').find('li').length){
            $(document).find('.empty_title').hide();
        }else{
            $(document).find('.empty_title').show();
        }
    }
    $(window).on('load',removePaidListTitle);



    // Code optimize by Azhar ** Final **
    function calFinalizeModal(is_ignore){
        let finalize_total_payable = Number($("#finalize_total_payable").html());
        let is_multi_currency = Number($("#is_multi_currency").val());
        let tmp_total = 0;
        $(".payment_list_amount").each(function (i, obj) {
            let this_txt = Number($(this).text());
            tmp_total+=this_txt;
        });
        let multi_currency_amount = Number($("#multi_currency_amount").val());
        if(is_multi_currency ==1 && multi_currency_amount){
            tmp_total = finalize_total_payable;
        }
        $("#finalize_total_paid").html(tmp_total.toFixed(op_precision));
        $("#paid_amt").html(tmp_total.toFixed(op_precision));

        $("#finalize_total_due").html((finalize_total_payable - tmp_total).toFixed(op_precision));
        let default_remaining_cash = (finalize_total_payable - tmp_total) && (finalize_total_payable - tmp_total)>0?(finalize_total_payable - tmp_total):0;
        $(".set_default_quick_cach").attr("data-amount",(default_remaining_cash).toFixed(op_precision));
        $(".set_default_quick_cach").html((default_remaining_cash).toFixed(op_precision));
    }


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".account_type", function (e) {
        let account_type = $(this).attr('data-type_value');
        $('#account_type').val(account_type);
        if(account_type == 'Cash' && account_type != undefined){
            $('#show_account_type').html(`
                <div class="form-group">
                    <label>${note_lan}</label>
                    <input type="text" name="p_note" class="form-control w-100-p" placeholder="${note_lan}" id="p_note">
                </div>
            `);
            $('#show_account_type').removeClass('show_account_type')
        }else if(account_type == 'Bank_Account' && account_type != undefined){
            $('#show_account_type').html(`
                <div class="form-group">
                    <label>Bank Name</label>
                    <input type="text" name="check_no" class="form-control" placeholder="Bank Name" id="check_no">
                </div>
                <div class="form-group">
                    <label>${check_no_lan}</label>
                    <input type="text" name="check_no" class="form-control" placeholder="${check_no_lan}" id="check_no">
                </div>
                <div class="form-group">
                    <label>${check_issue_date_lan}</label>
                    <input type="text" name="check_issue_date" class="form-control" placeholder="${check_issue_date_lan}" id="check_issue_date">
                </div>
                <div class="form-group">
                    <label>${check_expiry_date_lan}</label>
                    <input type="text" name="check_expiry_date" class="form-control" placeholder="${check_expiry_date_lan}" id="check_expiry_date">
                </div>
            `);
            $('#show_account_type').addClass('show_account_type')
        }else if(account_type == 'Card' && account_type != undefined){
            $('#show_account_type').html(`
                <div class="form-group">
                    <label>${card_holder_name_lan}</label>
                    <input type="text" name="card_holder_name" class="form-control" placeholder="${card_holder_name_lan}" id="card_holder_name">
                </div>
                <div class="form-group">
                    <label>${card_holding_number_lan}</label>
                    <input type="text" name="card_holding_number" class="form-control" placeholder="${card_holding_number_lan}" id="card_holding_number">
                </div>
            `);
            $('#show_account_type').addClass('show_account_type')
        }else if(account_type == 'Mobile_Banking' && account_type != undefined){
            $('#show_account_type').html(`
                <div class="form-group">
                    <label>${mobile_no_lan}</label>
                    <input type="text" name="mobile_no" class="form-control" placeholder="${mobile_no_lan}" id="mobile_no">
                </div>
                <div class="form-group">
                    <label>${transaction_no_lan}</label>
                    <input type="text" name="transaction_no" class="form-control" placeholder="${transaction_no_lan}" id="transaction_no">
                </div>
            `);
            $('#show_account_type').addClass('show_account_type')
        } else if (account_type == "Paypal" && account_type != undefined) {
            $("#show_account_type").html(`
                <div class="form-group">
                    <label>Credit Card No</label>
                    <input type="text" name="credit_card_no" class="form-control" placeholder="Credit Card No" id="credit_card_no">
                </div>
                <div class="form-group">
                    <label>Holder Name</label>
                    <input type="text" name="holder_name" class="form-control" placeholder="Holder Name" id="holder_name">
                </div>
                <div class="form-group">
                    <label>Month</label>
                    <input type="text" name="payment_month" class="form-control" placeholder="Month" id="payment_month">
                </div>
                <div class="form-group">
                    <label>Year</label>
                    <input type="text" name="payment_year" class="form-control" placeholder="Year" id="payment_year">
                </div>
                <div class="form-group">
                    <label>CVC</label>
                    <input type="text" name="payment_cvc" class="form-control" placeholder="CVC" id="payment_cvc">
                </div>
                <div class="btns">
                    <button class="pay_button start_animation set_no_access" id="pay_button"><b>Pay</b></button>
                </div>`);
            $("#show_account_type").addClass("show_account_type");
            $(".select2").select2();
        } else if (account_type == "Stripe" && account_type != undefined) {
            $("#show_account_type").html(`
                <div class="form-group">
                    <label>Credit Card No</label>
                    <input type="text" name="credit_card_no" class="form-control" placeholder="Credit Card No" id="credit_card_no">
                </div>
                <div class="form-group">
                    <label>Holder Name</label>
                    <input type="text" name="holder_name" class="form-control" placeholder="Holder Name" id="holder_name">
                </div>
                <div class="form-group">
                    <label>Month</label>
                    <input type="text" name="payment_month" class="form-control" placeholder="Month" id="payment_month">
                </div>
                <div class="form-group">
                    <label>Year</label>
                    <input type="text" name="payment_year" class="form-control" placeholder="Year" id="payment_year">
                </div>
                <div class="form-group">
                    <label>CVC</label>
                    <input type="text" name="payment_cvc" class="form-control" placeholder="CVC" id="payment_cvc">
                </div>
                <div class="btns">
                    <button class="pay_button start_animation set_no_access" id="pay_button"><b>Pay</b></button>
                </div>`);
            $("#show_account_type").addClass("show_account_type");
            $(".select2").select2();
        } else {
            $('#show_account_type').html('');
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".set_payment", function (e) {
        $("#finalize_amount_input").val('');
        let id = Number($(this).attr('data-id'));
        let acc_type = $(this).attr('data-type_value');
        let amount_txt = $("#amount_txt").val();
        let loyalty_point_txt = $("#loyalty_point_txt").val();
        let loyalty_rate = Number($("#loyalty_rate").val());
        if(acc_type != 'Loyalty Point'){
            $(".previous_due_div").show();
            $(".loyalty_point_div").hide();
            $(".amount_txt").html(amount_txt);
            $("#finalize_amount_input").attr("placeholder", amount_txt);
            if(id!=undefined){
                $('.set_payment').removeClass('active');
                $(this).addClass('active');
            }
            setActivePayment();
            setFinalizeDiscount();
            calFinalizeModal('');
            if(acc_type != 'Cash'){
                $('#finalize_amount_input').attr('readonly', false);
            }
        }else{
            let customer_id_loyalty = Number($("#walk_in_customer").val());
            let selected_customer_name = $('option:selected', '#walk_in_customer').attr('data-customer-name');
            if(selected_customer_name != 'Walk-in Customer'){
                $.ajax({
                    url: base_url + "Sale/getTotalLoyaltyPoint",
                    method: "POST",
                    dataType:'json',
                    data: {
                        customer_id: customer_id_loyalty,
                        customer_name: selected_customer_name,
                    },
                    success: function (response) {
                        if(response.status==true){

                            $('#finalize_amount_input').attr('readonly', false);
                            $('#finalize_amount_input').css({
                                'cursor':'none',
                                'background-color':'white',
                            });

                            $(".previous_due_div").hide();
                            $(".loyalty_point_div").show();
                            $("#available_loyalty_point").html(Number(response.total_point));
                        }else{
                            toastr['error']((response.alert_txt), '');
                        }
                    }
                });
                $(".amount_txt").html(loyalty_point_txt);
                $("#finalize_amount_input").attr("placeholder",loyalty_point_txt);

                let finalize_total_due_ = Number($("#finalize_total_due").html());
                let tool_tip_loyalty_point =  $("#tool_tip_loyalty_point").val();
                $(".set_default_quick_cach").html(((1/loyalty_rate) * finalize_total_due_).toFixed(op_precision)+" &nbsp;&nbsp;<span data-tippy-content='"+tool_tip_loyalty_point+"' class='tool_tip_loyalty_point fa fa-info'></span>");
                $(".set_default_quick_cach").attr('data-amount',((1/loyalty_rate) * finalize_total_due_).toFixed(op_precision));

                tippy(".tool_tip_loyalty_point", {
                    // animation: "scale",
                    allowHTML: true,
                });

                $("#finalize_amount_input").css("border","1px solid #bcbdbe");
                $("#finalize_amount_input").focus();
                if(id!=undefined){
                    $('.set_payment').removeClass('active');
                    $(this).addClass('active');
                }
                setActivePayment();
            }else{
                if(id!=undefined){
                    $('.set_payment').removeClass('active');
                    $(this).addClass('active');
                }
                $(".amount_txt").html(loyalty_point_txt);
                $("#payment_preview").text(acc_type);
                $("#payment_preview").attr('data-account_type', acc_type);
                $('.cash_div').hide();
                $("#finalize_amount_input").attr("placeholder",loyalty_point_txt);
                $('#finalize_amount_input').attr('readonly', true);
                $('#finalize_amount_input').css({
                    'cursor':'not-allowed',
                    'background-color':'#ecf0f1',
                });
                $(".previous_due_div").hide();
                $(".loyalty_point_div").show();
                $("#available_loyalty_point").html(Number(0));
                let loyalty_point_not_applicable = $("#loyalty_point_not_applicable").val();
                toastr['error']((loyalty_point_not_applicable), '');
            }
        }
    });


    function set_finalize_discount(){
        let sub_total_discount_finalize = Number($("#sub_total_discount_finalize").val());
        let finalize_total_paid = Number($("#finalize_total_paid").val());
        let finalize_total_payable = Number($("#finalize_total_payable").attr('data-original_payable'));
  
        let new_finalize_amount = (finalize_total_payable - sub_total_discount_finalize).toFixed(op_precision);
        let new_due = ((finalize_total_payable - sub_total_discount_finalize)-finalize_total_paid).toFixed(op_precision);
  
        $("#finalize_total_payable").html(new_finalize_amount);

        let cart_modal_total_discount_all_text = Number($("#cart_modal_total_discount_all_text").attr('data-original_discount'));
        $("#cart_modal_total_discount_all_text").html((cart_modal_total_discount_all_text+sub_total_discount_finalize).toFixed(op_precision));
  
        let conversion_rate  = Number($("#multi_currency").find(':selected').attr('data-multi_currency'));
        if(conversion_rate){
            $("#finalize_total_paid").html(new_finalize_amount);
            //set multi currency value
            let total_mul_amount = (conversion_rate*new_finalize_amount).toFixed(2);
            if(total_mul_amount){
                $("#multi_currency_amount").val(total_mul_amount);
            }else{
                $("#multi_currency_amount").val('');
            }
        }else{
            $("#finalize_total_due").html(new_due);
        }
    }

    
    $(document).on("click", ".get_quick_cash", function (e) {
        e.preventDefault();
        let finalize_amount_input
        let amount = Number($(this).attr('data-amount'));
        let is_denomination = ($(this).attr('data-is_denomination'));
        if(is_denomination=="yes"){
            let sum = 0;
            finalize_amount_input = $("#finalize_amount_input").val();
            if(finalize_amount_input==''){
                finalize_amount_input = 0;
            }else{
                finalize_amount_input = Number($("#finalize_amount_input").val());
            }
            sum = finalize_amount_input + amount;
            $(".set_payment").each(function (i, obj) {
                let id = ($(this).text());
                if($(this).hasClass('active')){
                    if(id=="Cash"){
                        $("#finalize_given_amount_input").val(sum.toFixed(op_precision));
                    }
                }
            });
            let total_count = $(this).find("span").html();
            let this_amount  = $(this).attr('data-amount');
            if(total_count!=undefined){
                total_count = Number(total_count)+1;
            }else{
                total_count = 1;
            }
            amount = sum;
            $("#finalize_amount_input").val(amount.toFixed(op_precision));
            $(this).html(this_amount+' <span class="badge_custom">'+total_count+'</span>');
        }else{
            $("#finalize_amount_input").val(amount.toFixed(op_precision));
            $(".set_payment").each(function (i, obj) {
                let id = ($(this).text());
                if($(this).hasClass('active')){
                    if(id=="Cash"){
                        $("#finalize_given_amount_input").val(amount.toFixed(op_precision));
                    }
                }
            });
        }
        $(".set_payment").each(function (i, obj) {
            let id = ($(this).text());
            if($(this).hasClass('active')){
                if(id=="Cash"){
                    let finalize_total_payable = Number($("#finalize_total_due").text());
                    let finalize_given_amount_input = Number($("#finalize_given_amount_input").val());
                    let change_amount = (finalize_given_amount_input - finalize_total_payable);
                    $("#finalize_change_amount_input").val((change_amount && change_amount>0?change_amount:0).toFixed(op_precision));
                    let finalize_change_amount_input = Number($("#finalize_change_amount_input").val());
                    if(finalize_change_amount_input){
                        amount = Number($("#finalize_total_due").text());
                        $("#finalize_amount_input").val(amount.toFixed(op_precision));
                    }
                }
            }
        });
        checkCashPayment(amount, 'Yes')
    });



    // Code optimize by Azhar ** Final **
    $(document).on("click", "#add_payment", function (e) {
        let account_note = '';
        let check_no = '';
        let check_issue_date = '';
        let check_expiry_date = '';
        let card_holder_name = '';
        let card_holding_number = '';
        let mobile_no = '';
        let transaction_no = '';
        let swip_card = '';
        let credit_card_no = '';
        let holder_name = '';
        let card_type = '';
        let payment_month = '';
        let payment_year = '';
        let payment_cvc = '';
        let paypal_email = '';
        let stripe_email = '';
        let paymentTypeArr = [];
        let account_type = $('.list-for-payment-type .active').attr('data-type_value');

        let  payment_exist_check = 'No';
        $('.payment_list_counter .payment-type-name').each(function(){
            if($(this).text() == $('.payment_element .active').text()){
                payment_exist_check == 'Yes';
            }
        });
        if(payment_exist_check == 'Yes'){
            return false;
        }


        if(account_type == 'Cash' && account_type != undefined){
            account_note = $('#p_note').val();
            if(account_note != ''){
                account_note = `Note:${account_note}`;
            }
            paymentTypeArr.push(account_note);
        }else if(account_type == 'Bank_Account' && account_type != undefined){
            check_no = $('#check_no').val();
            if(check_no != ''){
                check_no = `Check No: ${check_no}`;
            }
            paymentTypeArr.push(check_no);
            check_issue_date = $('#check_issue_date').val();
            if(check_issue_date != ''){
                check_issue_date = `Check Issue Data: ${check_issue_date}`;
            }
            paymentTypeArr.push(check_issue_date);
            check_expiry_date = $('#check_expiry_date').val();
            if(check_expiry_date != ''){
                check_expiry_date = `Check Expiry Data: ${check_expiry_date}`;
            }
            paymentTypeArr.push(check_expiry_date);
        }else if(account_type == 'Card' && account_type != undefined){
            card_holder_name = $('#card_holder_name').val();
            if(card_holder_name != ''){
                card_holder_name = `Card Holder Name: ${card_holder_name}`;
            }
            paymentTypeArr.push(card_holder_name);
            card_holding_number = $('#card_holding_number').val();
            if(card_holding_number != ''){
                card_holding_number = `Card Holding Number: ${card_holding_number}`;
            }
            paymentTypeArr.push(card_holding_number);
        }else if(account_type == 'Mobile_Banking' && account_type != undefined){
            mobile_no = $('#mobile_no').val();
            if(mobile_no != ''){
                mobile_no = `Mobile No: ${mobile_no}`;
            }
            paymentTypeArr.push(mobile_no);
            transaction_no = $('#transaction_no').val();
            if(transaction_no != ''){
                transaction_no = `Transaction No: ${transaction_no}`;
            }
            paymentTypeArr.push(transaction_no);
        }else if(account_type == 'Paypal' && account_type != undefined){
            swip_card = $('#swip_card').val();
            if(swip_card != ''){
                swip_card = `Swip Card: ${swip_card}`;
            }
            paymentTypeArr.push(swip_card);

            credit_card_no = $('#credit_card_no').val();
            if(credit_card_no != ''){
                credit_card_no = `Credit Card: ${credit_card_no}`;
            }
            paymentTypeArr.push(credit_card_no);

            holder_name = $('#holder_name').val();
            if(holder_name != ''){
                holder_name = `Holder Name: ${holder_name}`;
            }
            paymentTypeArr.push(holder_name);
            
            card_type = $('#card_type').val();
            if(card_type != ''){
                card_type = `Card Type: ${card_type}`;
            }
            paymentTypeArr.push(card_type);

            payment_month = $('#payment_month').val();
            if(payment_month != ''){
                payment_month = `Payment Month: ${payment_month}`;
            }
            paymentTypeArr.push(payment_month);

            payment_year = $('#payment_year').val();
            if(payment_year != ''){
                payment_year = `Payment Year: ${payment_year}`;
            }
            paymentTypeArr.push(payment_year);

            payment_cvc = $('#payment_cvc').val();
            if(payment_cvc != ''){
                payment_cvc = `Payment CVC: ${payment_cvc}`;
            }
            paymentTypeArr.push(payment_cvc);
        }else if(account_type == 'Stripe' && account_type != undefined){
            swip_card = $('#swip_card').val();
            if(swip_card != ''){
                swip_card = `Swip Card: ${swip_card}`;
            }
            paymentTypeArr.push(swip_card);

            credit_card_no = $('#credit_card_no').val();
            if(credit_card_no != ''){
                credit_card_no = `Credit Card: ${credit_card_no}`;
            }
            paymentTypeArr.push(credit_card_no);

            holder_name = $('#holder_name').val();
            if(holder_name != ''){
                holder_name = `Holder Name: ${holder_name}`;
            }
            paymentTypeArr.push(holder_name);
            
            card_type = $('#card_type').val();
            if(card_type != ''){
                card_type = `Card Type: ${card_type}`;
            }
            paymentTypeArr.push(card_type);

            payment_month = $('#payment_month').val();
            if(payment_month != ''){
                payment_month = `Payment Month: ${payment_month}`;
            }
            paymentTypeArr.push(payment_month);

            payment_year = $('#payment_year').val();
            if(payment_year != ''){
                payment_year = `Payment Year: ${payment_year}`;
            }
            paymentTypeArr.push(payment_year);

            payment_cvc = $('#payment_cvc').val();
            if(payment_cvc != ''){
                payment_cvc = `Payment CVC: ${payment_cvc}`;
            }
            paymentTypeArr.push(payment_cvc);
        }else{
        }
        let finalize_amount_input = Number($("#finalize_amount_input").val());
        let usage_point = finalize_amount_input;
        let status = false;
        let check_exist = false;
        let payment_id = 0 ;
        let acc_type = '' ;
        let payment_text = '' ;
        let payment_name = $("#payment_preview").text() ;
        let payment_acc_type = $("#payment_preview").attr('data-account_type') ;
        $(".set_payment").each(function () {
            if($(this).hasClass('active')){
                status = true;
                payment_id = Number($(this).attr('data-id'));
                acc_type = $(this).attr('data-type_value');
                payment_text = $(this).text();
            }
        });
        $("#finalize_given_amount_input").css("border","1px solid #bcbdbe");
        $("#finalize_amount_input").css("border","1px solid #bcbdbe");
        let minimum_point_to_redeem = Number($("#minimum_point_to_redeem").val());
        let loyalty_rate = Number($("#loyalty_rate").val());
        let available_loyalty_point = Number($("#available_loyalty_point").html());
        if((minimum_point_to_redeem > finalize_amount_input) && acc_type === 'Loyalty Point'){
            let minimum_point_to_redeem_is = $("#minimum_point_to_redeem_is").val();
            toastr['error']((minimum_point_to_redeem_is+ " "+minimum_point_to_redeem), '');
        }else if((available_loyalty_point<finalize_amount_input) && acc_type === 'Loyalty Point'){
            let loyalty_point_is_not_available = $("#loyalty_point_is_not_available").val();
            toastr['error']((finalize_amount_input+" "+loyalty_point_is_not_available), '');
        }else{
            $(".payment_list_counter").each(function () {
                let dataAccName = $(this).attr('data-payment_name');
                if(payment_text == dataAccName){
                    check_exist = true;
                }
            });
            if(acc_type==='Loyalty Point'){
                payment_name = payment_name+"(Usage "+finalize_amount_input+")";
                finalize_amount_input = (loyalty_rate * finalize_amount_input);
            }
            let tmp_amount_checker = finalize_amount_input;
            if(payment_text == "Cash"){
                tmp_amount_checker = Number($("#finalize_given_amount_input").val());
            }
            if(tmp_amount_checker){
                if(status==true){
                    $("#finalize_amount_input").css("border","1px solid #bcbdbe");

                    let html = `<li class="payment_list_counter" data-usage_point="${usage_point}" data-payment_name="${payment_name}" data-account_type="${payment_acc_type}" data-payment_id="${payment_id}" data-amount="${finalize_amount_input.toFixed(op_precision)}">
                        <span class="payment-type-name">${payment_name}</span>
                        <div class="d-flex align-items-center">
                            <span class="payment_list_amount op_padding_right_5">${finalize_amount_input.toFixed(op_precision)}</span>
                            <iconify-icon icon="solar:trash-bin-minimalistic-broken" class="remove_paid_item"></iconify-icon>
                        </div>
                        <input type="hidden" class="paymentAccountDetails" name="sale_payment_info[]" value="${paymentTypeArr}" />
                    </li>`;
                    if(check_exist==true){
                        toastr['error']((already_added), '');
                    }else{
                        $(".set_payment").each(function (i, obj) {
                            if($(this).hasClass('active')){
                                let payment_id_action = Number($(this).attr('data-id'));
                                let name = $(this).text();
                                if(name=="Cash"){
                                    $("#hidden_given_amount").val($("#finalize_given_amount_input").val());
                                    $("#hidden_change_amount").val($("#finalize_change_amount_input").val());
                                    let finalize_given_amount_input = Number($("#finalize_given_amount_input").val());
                                    let finalize_total_payable = Number($("#finalize_total_due").text());
                                    if(finalize_total_payable<finalize_given_amount_input){
                                        $(".set_no_access").addClass('no_access');
                                    }
                                    if(Number($("#finalize_change_amount_input").val())){
                                        $(".change_amount_div").show();
                                        $("#change_amount_div_").text(Number($("#finalize_change_amount_input").val()).toFixed(op_precision));
                                        $(".finalize-changes-amt-mobile").text(`${Number($("#finalize_change_amount_input").val()).toFixed(op_precision)}`);
                                        $('.finalize-changes-amt-mobile').siblings().removeClass('d-none');
                                        $('.finalize-changes-amt-mobile').siblings().addClass('d-block');
                                    }else{
                                        $(".change_amount_div").hide();
                                        $("#change_amount_div_").text(Number(0).toFixed(op_precision));
                                        $(".finalize-changes-amt-mobile").text(Number(0).toFixed(op_precision));
                                    }
                                    $("#finalize_given_amount_input").val('');
                                    $("#finalize_change_amount_input").val('');
                                }
                            }
                        });
                        $(".empty_title").hide();
                        $("#payment_list_div").append(html);
                        $("#finalize_amount_input").val('');
                        $("#finalize_amount_input").focus();
                        $(".badge_custom").remove();
                        setAnimation();
                        calFinalizeModal('');
                        setDefaultPayment();
                    }
                }else{
                    let please_click_a_payment_method_before_add = $("#please_click_a_payment_method_before_add").val();
                    toastr['error']((please_click_a_payment_method_before_add), '');
                }
            }else{
                if(payment_text=="Cash"){
                    $("#finalize_given_amount_input").focus();
                    $("#finalize_given_amount_input").addClass("border-2-red");
                }else{
                    $("#finalize_amount_input").focus();
                    $("#finalize_amount_input").addClass("border-2-red");
                }

            }
        }
    });
    setActivePayment();


    // Multi Currency
    $(document).on("click", "#change_currency_btn", function (e) {
        //for mobile view
        $("#order-split-bill-payment-amount").click();
        if(Number($(".payment_list_counter").length)){
            let your_added_payment_method_will_remove = $("#your_added_payment_method_will_remove").val();
            Swal.fire({
                title: warning + "!",
                text: your_added_payment_method_will_remove,
                showDenyButton: true,
                showCancelButton: false,
                confirmButtonText: "OK",
                denyButtonText: `Cancel`
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    $('.order-payment-list').addClass('pointer-events-none');
                    $('.payment_content_left_side').addClass('pointer-events-none');
                    $('.show_account_type').addClass('pointer-events-none');
                    $('.right-keys').addClass('pointer-events-none');

                    $(".set_no_access").addClass('no_access');
                    $(".finalize_modal_is_mul_currency").show(300);
                    $("#is_multi_currency").val(1);
                    $("#multi_currency").val('').change();
                    $("#multi_currency_amount").val('');
                    $(".empty_title").show();
                    $("#payment_list_div").html('');
                    $("#finalize_amount_input").html('');
                    $(".badge_custom").remove();
                    $(".previous_due_div").show();
                    $(".loyalty_point_div").hide();
                    setDefaultPayment();
                    calFinalizeModal('');
                } else if (result.isDenied) {
                    
                }
            });
        }else{

            $('.order-payment-list').addClass('pointer-events-none');
            $('.payment_content_left_side').addClass('pointer-events-none');
            $('.show_account_type').addClass('pointer-events-none');
            $('.right-keys').addClass('pointer-events-none');

            $(".previous_due_div").show();
            $(".loyalty_point_div").hide();
            $("#multi_currency").val('').change();
            $("#multi_currency_amount").val('');
            $("#is_multi_currency").val(1);
            $(".set_no_access").addClass('no_access');
            $(".finalize_modal_is_mul_currency").show(300);
        }
    });



    $(document).on("click", ".remove_multi_currency", function (e) {

        $('.order-payment-list').removeClass('pointer-events-none');
        $('.payment_content_left_side').removeClass('pointer-events-none');
        $('.show_account_type').removeClass('pointer-events-none');
        $('.right-keys').removeClass('pointer-events-none');

        $(".set_no_access").removeClass('no_access');
        $(".finalize_modal_is_mul_currency").hide(300);
        $("#is_multi_currency").val('');
        $("#multi_currency").val('').change();
        $("#multi_currency_amount").val('');
        $("#sub_total_discount_finalize").val('');
        $(".order-payment-wrapper").find('.order-payment-list').fadeIn(0);
        cal_finalize_modal('');
        set_finalize_discount();
    });


    // Code optimize by Azhar ** Final **
    $(document).on("keyup", "#sub_total_discount_finalize", function (e) {
        let himSelf = $(this);
        let user_id = $('#session_uer_id').val();
        let discount_permission_code = $('.discount_permission_code_f').val();
        let error = false;
        if(discount_permission_code == ''){
            error = true;
            $('.discount_err_message_f').parent().show();
            $('.discount_err_message_f').text(The_discount_code_field_required)
            return false
        }else{
            $.ajax({
                method: "POST",
                url: base_url+"Sale/checUserDiscountPermission",
                data: {
                    user_id: user_id,
                    discount_permission_code: discount_permission_code,
                },
                success: function (response) {
                    if(response.status == 'success'){
                        let discountOriginal = $(himSelf).val();
                        let plainDiscount = discountOriginal.replace('%', '')
                        if(Number(plainDiscount) > 0){
                            let userAssignDiscount = response.data;
                            let userAssignDiscountPlain = userAssignDiscount.replace('%', '');
                            if( Number(plainDiscount) <= Number(userAssignDiscountPlain)){
                                setFinalizeDiscount();
                                calFinalizeModal('');
                            }else{
                                Swal.fire({
                                    title: warning+" !",
                                    text: `This cashier cannot give more than ${response.data} discount`,
                                    showDenyButton: false,
                                    showCancelButton: false,
                                    confirmButtonText: ok,
                                });
                                $(himSelf).val('');
                            }
                        }
                    }else{
                        $('.discount_err_message').text(response.message)
                        $('.discount_err_message').parent().show();
                    }
                }
            });
        }
    });



    // Code optimize by Azhar ** Final **
    $(document).on("click", ".remove_paid_item", function () {
        $(".set_no_access").removeClass('no_access');
        $("#hidden_given_amount").val('');
        $("#hidden_change_amount").val('');
        $("#finalize_given_amount_input").val('');
        $("#finalize_change_amount_input").val('');
        if(Number($("#finalize_change_amount_input").val())){
            $(".change_amount_div").show();
            $("#change_amount_div_").text(Number($("#finalize_change_amount_input").val()).toFixed(op_precision));
            $(".finalize-changes-amt-mobile").text(`${Number($("#finalize_change_amount_input").val()).toFixed(op_precision)}`);
            $('.finalize-changes-amt-mobile').siblings().removeClass('d-none');
            $('.finalize-changes-amt-mobile').siblings().addClass('d-block');
        }else{
            $(".change_amount_div").hide();
            $("#change_amount_div_").text(Number(0).toFixed(op_precision));
            $(".finalize-changes-amt-mobile").text(Number(0).toFixed(op_precision));
        }
        $(this).parent().parent().remove();
        $("#finalize_amount_input").val('');
        removePaidListTitle();
        calFinalizeModal('');
    });

    // Code optimize by Azhar ** Final **
    $(document).on("click", ".remove_discount", function (e) {
        $("#sub_total_discount_finalize").val("");
        setFinalizeDiscount();
        calFinalizeModal('');
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.remove_this_item_from_cart', function () {
        let row_number = $(this).attr('data-remove-order-row-no');
        $('.single_order[data-single-order-row-no=' + row_number + ']').remove();
        productSound3.play();
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
        cartMobileItemCount();
        cartMobileRemoveMsgAndItemCount();
    });




    // Code optimize by Azhar ** Final **
    function add_sale_by_ajax(order_object, total_payable) {
        $("#finalize_order_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
        // let finalize_previous_due = $('#walk_in_customer option:selected').attr('data-previous_due');
        let finalize_previous_due = 0;
        let finalize_total_payable = (Number(total_payable)).toFixed(op_precision);
        $('#finalize_grand_total').text(total_payable);
        $('#finalize_total_payable').text(finalize_total_payable);
        $("#finalize_total_payable").attr('data-original_payable',finalize_total_payable);
        $('.set_default_quick_cach').text((Number(total_payable) + (Number(finalize_previous_due))).toFixed(op_precision));
        $('.set_default_quick_cach').attr('data-amount', (Number(total_payable) + (Number(finalize_previous_due))).toFixed(op_precision));
        $('#pay_amount_invoice_input').val((Number(total_payable) + (Number(finalize_previous_due))).toFixed(op_precision));
        $("#order_object").val(order_object);
        setDefaultPayment();
    }


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#hold_sale', function () {
        if ($('.order_holder .single_order').length > 0) {
            $.ajax({
                url: base_url + "Sale/get_new_hold_number_ajax",
                method: "GET",
                success: function (response) {
                    $("#generate_sale_hold_modal").addClass("active");
                    $(".pos__modal__overlay").fadeIn(200);
                    $('#hold_generate_input').val(response);
                }
            });
        } else {
            toastr['error']((cart_empty), '');
        }
    });


    // Code optimize by Azhar ** Final **
    function add_hold_by_ajax(order_object, hold_number) {
        $.ajax({
            url: base_url + "Sale/add_hold_by_ajax",
            method: "POST",
            data: {
                order: order_object,
                hold_number: hold_number,
                csrf_offpos: csrf_value_
            },
            success: function (response) {
                $("#generate_sale_hold_modal").removeClass('active');
                $('.order_holder').empty();
                $('#hold_generate_input').val(Number(0));
                $('#table_button').attr('disabled', false);
                $('.main_top').find('button').css('background-color', '#F3F3F3');
                clearFooterCartCalculation();
                resetDefaultCustomer();
            }
        });
    }


    // Code optimize by Azhar ** Final **
    $(document).on('click', '#hold_cart_info', function () {
        let hold_number = $('#hold_generate_input').val();
        if (hold_number == "") {
            $('#hold_generate_input').css('border', '1px solid #dc3545');
            return false;
        } else {
            $('#hold_generate_input').css('border', '1px solid #a0a0a0');
        }
        let total_items_in_cart = $('.order_holder .single_order').length;
        let sub_total = parseFloat($('#sub_total_show').text()).toFixed(op_precision);
        let total_vat = parseFloat($('#show_vat_modal').text()).toFixed(op_precision);
        let total_payable = parseFloat($('#total_payable').text()).toFixed(op_precision);
        let total_item_discount_amount = parseFloat($('#total_item_discount').text()).toFixed(op_precision);
        let sub_total_with_discount = parseFloat($('#discounted_sub_total_amount').text()).toFixed(op_precision);
        let sub_total_discount_amount = parseFloat($('#sub_total_discount_amount').text()).toFixed(op_precision);
        let total_discount_amount = parseFloat($('#all_items_discount').text()).toFixed(op_precision);
        let delivery_charge = ($('#delivery_charge').val() != "") ? parseFloat($('#delivery_charge').val()).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
        let customer_id = $('#walk_in_customer').val();
        let select_employee_id = $('#select_employee_id').val();
        let sub_total_discount_value = $('#sub_total_discount').val();
        let delivery_partner = $.trim($('#delivery_partner_info').attr('data-partner-id'));
        let rounding = $.trim($('#rounding').text());
        let sub_total_discount_type = '';
        let sale_vat_objects = [];
        $('#all_items_vat .tax_field').each(function (i, obj) {
            let tax_field_id = $(this).attr('id').substr(10);
            let tax_field_type = $(this).html();
            let tax_field_amount = $('#tax_field_amount_' + tax_field_id).html();
            sale_vat_objects.push({
                tax_field_id: tax_field_id,
                tax_field_type: tax_field_type,
                tax_field_amount: tax_field_amount
            });
        });
        if (total_items_in_cart == 0) {
            toastr['error']((cart_empty), '');
            return false;
        }
        if (sub_total_discount_value.length > 0 && sub_total_discount_value.substr(sub_total_discount_value.length - 1) == '%') {
            sub_total_discount_type = 'percentage';
        } else {
            sub_total_discount_type = 'plain';
        }
        let orderInfo = {
            "customer_id": customer_id,
            "select_employee_id": select_employee_id,
            "total_items_in_cart": total_items_in_cart,
            "sub_total": sub_total,
            "total_vat": total_vat,
            "total_payable": total_payable,
            "total_item_discount_amount": total_item_discount_amount,
            "sub_total_with_discount": sub_total_with_discount,
            "sub_total_discount_amount": sub_total_discount_amount,
            "total_discount_amount": total_discount_amount,
            "delivery_charge": delivery_charge,
            "sub_total_discount_value": sub_total_discount_value,
            "sub_total_discount_type": sub_total_discount_type,
            "sale_vat_objects": sale_vat_objects,
            "delivery_partner": delivery_partner,
            "rounding": rounding,
            "items": []
        };
        $('.order_holder .single_order').each(function (i, obj) {
            let item_id = $(this).attr('id').substr(15);
            let freeItemId = '';
            let freeItemName = '';
            let freeItemBuyQty = '';
            let freeItemGetQty = '';
            let freeItemLength = $(this).find('.free-item').length;
            if (freeItemLength) {
                freeItemId = $(this).find('.free-item').attr('data-free-item-id');
                freeItemName = $(`#free_item_name_table_${item_id}`).text();
                freeItemBuyQty = $(`#free_item_buy_table_${item_id}`).text();
                freeItemGetQty = $(`#free_item_get_table_${item_id}`).text();
            }
            
            let is_promo = $(this).attr('is_promo');
            let item_name = $(this).find('#item_name_table_' + item_id).text();
            let item_type_check = $(`#item_type_table${item_id}`).text();
            let menu_taxes = $(`#item_vat_percentage_table${item_id}`).text();
            let item_discount = $(this).find('#percentage_table_' + item_id).val();
            let expiry_imei_serial = $(this).find('.expiry_imei_serial_' + item_id).text();
            let discount_type = (item_discount.length > 0 && item_discount.substr(item_discount.length - 1) == '%') ? 'percentage' : 'plain';
            let item_price_without_discount = $(this).find('.item_price_without_discount').text();
            let item_seller_id = $(`#item_seller_table${item_id}`).text();
            let item_unit_price = $(this).find('#item_price_table_' + item_id).text();
            let item_quantity = $(this).find('#item_quantity_table_' + item_id).text();
            let item_price_with_discount = $(this).find('#item_total_price_table_' + item_id).text();
            let menu_note = $(this).find('.item_modal_description_table_' + item_id).text();
            let item_discount_amount = (parseFloat(item_price_without_discount) - parseFloat(item_price_with_discount)).toFixed(op_precision);
            orderInfo.items.push({
                "item_type": item_type_check,
                "item_seller_id": item_seller_id,
                "item_id": item_id,
                "item_name": item_name,
                "menu_taxes": menu_taxes,
                "item_discount": item_discount,
                "expiry_imei_serial": expiry_imei_serial,
                "discount_type": discount_type,
                "item_price_without_discount": item_price_without_discount,
                "item_unit_price": item_unit_price,
                "item_quantity": item_quantity,
                "item_price_with_discount": item_price_with_discount,
                "item_discount_amount": item_discount_amount,
                "menu_note": menu_note,
                "is_promo_item": is_promo,
                "promo_item_id": freeItemId,
                "promo_item_name": freeItemName,
                "promo_item_buy_qty": freeItemBuyQty,
                "promo_item_get_qty": freeItemGetQty
            });
        });
        let orderObject = JSON.stringify(orderInfo);
        add_hold_by_ajax(orderObject, hold_number);
        $(".pos__modal__overlay").fadeOut(200);
    });

    // Code optimize by Azhar ** Final **
    function resetDefaultCustomer() {
        let customer_id = $('#walk_in_customer > option:contains("Walk-in Customer")').attr('value');
        $("#walk_in_customer").val(customer_id).trigger("change");
        $('#place_edit_order').text(Place_Order);
    }


    // Code optimize by Azhar ** Final **
    function getAllHoldSales() {
        $.ajax({
            url: base_url + "Sale/get_all_holds_ajax",
            method: "GET",
            success: function (response) {
                let orders = JSON.parse(response);
                let held_orders = '';
                for (let key in orders) {
                    let customer_name = (orders[key].customer_name == null || orders[key].customer_name == "") ? "&nbsp;" : orders[key].customer_name;
                    held_orders += `<div class="single_hold_sale fix" id="hold_${orders[key].id}" data-selected="unselected">
                        <div class="first_column column fix">${orders[key].hold_no}</div>
                        <div class="second_column column fix">${customer_name}</div>
                        <div class="third_column column fix">${opDateFormat(orders[key].sale_date) + ' ' + orders[key].sale_time} </div>
                    </div>`;
                }
                $(".hold_list_holder .detail_holder ").empty();
                $(".hold_list_holder .detail_holder ").prepend(held_orders);
            }
        });
    }
 
    // Code optimize by Azhar ** Final **
    function printInvoice(sale_id) {
        if(invoice_print=="live_server_print"){
            $.ajax({
                url: base_url + "Authentication/callPrintServer",
                method: "post",
                dataType: "json",
                data: {
                    sale_id: sale_id,
                },
                success: function (data) {
                    if (data.printer_server_url) {
                        $.ajax({
                            url: data.printer_server_url + "print_server/off_pos_printer_server.php",
                            method: "post",
                            dataType: "json",
                            data: {
                                content_data: JSON.stringify(data.content_data), print_type:data.print_type,
                            },
                            success: function (data) {},
                            error: function () {},
                        });
                    }
                }
            });
        }else{
            if (print_format == "56mm") {
                open(base_url+"Sale/print_invoice/" + sale_id, 'Print Invoice', 'width=480,height=550');
            }else if (print_format == "80mm") {
                open(base_url+"Sale/print_invoice/" + sale_id, 'Print Invoice', 'width=685,height=550');
            } else if (print_format == "A4 Print") {
                open(base_url+"Sale/print_invoice/" + sale_id, 'Print Invoice', 'width=1600,height=550');
            } else if (print_format == "Half A4 Print") {
                open(base_url+"Sale/print_invoice/" + sale_id, 'Print Invoice', 'width=1600,height=550');
            }else if (print_format == "Letter Head") {
                open(base_url+"Sale/print_invoice/" + sale_id, 'Print Invoice', 'width=1600,height=550');
            }
            $("#finalize_order_cancel_button").click();
        }
    }

    // Code optimize by Azhar ** Final **
    function printChallan(sale_id) {
        open(base_url +"Sale/print_challan/" + sale_id, 'Print Challan', 'width=1600,height=550');
        $("#finalize_order_cancel_button").click();
    }

    // Code optimize by Azhar ** Final **
    function getDetailsOfParticularHold(hold_id) {
        let row_number = $('#modal_item_row').html();
        $.ajax({
            url: base_url + "Sale/get_single_hold_info_by_ajax",
            method: "POST",
            data: {
                hold_id: hold_id,
                csrf_offpos: csrf_value_
            },
            success: function (response) {
                response = JSON.parse(response);
                hold_id = response.id;
                let draw_table_for_order = '';
                let itemQty = 0;
                let totalItem = 0;
                let item_object;
                let key;
                let readonlyAttr = '';
                let expiry_imei_serial = '';
                let promotionHtml = '';
                for (key in response.items) {
                    item_object = response.items[key];
                    itemQty += Number(item_object.qty);
                    totalItem++;
                    
                    if(item_object.item_type == 'IMEI_Product' || item_object.item_type == 'Serial_Product'|| item_object.item_type == 'Medicine_Product'){
                        expiry_imei_serial = `<span class="imei_serial_note" id="expiry_imei_serial">${checkItemShortType(item_object.item_type)}: <span class="expiry_imei_serial_${item_object.food_menu_id}">${item_object.expiry_imei_serial}</span></span>`;
                    }else{
                        expiry_imei_serial = '';
                    }
                    if(item_object.is_promo_item == 'Yes'){
                        let jsonObj = jQuery.parseJSON(item_object.promo_item_object);
                        let itemPromoNo = parseInt(Number(item_object.qty) / Number(jsonObj.promo_item_buy_qty)) * parseInt(jsonObj.promo_item_get_qty);
                        readonlyAttr = 'readonly';
                        if(itemPromoNo > 0){
                            promotionHtml =`<div class="free-item free_item_div_${item_object.food_menu_id}" data-free-item-id="${jsonObj.promo_item_id}" data-get_fm_id="${item_object.food_menu_id}" data-is_free="Yes">
                                <div data-id="${item_object.food_menu_id}" class="customer_panel single_order_column first_column">
                                    <iconify-icon icon="solar:pen-broken" width="22" data-parent_id=""></iconify-icon>
                                    <span id="free_item_name_table_${item_object.food_menu_id}">${jsonObj.promo_item_name}</span>
                                    <span class="d-none" id="free_item_buy_table_${item_object.food_menu_id}">${jsonObj.promo_item_buy_qty}</span>
                                    <span class="d-none" id="free_item_get_table_${item_object.food_menu_id}">${jsonObj.promo_item_get_qty}</span>
                                </div>
                                <div class="single_order_column second_column text-center"> 
                                    <span id="free_item_price_table_${item_object.food_menu_id}">${Number(0).toFixed(op_precision)}</span>
                                </div>
                                <div class="single_order_column third_column">
                                    <iconify-icon icon="uil:minus" class="alert_free_item_increase op_cursor_pointer decrease_item_table" id="free_decrease_item_table_${item_object.food_menu_id}" width="22"></iconify-icon>
                                    <span class="4_cp_qty_${item_object.food_menu_id} qty_item_custom cart_quantity" id="free_item_quantity_table_${item_object.food_menu_id}">${jsonObj.promo_item_get_qty}</span> 
                                    <iconify-icon icon="uil:plus" class="increase_item_table"></iconify-icon>
                                </div>
                                <div class="single_order_column forth_column">
                                    <input type="" name="" onfocus="select();" placeholder="Amt or %" class="discount_cart_input" value="${Number(0)}" disabled>
                                </div>
                                <div class="single_order_column fifth_column text-right"> 
                                    <span id="free_item_total_price_table_${item_object.food_menu_id}">${Number(0).toFixed(op_precision)}</span>
                                    <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-id="${item_object.food_menu_id}" class="free-item-remove removeCartItemFree"></iconify-icon>
                                </div>
                            </div>`;
                        }
                    }else{
                        promotionHtml = ''
                    }
                    draw_table_for_order +=`<div data-variation-parent="${item_object.parent_id}" class="single_order" is_promo="${item_object.is_promo_item}" data-qty_default="1" data-sale-unit="${item_object.unit_name}" id="order_for_item_${item_object.food_menu_id}" data-single-order-row-no="" data_cart_item_id="${item_object.food_menu_id}">
                        <div class="first_portion">
                            <span class="d-none" id="item_seller_table${item_object.food_menu_id}">${item_object.item_seller_id}</span>
                            <span class="item_type d-none" id="item_type_table${item_object.food_menu_id}">${item_object.item_type}</span>
                            <span class="item_vat d-none" id="item_vat_percentage_table${item_object.food_menu_id}">${item_object.menu_taxes ? item_object.menu_taxes : ''}</span>
                            <span class="item_discount d-none" id="item_discount_table${item_object.food_menu_id}">${item_object.discount_amount}</span>
                            <span class="item_price_without_discount d-none" id="item_price_without_discount_${item_object.food_menu_id}">${item_object.menu_unit_price}</span>
                            <div class="single_order_column first_column">
                                <iconify-icon icon="solar:pen-broken" class="op_cursor_pointer edit_item" id="edit_item_${item_object.food_menu_id}" width="22"></iconify-icon>
                                <span id="item_name_table_${item_object.food_menu_id}">${ (item_object.parent_name ? item_object.parent_name + ' ' : '') + item_object.item_name +'('+ item_object.code +')'}</span>
                            </div>
                            <div class="single_order_column second_column">
                                <span id="item_price_table_${item_object.food_menu_id}">${item_object.menu_unit_price}</span>
                            </div>
                            <div class="single_order_column third_column">
                                <iconify-icon icon="uil:minus" class="decrease_item_table op_cursor_pointer" id="decrease_item_table_${item_object.food_menu_id}" width="22"></iconify-icon>
                                <span class="cart_quantity" id="item_quantity_table_${item_object.food_menu_id}">${item_object.qty}</span> 
                                <iconify-icon icon="uil:plus" class="increase_item_table op_cursor_pointer" id="increase_item_table_${item_object.food_menu_id}" width="22"></iconify-icon>
                            </div>
                            <div class="single_order_column forth_column">
                                <input type="text" name="" onfocus="select();" placeholder="Amt or %" inline_dis_column="${item_object.food_menu_id}" class="special_textbox access_control inline_dis_column" id="percentage_table_${item_object.food_menu_id}" value="${item_object.menu_discount_value}">
                            </div>
                            <div class="single_order_column fifth_column">
                                <span id="item_total_price_table_${item_object.food_menu_id}">${Number(item_object.menu_price_with_discount).toFixed(op_precision)}</span> 
                                <iconify-icon icon="solar:trash-bin-minimalistic-broken" data-remove-order-row-no="0" class="remove_this_item_from_cart" width="22"></iconify-icon>
                            </div>
                        </div>
                        ${expiry_imei_serial}
                        <span class="cart_item_modal_des item_modal_description_table_${item_object.food_menu_id}">${item_object.menu_note}</span>
                        ${promotionHtml}
                    </div>`;
                }
                
                $(".order_holder").prepend(draw_table_for_order);
                $("#total_items_in_cart").text(response.total_items);
                $("#sub_total_show").text(Number(response.sub_total).toFixed(op_precision));
                $("#show_charge_amount").text(Number(response.delivery_charge).toFixed(op_precision));
                $("#sub_total").text(Number(response.sub_total).toFixed(op_precision));
                $("#show_vat_modal").text(Number(response.vat).toFixed(op_precision));
                $("#show_discount_amount").text(Number(response.sub_total_discount_amount).toFixed(op_precision));
                $("#total_item_discount").text(Number(response.total_item_discount_amount).toFixed(op_precision));
                $("#discounted_sub_total_amount").text(Number(response.sub_total_discount_amount).toFixed(op_precision));
                $("#sub_total_discount").val(Number(response.sub_total_discount_value));
                $("#sub_total_discount_amount").text(response.sub_total_with_discount);
                $("#all_items_discount").text(Number(response.total_discount_amount).toFixed(op_precision));
                $("#delivery_charge").val(Number(response.delivery_charge));
                $("#total_payable").text(Number(response.total_payable).toFixed(op_precision));
                $('#total_items_in_cart_without_quantity').html(totalItem);
                $('#total_items_in_cart_with_quantity').html(itemQty);
                $('#delivery_partner_info').attr('data-partner-id',response.delivery_partner_id);
                $('#delivery_partner_info').text(response.partner_name);
                $('#rounding').text(response.rounding);
                // Clear holdsale and recent sale modal data
                holdSaleModalDataClear();
                recentSaleModalDataClear();
                $('#show_sale_hold_modal').removeClass('active');
                $(".pos__modal__overlay").fadeOut(300);
                if (response.customer_id == "" || response.customer_id == 0 || response.customer_id == null) {
                    // Function to change the selected option based on data-customer-name attribute
                    function selectCustomerByName(customerName) {
                        $('#walk_in_customer option').each(function() {
                            if ($(this).data('customer-name') === customerName) {
                                $(this).prop('selected', true);
                                $('#walk_in_customer').trigger('change'); // Trigger change event if needed
                                return false; // Break the loop once the option is found and selected
                            }
                        });
                    }
                    // Call the function to select "Walk-in Customer"
                    selectCustomerByName('Walk-in Customer');
                } else {
                    $("#walk_in_customer").val(response.customer_id).trigger("change");
                }
                if (response.employee_id == "" || response.employee_id == 0 || response.employee_id == null) {
                } else {
                    $("#select_employee_id").val(response.employee_id).trigger("change");
                }
            }
        });
    }


    // Code optimize by Azhar ** Final **
    //remove last digits if number is more than 2 digits after decimal
    function removeLastTwoDigitWithPercentage(value, object_element) {
        if (value.length > 0 && value.indexOf('.') > 0) {
            let percentage = false;
            let number_without_percentage = value;
            if (value.indexOf('%') > 0) {
                percentage = true;
                number_without_percentage = value.toString().substring(0, value.length - 1);
            }
            let number = number_without_percentage.split('.');
            if (number[1].length > 2) {
                let value = parseFloat(Math.floor(number_without_percentage * 100) / 100);
                let add_percentage = (percentage) ? '%' : '';
                if (isNaN(value)) {
                    object_element.val('');
                } else {
                    object_element.val(value.toString() + add_percentage);
                }

            }
        }
    }


    



    // Code optimize by Azhar ** Final **
    //remove last digits if number is more than 2 digits after decimal
    function removeLastTwoDigitWithoutPercentage(value, object_element) {
        if (value.length > 0 && value.indexOf('.') > 0) {
            let percentage = false;
            let number_without_percentage = value;
            if (value.indexOf('%') > 0) {
                percentage = true;
                number_without_percentage = value.toString().substring(0, value.length - 1);
            }
            let number = number_without_percentage.split('.');
            if (number[1].length > 2) {
                let value = parseFloat(Math.floor(number_without_percentage * 100) / 100);
                let add_percentage = (percentage) ? '%' : '';
                if (isNaN(value)) {
                    object_element.val('');
                } else {
                    object_element.val(value.toString() + add_percentage);
                }
            }
        }
    }


    // Code optimize by Azhar ** Final **
    function resetFinalizeModal() {
        $('#finalize_total_payable').text(Number(0).toFixed(op_precision));
        $("#finalize_order_modal").removeClass("active");
        $(".pos__modal__overlay").fadeOut(300);
        $('#payment_list_div').html('');
        $("#finalie_order_payment_method option:contains(Cash)").attr('selected', true);
        let selected_id = ($("#finalie_order_payment_method option:contains(Cash)").val());
        $("#finalie_order_payment_method").val(selected_id).change();
        $('#pay_amount_invoice_input').val('');
        $('#due_amount_invoice_input').val('');
        $('#modal_finalize_sale_id').html('');
        $('#send_invoice_sms').prop('checked', false);
        $('#send_invoice_email').prop('checked', false);
        $('#finalie_order_payment_method').css('border', '1px solid #B5D6F6');
    }

    

    // Code optimize by Azhar ** Final **
    $(document).on("click", ".overlayForCalculator", function (e) {
        $("#calculator_main").fadeOut(333);
        $(".overlayForCalculator").fadeOut(111);
        $(".main_left").removeClass("active");
        if ($("#show_running_order").attr("data-isActive") === "false") {
            $("#show_running_order").attr("data-isActive", "true");
        } else {
            $("#show_running_order").attr("data-isActive", "false");
        }
    });



    // Code optimize by Azhar ** Final **
    function IsJsonString(str) {
        try {
            JSON.parse(str);
        } catch (e) {
            return false;
        }
        return true;
    }


    // Code optimize by Azhar ** Final **
    function getCustomerForEdit(customer_id) {
        $.ajax({
            url: base_url + "Sale/get_customer_ajax",
            method: "POST",
            data: {
                customer_id: customer_id,
                csrf_offpos: csrf_value_
            },
            success: function (response) {
                response = JSON.parse(response);
                $('#customer_id_modal').val(response.id);
                $('#customer_name_modal').val(response.name);
                $('#customer_phone_modal').val(response.phone);
                $('#customer_nid_modal').val(response.nid);
                $('#customer_email_modal').val(response.email);
                $('#customer_dob_modal').val(response.date_of_birth);
                $('#customer_doa_modal').val(response.date_of_anniversary);
                $('#customer_previous_due_modal').val(response.opening_balance);
                $('#opening_balance_type').val(response.opening_balance_type);
                $('#customer_credit_limit_modal').val(response.credit_limit);
                $('#customer_delivery_address_modal').val(response.address);
                if(response.group_id != 0){
                    $('#customer_group_id_modal').val(response.group_id).change();
                }else{
                    $('#customer_group_id_modal').val('').change();
                }
                $('#customer_discount_modal').val(response.discount).change();
                $('#customer_price_type').val(response.price_type).change();
                if (collect_gst == "Yes") {
                    let gst_no = (response.gst_number == null || response.gst_number == '') ? '' : response.gst_number;
                    $('#customer_gst_number_modal').val(response.gst_number);
                    $('#same_or_diff_state').val(response.same_or_diff_state).change();
                }
                $('#add_customer_modal').addClass('active');
                $('.pos__modal__overlay').fadeIn();
            }
        });
    }

    // Code optimize by Azhar ** Final **
    function findItemByItemId(item_id) {
        let single_item;
        let i;
        for (i = 0; i < window.items.length; i++) {
            if (items[i].item_id == item_id) {
                single_item = items[i];
                return single_item;
            }
        }
        return null;
    }


    // Code optimize by Azhar ** Final **
    function findItemTypeByItemCode(item_code) {
        let single_item;
        let i;
        for (i = 0; i < window.items.length; i++) {
            if (items[i].item_code == item_code) {
                single_item = items[i].item_type;
                return single_item;
            }
        }
        return null;
    }
    function findItemByItemCode(item_code) {
        let single_item;
        let i;
        for (i = 0; i < window.items.length; i++) {
            if (items[i].item_code == item_code) {
                single_item = items[i].item_id;
                return single_item;
            }
        }
        return null;
    }
    function findItemInfoByItemCode(item_code) {
        let single_item;
        let i;
        for (i = 0; i < window.items.length; i++) {
            if (items[i].item_code == item_code) {
                single_item = items[i];
                return single_item;
            }
        }
        return null;
    }

    $(document).on("click", ".add_dummy_data", function(e) {
        e.preventDefault();
        let linkURL = this.href;
        warnBeforeRedirectDummyData(linkURL);
    });

    function warnBeforeRedirectDummyData(linkURL) {
        Swal.fire({
            title: warning + "!",
            text: dummy_data_delete_alert,
            showDenyButton: true,
            showCancelButton: false,
            confirmButtonText: yes,
            denyButtonText: cancel,
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                window.location.href = linkURL;
            }
        });
    }
    // Code optimize by Azhar ** Final **
    $(document).on("keyup", "#finalize_given_amount_input", function (e) {
        let this_value = $.trim($(this).val());
        if (isNaN(this_value)) {
            $(this).val('');
        }
        let finalize_total_payable = Number($("#finalize_total_due").text());
        if (isNaN(this_value)) {
            this_value = 0;
        }
        let change_amount = (parseFloat(this_value) - parseFloat(finalize_total_payable));
        change_amount = change_amount && change_amount > 0 ? change_amount : 0;
        if (isNaN(change_amount)) {
            change_amount = 0;
        }
        if(this_value == ''){
            $("#finalize_change_amount_input").val(0);
        }else{
            $("#finalize_change_amount_input").val(parseFloat(change_amount).toFixed(op_precision));
        }
        let finalize_amount = parseFloat(this_value) - parseFloat(change_amount);
        if (isNaN(finalize_amount)) {
            finalize_amount = 0;
        }
        $("#finalize_amount_input").val(finalize_amount.toFixed(op_precision));
        checkCashPayment(finalize_amount, 'No');
    });

    // Code optimize by Azhar ** Final **
    $(document).on("click", ".cancel_modal", function () {
        $(this)
        .parent()
        .parent()
        .parent()
        .removeClass("active")
        .addClass("inActive");
        setTimeout(function () {
            $(".modal").removeClass("inActive");
        }, 1000);
    });

    
    // Code optimize by Azhar ** Final **
    let soundBody = $('body');
    let productSound1 = new Howl({
        src: [base_url + 'assets/media/access.mp3']
    });


    // Code optimize by Azhar ** Final **
    let productSound2 = new Howl({
        src: [base_url + 'assets/media/click.mp3']
    });


    // Code optimize by Azhar ** Final **
    let productSound3 = new Howl({
        src: [base_url + 'assets/media/erase.mp3']
    });

    // Code optimize by Azhar ** Final **
    let alert_sound = new Howl({
        src: [base_url + 'assets/media/alert_alarm.mp3']
    });

    
    // Code optimize by Azhar ** Final **
    soundBody.on('click','.cardBtn',function(){
        productSound1.play();
    });

    // Code optimize by Azhar ** Final **
    soundBody.on('click', '.dd', function () {
        productSound2.play();
    });
    
    // Code optimize by Azhar ** Final **
    soundBody.on('click', '.ii', function () {
        productSound2.play();
    });

    // Code optimize by Azhar ** Final **
    tippy("[data-tippy-content]", {
        // animation: "scale",
    });


    // Code optimize by Azhar ** Final **
    tippy('.time__date', {
        content: '<div class="text-center"><time>21-04-2021</time><br><time>12:23 AM</time></div>',
        allowHTML: true,
        animation: 'scale'
    });

    // Code optimize by Azhar ** Final **
    const ps2 = new PerfectScrollbar('.category_items', {
        wheelSpeed: 2,
        wheelPropagation: true,
        minScrollbarLength: 20
    });
    ps2.update();


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".main_menu", function (e) {
        $(this).children(".sub__menu").toggle();
        $(".languages").children(".sub__menu").hide(100);
        $(document).find('.submenu-wrapper').hide()
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".languages", function (e) {
        $(this).children(".sub__menu").toggle();
        $(".main_menu").children(".sub__menu").hide(100);
        $(document).find('.submenu-wrapper').hide()
    });


    // Code optimize by Azhar ** Final **
    $(window).click(function (event) {
        if ($(event.target).closest("li.has__children").length === 0) {
            $(".has__children").children(".sub__menu").hide();
            $(".has__children").children(".submenu-wrapper").hide();
        }
    });


    // Code optimize by Azhar ** Final **
    function toggleFullscreen(elem) {
        elem = elem || document.documentElement;
        if (
            !document.fullscreenElement &&
            !document.mozFullScreenElement &&
            !document.webkitFullscreenElement &&
            !document.msFullscreenElement
        ) {
            if (elem.requestFullscreen) {
                elem.requestFullscreen();
            } else if (elem.msRequestFullscreen) {
                elem.msRequestFullscreen();
            } else if (elem.mozRequestFullScreen) {
                elem.mozRequestFullScreen();
            } else if (elem.webkitRequestFullscreen) {
                elem.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
            }
        } else {
            if (document.exitFullscreen) {
                document.exitFullscreen();
            } else if (document.msExitFullscreen) {
                document.msExitFullscreen();
            } else if (document.mozCancelFullScreen) {
                document.mozCancelFullScreen();
            } else if (document.webkitExitFullscreen) {
                document.webkitExitFullscreen();
            }
        }
    }


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".fullscreen", function (e) {
        toggleFullscreen();
        $(this).attr("data-tippy-content", "");
        if ($(this).find("i").hasClass("fa-expand-arrows-alt")) {
            $(this)
                .find("i")
                .removeClass("fa-expand-arrows-alt")
                .addClass("fa-times");
            $(this).attr("data-tippy-content", fullscreen_2);
        } else {
            $(this)
                .find("i")
                .removeClass("fa-times")
                .addClass("fa-expand-arrows-alt");
            $(this).attr("data-tippy-content", fullscreen_1);
        }
        tippy(".fullscreen", {
            // animation: "scale",
        });
    });


    // Code optimize by Azhar ** Final **
    let open_invoice_date_hidden = $("#open_invoice_date_hidden").val();
    $(".datepicker_custom").datepicker({
            autoclose: true,
            format: "yyyy-mm-dd",
            startDate: "0",
            todayHighlight: true,
    }).datepicker("update", open_invoice_date_hidden);


    // Code optimize by Azhar ** Final **
    $(".datepicker_custom").on("changeDate", function (event) {
        $("#sale_date1").val(event.format());
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".pos__modal__overlay", function () {
        $(".pos__modal__overlay").fadeOut(300);
        $("aside#pos__sidebar").removeClass("active");
        $(".modal").removeClass("active");
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_discount_modal", function () {
        let sub_total_discount_finalize = $('#sub_total_discount_finalize').val();
        if(sub_total_discount_finalize){
            toastr['error'](('Finalize Discount already given'), '');
        }else{
            let varified_status = $('.discount_permission_code').attr('varified-status');
            if(session_uer_id == '1' && role == '1'){
                $('.discount_field').show();
                $('.discunt_check_modal').hide();
                $.ajax({
                    url: base_url + "Master/checkAccess",
                    method: "GET",
                    async: false,
                    dataType: 'json',
                    data: { controller: "287", function: "discountPermission" },
                    success: function (response) {
                        if (response == false) {
                            Swal.fire({
                                title: warning+" !",
                                text: no_permission_for_this_module,
                                showDenyButton: false,
                                showCancelButton: false,
                                confirmButtonText: ok,
                            });
                        } else {
                            let discount = $('#walk_in_customer option:selected').attr('discount');
                            if(discount == 0 || discount == ''){
                                $("#discount_modal").addClass("active");
                                $(".pos__modal__overlay").fadeIn(300);
                            }else{
                                toastr['error'](('This customer has already default discount!'), '');
                            }
                        }
                    }
                });

            }else{
                if(varified_status == 'Yes'){
                    $('.discount_field').show();
                    $('.discunt_check_modal').hide();
                }else{
                    $('.discount_field').hide();
                    $('.discount_err_message').parent().hide();
                }
                $.ajax({
                    url: base_url + "Master/checkAccess",
                    method: "GET",
                    async: false,
                    dataType: 'json',
                    data: { controller: "287", function: "discountPermission" },
                    success: function (response) {
                        if (response == false) {
                            Swal.fire({
                                title: warning+" !",
                                text: no_permission_for_this_module,
                                showDenyButton: false,
                                showCancelButton: false,
                                confirmButtonText: ok,
                            });
                        } else {
                            let discount = $('#walk_in_customer option:selected').attr('discount');
                            if(discount == 0 || discount == ''){
                                $("#discount_modal").addClass("active");
                                $(".pos__modal__overlay").fadeIn(300);
                            }else{
                                toastr['error'](('This customer has already default discount!'), '');
                            }
                        }
                    }
                });
            }
            
        }
    });
    
    $(document).on('click', '#submit_discount_custom', function(){
        let cartItemLength = $('.order_holder .single_order').length;
        let user_id = $('#session_uer_id').val();
        let discount_permission_code = $('.discount_permission_code').val();
        let error = false;
        if(user_id != '1' && discount_permission_code == ''){
            error = true;
            $('.discount_err_message').parent().show();
            $('.discount_err_message').text(The_discount_code_field_required)
            return false
        }else{
            $.ajax({
                method: "POST",
                url: base_url+"Sale/checUserDiscountPermission",
                data: {
                    user_id: user_id,
                    discount_permission_code: discount_permission_code,
                },
                success: function (response) {
                    if(response.status == 'success'){
                        $('.discount_err_message').parent().hide();
                        if(cartItemLength > 0){
                            $('.discount_field').show();
                            let discountOriginal = $('#sub_total_discount').val();
                            let plainDiscount = discountOriginal.replace('%', '')
                            if(Number(plainDiscount) > 0){
                                let userAssignDiscount = response.data;
                                let userAssignDiscountPlain = userAssignDiscount.replace('%', '');
                                if(user_id == '1' && role == '1'){
                                    $('.discount_permission_code').attr('varified-status', 'Yes');
                                    $('#show_discount_amount').text(Number(discountOriginal).toFixed(op_precision));
                                    $("#discount_modal").removeClass("active");
                                    $(".pos__modal__overlay").fadeOut(300);
                                    cartItemCalculationInPOS();
                                    if(edit_mode == ''){
                                        storageCartDataInLocal();
                                    }
                                }else{
                                    if( Number(plainDiscount) <= Number(userAssignDiscountPlain)){
                                        $('.discount_permission_code').attr('varified-status', 'Yes');
                                        $('#show_discount_amount').text(Number(discountOriginal).toFixed(op_precision));
                                        $("#discount_modal").removeClass("active");
                                        $(".pos__modal__overlay").fadeOut(300);
                                        cartItemCalculationInPOS();
                                        if(edit_mode == ''){
                                            storageCartDataInLocal();
                                        }
                                    }else{
                                        Swal.fire({
                                            title: warning+" !",
                                            text: `This cashier cannot give more than ${response.data} discount`,
                                            showDenyButton: false,
                                            showCancelButton: false,
                                            confirmButtonText: ok,
                                        });
                                    }
                                }
                            }
                        }else{
                            Swal.fire({
                                title: warning+" !",
                                text: `The cart is empty!`,
                                showDenyButton: false,
                                showCancelButton: false,
                                confirmButtonText: ok,
                            });
                        }
                    }else{
                        $('.discount_err_message').text(response.message)
                        $('.discount_err_message').parent().show();
                    }
                }
            });
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_charge_modal", function () {
        $("#charge_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(300);
    });

    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_deliverypartner_modal", function () {
        $("#delivery_partner").addClass("active");
        $(".pos__modal__overlay").fadeIn(300);
    });
    // Code optimize by Azhar ** Final **
    $(document).on("click", "#delivery_partner_submit", function () {
        let deliveryPartner = $("#delivery_partner_list").val();
        let deliveryPartnerName = $('option:selected', '#delivery_partner_list').text();
        $('#delivery_partner_info').text(deliveryPartnerName);
        $('#delivery_partner_info').attr('data-partner-id', deliveryPartner);
        $(".pos__modal__overlay").fadeIn(300);
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_note_modal", function () {
        $("#note_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(300);
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#coupon_discount_modal", function () {
        $("#coupon_discount").addClass("active");
        $(".pos__modal__overlay").fadeIn(300);
        $('.coupon_err_message').parent().hide();
    });


    $(document).on('click', '.coupon_code_submit', function(){
        let couponCode = $('#coupon_code').val();
        let error = false;
        if(couponCode == ''){
            $('.coupon_err_message').parent().show();
            $('.coupon_err_message').text(The_coupon_code_field_required);
            error = true;
        }
        if(error == true){
            return false;
        }else{
            $.ajax({
                method: "POST",
                url: base_url +"Sale/couponCodeValidate",
                data: {
                    couponCode: couponCode,
                },
                success: function (response) {
                    if(response.status == "success"){
                        let cartItemLength = $('.single_order').length;
                        if(cartItemLength > 0){
                            $('.single_order').each(function(){
                                let item_id = $(this).attr('data_cart_item_id');
                                $(`#percentage_table_${item_id}`).val(response.data);
                            });
                            $('#coupon_code').val('');
                            $('.coupon_err_message').parent().hide();
                            $('#coupon_discount').removeClass('active');
                            $(".pos__modal__overlay").fadeOut(300);
                        }else{
                            $('.coupon_err_message').parent().hide();
                            Swal.fire({
                                title: warning + "!",
                                text: 'The cart is empty',
                                confirmButtonColor: "#8b5cf6",
                                confirmButtonText: ok,
                                showCancelButton: false,
                            });
                        }
                    }else{
                        $("#coupon_discount").addClass("active");
                        $('.coupon_err_message').text(response.message);
                        $('.coupon_err_message').parent().show();
                    }
                }
            });
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open_tax_modal", function () {
        $("#tax_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(300);
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".cancel", function () {
        $(this).parent().parent().parent().removeClass("active");
        $(".pos__modal__overlay").fadeOut(300);
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", ".submit", function () {
        $(".modal").removeClass("active");
        $(".pos__modal__overlay").fadeOut(300);
    });


    // Code optimize by Azhar ** Final **
    // Hide Modal When Click to close Icon
    $("body").on("click", ".alertCloseIcon", function () {
        $(this)
            .parent()
            .parent()
            .parent()
            .removeClass("active");
        $(".pos__modal__overlay").fadeOut(300);
    });


    // Code optimize by Azhar ** Final **
    $(document).on("click", "#open__menu", function (e) {
        $("aside#pos__sidebar").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.show_cart_list', function () {
        $('.main_middle').fadeIn(300);
        $('.main_right').hide(0);
        if (grocery_experience == 'Medicine' || grocery_experience == 'Grocery') {
            if (window.matchMedia("(min-width: 320px) and (max-width: 991.98px)").matches) {
                $('.grocery_main_part_on').css({
                    'grid-template-columns': '1fr',
                });
            }
        }
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.show_product', function () {
        $('.main_right').fadeIn(300);
        $('.main_middle').hide();
        if (grocery_experience == 'Medicine' || grocery_experience == 'Grocery') {
            if (window.matchMedia("(min-width: 320px) and (max-width: 991.98px)").matches) {
                $('.grocery_main_part_on').css({
                    'grid-template-columns': '70% 29%',
                    'gap': '1%',
                });
            }
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.radio_btn_label', function () {
        let amount = Number($(this).find("span").html());
        $("#modal_item_price_input_field").val(amount.toFixed(op_precision));
        updateCartItemPrice();
    });

    // Code optimize by Azhar ** Final **
    $(document).on("click", ".show_all_menu", function () {
        if ($(this).find('i').hasClass('fa-bars')) {
            $(this).find('i').removeClass('fa-bars').addClass('fa-times');
            $(".all__menus").slideDown(333);
        } else {
            $(this).find('i').removeClass('fa-times').addClass('fa-bars');
            $(".all__menus").slideUp(333);
        }
    });


    if(edit_mode != ''){
        function editCustomerChange() {
            let old_customer_id = $('#edit_sale_customer').val();
            $('#walk_in_customer').val(old_customer_id).trigger('change'); // Trigger change event if needed
        }
        setTimeout(function(){
            editCustomerChange();
            $('.customer_pannel').css({
                'pointer-events':'none',
                'cursor':'not-allowed',
            });
            $('#edit_add_customer_button_section').css({
                'pointer-events':'none',
                'cursor':'not-allowed',
            });
        }, 200)
    }



    function forMobDevice() {
        if ($(window).width() < 600) {
            $('.cat-view-trigger').on('click', function () {
                $('.slimScrollDivCategory').toggleClass('active');
            });
            $(window).click(function (event) {
                if ($(event.target).closest(".cat-view-trigger").length === 0) {
                    $('.slimScrollDivCategory').removeClass('active');
                }
            });
        }
    }

    $(window).on('load', forMobDevice)
    $(window).on('resize', forMobDevice)




    function shortCustPaymentActive(){
        let payment_type = $('.payment_element .active').attr('data-type_value');
        if(payment_type == 'Cash'){
            $('#finalize_given_amount_input').focus();
        }else{
            $('#finalize_amount_input').focus();
        }
    }


    // Flag to track if Alt key is down
    let altKeyDown = false;
    let shiftKeyDown = false;
    // Key down event listener


    if(grocery_experience == 'Medicine' || grocery_experience == 'Grocery'){
        $(document).on('focus', '#search_barcode', function(){
            let selector = $('.single-inner-div').find('.active_gm');
            selector.removeClass('active_gm');
            selector.addClass('active_gm_temp');
        });
        $(document).on('focus', '#search', function(){
            let selector = $('.single-inner-div').find('.active_gm');
            selector.removeClass('active_gm');
            selector.addClass('active_gm_temp');
        });
        $(document).on('focus', '#search_barcode', function(){
            let selector = $('#alternative_item_render').find('.active_medicine');
            selector.removeClass('active_medicine');
            selector.addClass('active_medicine_temp');
        });
        $(document).on('focus', '#search', function(){
            let selector = $('#alternative_item_render').find('.active_medicine');
            selector.removeClass('active_medicine');
            selector.addClass('active_medicine_temp');
        });
    }


    function show_generic_name_right_item(generic_name='',parent_id){
        if(generic_name){
            let array_as = {};
            let alternativeProduct = '';
            let foundItemsForItems = searchItemAndConstructGallery(generic_name,'','');
            for (let key1 in foundItemsForItems) {
                if(foundItemsForItems[key1].item_type != '0'){
                    if (foundItemsForItems.hasOwnProperty(key1)) {
                        let item_details = findItemByItemId(foundItemsForItems[key1].item_id);
                            if(parent_id!=foundItemsForItems[key1].item_id){
                                alternativeProduct+=`<div class="alternative-medicine single_item medicine_el  brand_${item_details.brand_id}" item-type="${item_details.item_type}" plain-id="${item_details.item_id}" data-last_purchase_price="${item_details.last_purchase_price}" data-whole_sale_price="${item_details.whole_sale_price}" data-sale_price="${item_details.price}" id="item_${item_details.item_id}">
                                <p class="item_name" data-tippy-content="${item_details.item_name}(${item_details.item_code})">${item_details.item_name}${item_details.brand_name} (${item_details.item_code})</p>
                                <p class="generic_name ${$.trim(item_details.generic_name) ? '' : 'd-none'}" data-tippy-content="${$.trim(item_details.generic_name) ? $.trim(item_details.generic_name) : ''}">${$.trim(item_details.generic_name) ? $.trim($.trim(item_details.generic_name)) : ''}</p>
                                <p class="item_price">SP: <span id="price_${item_details.item_id}">${parseFloat(item_details.price).toFixed(op_precision)}</span></p>
                                <span class="item_vat_percentage d-none">${item_details.vat_percentage}</span>
                            </div>`;
                            }
                    }
                }
            }
            if(alternativeProduct){
                $('#alternative_item_render').html('');
                $('#alternative_item_render').html(alternativeProduct);
                $('#main_left').addClass('alternative-exist');
            }else{
                $('#main_left').removeClass('alternative-exist');
                $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
            }
        }else{
            $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
            $('#main_left').removeClass('alternative-exist');
            $('#alternative_item_render').html(`<h6>${Alternative_Medicine_will_shown_here} <iconify-icon icon="solar:smile-circle-broken"></iconify-icon></h6>`);
        }
    }

    $(document).keydown(function(e) {
        let item_modal = $('#item_modal').hasClass('active');
        let finalize_order_modal = $('#finalize_order_modal').hasClass('active');
        if(grocery_experience == 'Medicine' || grocery_experience == 'Grocery' && !finalize_order_modal && !item_modal){
            // Main Screen UP & Down
            let generic_medicine_part = $('#main_left').hasClass('main_left_arrow');
            if(!generic_medicine_part){
                if (e.key === 'ArrowDown') {
                    $('#search_barcode').blur();
                    $('#search').blur();
                    let selector = $('.single-inner-div').find('.active_gm_temp');
                    selector.addClass('active_gm');
                    selector.removeClass('active_gm_temp');

                    setTimeout(function(){
                        let selector_gn = $('.single-inner-div').find('.active_gm');
                        let generic_name = selector_gn.find('.generic_name').attr("data-tippy-content");
                        let parent_id = selector_gn.attr("plain-id");
                        show_generic_name_right_item(generic_name,parent_id); 
                        const activeDiv = document.querySelector('.active_gm');
                        const rect = activeDiv.getBoundingClientRect();
                        const viewportHeight = window.innerHeight || document.documentElement.clientHeight;
                        if (rect.bottom > viewportHeight) {
                            $('.category_items').animate({
                                scrollTop: $('.active_gm').offset().top-110
                            },500);
                        }  
                    }, 100);

                    let current = $('.single-inner-div .active_gm');
                    let next = current.next('.grocery_medicine_el');
                    if (next.length) {
                        current.removeClass('active_gm');
                        next.addClass('active_gm');
                        $('.active_gm').focus();
                    } else {
                        current.removeClass('active_gm');
                        $('.single-inner-div .grocery_medicine_el').first().addClass('active_gm');
                        $('.active_gm').focus();
                    }
                }
                if (e.key === 'ArrowUp') {
                    $('#search_barcode').blur();
                    $('#search').blur();
                    let selector = $('.single-inner-div').find('.active_gm_temp');
                    selector.addClass('active_gm');
                    selector.removeClass('active_gm_temp');

                    setTimeout(function(){
                        let selector_gn = $('.single-inner-div').find('.active_gm');
                        let generic_name = selector_gn.find('.generic_name').attr("data-tippy-content");
                        let parent_id = selector_gn.attr("plain-id");
                        show_generic_name_right_item(generic_name,parent_id); 
                    }, 100);
                    
                    let current = $('.single-inner-div .active_gm');
                    let previous = current.prev('.grocery_medicine_el');
                    if (previous.length) {
                        current.removeClass('active_gm');
                        previous.addClass('active_gm');
                        $('.active_gm').focus();
                    } else {
                        current.removeClass('active_gm');
                        $('.single-inner-div .grocery_medicine_el').last().addClass('active_gm');
                        $('.active_gm').focus();
                    }
                }
                if (e.key === 'Enter') {
                    let activeElement = $('.single-inner-div .single_item.active_gm');
                    if (activeElement.length) {
                        activeElement.click();
                    }
                }
            }

            
            if($('#main_left').hasClass('alternative-exist')){
                if(e.key === 'ArrowRight'){
                    let selector = $('.single-inner-div').find('.active_gm');
                    selector.removeClass('active_gm');
                    selector.addClass('active_gm_temp');
                    $('#main_left').addClass('main_left_arrow');
                    setTimeout(function () {
                        let old_active_cls = $('#alternative_item_render .active_medicine_temp').length;
                        if(old_active_cls == 0){
                            $("#alternative_item_render").find(".medicine_el").eq(0).addClass("active_medicine");
                        }else{
                            let selector2 = $('#alternative_item_render').find('.active_medicine_temp');
                            selector2.removeClass('active_medicine_temp');
                            selector2.addClass('active_medicine');
                        }
                    }, 200);
                }
                if(e.key === 'ArrowLeft'){
                    let selector = $('#alternative_item_render').find('.active_medicine');
                    selector.removeClass('active_medicine');
                    selector.addClass('active_medicine_temp');
                    let selector2 = $('.single-inner-div').find('.active_gm_temp');
                    selector2.removeClass('active_gm_temp');
                    selector2.addClass('active_gm');
                    $('#main_left').removeClass('main_left_arrow');
                }
                if($('#main_left').hasClass('main_left_arrow')){
                    if (e.key === 'ArrowDown') {
                        $('#search_barcode').blur();
                        $('#search').blur();
                        let selector = $('#alternative_item_render').find('.active_medicine_temp');
                        selector.addClass('active_medicine');
                        selector.removeClass('active_medicine_temp');
                        let current = $('#alternative_item_render .active_medicine');
                        let next = current.next('.medicine_el');
                        if (next.length) {
                            current.removeClass('active_medicine');
                            next.addClass('active_medicine');
                            $('.active_medicine').focus();
                        } else {
                            current.removeClass('active_medicine');
                            $('#alternative_item_render .medicine_el').first().addClass('active_medicine');
                            $('.active_medicine').focus();
                        }
                    }
                    if (e.key === 'ArrowUp') {
                        $('#search_barcode').blur();
                        $('#search').blur();
                        let selector = $('#alternative_item_render').find('.active_medicine_temp');
                        selector.addClass('active_medicine');
                        selector.removeClass('active_medicine_temp');
                        let current = $('#alternative_item_render .active_medicine');
                        let previous = current.prev('.medicine_el');
                        if (previous.length) {
                            current.removeClass('active_medicine');
                            previous.addClass('active_medicine');
                            $('.active_medicine').focus();
                        } else {
                            current.removeClass('active_medicine');
                            $('#alternative_item_render .medicine_el').last().addClass('active_medicine');
                            $('.active_medicine').focus();
                        }
                    }
                    if (e.key === 'Enter') {
                        let activeElement = $('#alternative_item_render .single_item.active_medicine');
                        if (activeElement.length) {
                            activeElement.click();
                        }
                    }
                }
            }
        }
        
        

        // When Item Add Modal Is Active
        if(item_modal){
            if(e.shiftKey){
                if(e.keyCode == 13){
                    $('#add_to_cart').click(); // enter for add to cart
                    setTimeout(function(){
                        posDefaultCursor();
                    }, 100)
                }
                if(e.keyCode == 67){
                    $('#item_modal_close').click(); // shift + c for close modal NB: when item add modal is active
                }
                if(e.keyCode == 65){
                    $('#add_to_cart').click(); // shift + a 
                }
            }
            if ($('#item_quantity_modal_input').is(':focus') && e.key === 'ArrowUp') {
                let modal_qty_selector = $('#item_quantity_modal_input');
                let currentValue = modal_qty_selector.val();
                currentValue = parseInt(currentValue, 10); 
                modal_qty_selector.val(currentValue + 1);
            }
            if ($('#item_quantity_modal_input').is(':focus') && e.key === 'ArrowDown') {
                let modal_qty_selector = $('#item_quantity_modal_input');
                let currentValue = modal_qty_selector.val();
                currentValue = parseInt(currentValue, 10); 
                modal_qty_selector.val(currentValue - 1);
            }
        }


        // When Finalize Modal Is Active
        if(finalize_order_modal){
            // Denomination Increase
            let quick_cash = 'No';
            $('.get_quick_cash').each(function(){
                let check_active = $(this).hasClass('d_active');
                if(check_active){
                    quick_cash = 'Yes';
                }
            });
            if(quick_cash == 'No'){
                if(e.keyCode == 13){
                    $('#finalize_order_button').click();//enter for sale
                }
            }
            if (e.key === 'ArrowDown') {
                let current = $('#finalize_payment_method .active_m');
                let next = current.next('.payment_element');
                if (next.length) {
                    current.removeClass('active_m');
                    next.addClass('active_m');
                    $('.active_m a').click();
                    shortCustPaymentActive();
                } else {
                    current.removeClass('active_m');
                    $('#finalize_payment_method .payment_element').first().addClass('active_m');
                    $('.active_m a').click();
                    shortCustPaymentActive();
                }
            }
            if (e.key === 'ArrowUp') {
                let current = $('#finalize_payment_method .active_m');
                let previous = current.prev('.payment_element');
                if (previous.length) {
                    current.removeClass('active_m');
                    previous.addClass('active_m');
                    $('.active_m a').click();
                    shortCustPaymentActive();
                } else {
                    current.removeClass('active_m');
                    $('#finalize_payment_method .payment_element').last().addClass('active_m');
                    $('.active_m a').click();
                    shortCustPaymentActive();
                }
            }
            if(e.shiftKey){
                shiftKeyDown = true;
                if(e.keyCode == "Enter"){
                    $('#finalize_order_button').click();
                }
                if(e.keyCode == 65){
                    $('#add_payment').click(); //shift a
                }
                if(e.keyCode == 81){
                    $('.set_default_quick_cach').click(); //shift q
                }
                if(e.keyCode == 82){
                    $('.clear_quick_data').click(); // shift r
                    setDefaultPayment();
                }
                if(e.keyCode == 67){
                    $('#finalize_order_cancel_button').click(); // shift + c for close modal NB: when finilize modal is active
                }
                if(e.keyCode == 83){
                    $('.send_sms_finalize').click(); // shift + s for send invice via sms
                }
                if(e.keyCode == 69){
                    $('.send_email_finalize').click(); // shift + e for send invice via email
                }
                if(e.keyCode == 87){
                    $('.send_wm_finalize').click(); // shift + w for send invice via whats app
                }
            }
            $(document).on('focus', '.get_quick_cash', function() {
                $(this).addClass('d_active');
            });
            $(document).on('focusout', '.get_quick_cash', function() {
                $(this).removeClass('d_active');
            });
        }

        // POS Screen  Global
        if(e.shiftKey){
            shiftKeyDown = true;
            if(e.keyCode == 80){
                $('#place_order_operation').click(); // shift p
            }
            if(item_modal == false && finalize_order_modal == false){
                if(e.keyCode == 67){
                    $('#cancel_button').click(); // shift + c for cancel or clear cart data
                }
            }
        }


        // Check if Alt key is pressed
        if (e.altKey) {
            altKeyDown = true; // Set flag to true
            if (e.keyCode == 80) {
                e.preventDefault();
                if(view_purchase_price == 'Yes'){
                    $('.single_item').each(function (i, obj) {
                        let pp = (!isNaN(parseFloat($(this).data("last_purchase_price")).toFixed(op_precision))) ? parseFloat($(this).data("last_purchase_price")).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
                        let price_list = 'PP: ' + pp;
                        $(this).find(".item_price").html(price_list);
                    });
                }else{
                    toastr['error']('This user is not able to view purchase prices.', '');
                }
            } else if (e.keyCode == 87) {
                e.preventDefault();
                if(view_purchase_price == 'Yes'){
                    $('.single_item').each(function (i, obj) {
                        $('.single_item').each(function (i, obj) {
                            let wp = (!isNaN(parseFloat($(this).data("whole_sale_price")).toFixed(op_precision))) ? parseFloat($(this).data("whole_sale_price")).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
                            let price_list = ' WP: ' + wp;
                            $(this).find(".item_price").html(price_list);
                        });
                    });
                }else{
                    toastr['error']('This user is not able to view whole sale prices.', '');
                }
            } else if (e.keyCode == 83) {
                e.preventDefault();
                $('.single_item').each(function (i, obj) {
                    let sp = (!isNaN(parseFloat($(this).data("sale_price")).toFixed(op_precision))) ? parseFloat($(this).data("sale_price")).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
                    let price_list = ' SP: ' + sp;
                    $(this).find(".item_price").html(price_list);
                });
            } else if (e.keyCode == 67) {
                e.preventDefault();
                $('#add_customer_modal').addClass('active');
                $(".pos__modal__overlay").fadeIn(200);
                $('#add_or_edit_text').text('Add Customer');


                // Function to change the selected option based on data-customer-name attribute
                function selectCustomerByName(customerName) {
                    $('#walk_in_customer option').each(function() {
                        if ($(this).data('customer-name') === customerName) {
                            $(this).prop('selected', true);
                            $('#walk_in_customer').trigger('change'); // Trigger change event if needed
                            return false; // Break the loop once the option is found and selected
                        }
                    });
                }
                // Call the function to select "Walk-in Customer"
                selectCustomerByName('Walk-in Customer');

            } else if (e.keyCode == 82) {
                e.preventDefault();
                $('#register_modal').addClass('active');
                $(".pos__modal__overlay").fadeIn(200);
            } else if (e.keyCode == 68) {
                e.preventDefault();
                $('#show_sale_hold_modal').addClass('active');
                $(".pos__modal__overlay").fadeIn(200);
                getAllHoldSales();
            } else if (e.keyCode == 84) {
                e.preventDefault();
                $('#show_last_ten_sales_modal').addClass('active');
                $(".pos__modal__overlay").fadeIn(200);
                let op_current_date = new Date();
                $(".date_sale").datepicker({
                    autoclose: true,
                    format: "yyyy-mm-dd",
                    todayHighlight: true,
                })
                .datepicker("update", op_current_date);
                $(".date_sale").on("changeDate", function (event) {
                    $("#date_c").val(event.format());
                });
                let date_c = $("#date_c").val();
                getLastSale(date_c, '', '', 'default');
            } else if (e.keyCode == 69) {
                e.preventDefault();
                $('#calculator_main').css('display','block');
                $('.overlayForCalculator').css('display','block');
            } else if (e.keyCode == 75) {
                e.preventDefault();
                $('#show_keyboard_short_cut').addClass('active');
                $(".pos__modal__overlay").fadeIn(200);
            }
        }
    });

    // Key up event listener
    $(document).keyup(function(e) {
        // Check if Alt key is released and it was previously down
        if (!e.altKey && altKeyDown) {
            altKeyDown = false; // Reset flag
            e.preventDefault();
            $('.single_item').each(function (i, obj) {
                let sp = (!isNaN(parseFloat($(this).data("sale_price")).toFixed(op_precision))) ? parseFloat($(this).data("sale_price")).toFixed(op_precision) : parseFloat(0).toFixed(op_precision);
                let price_list = ' SP: ' + sp;
                $(this).find(".item_price").html(price_list);
            });
        }
    });
    

    


    $(document).on("click", ".clear_quick_data", function (e) {
        $("#finalize_amount_input").val('');
        $("#finalize_given_amount_input").val('');
        $("#finalize_change_amount_input").val('');
        $(".badge_custom").remove();
        shortCustPaymentActive();
    });


    setTimeout(function () {
        cartItemCalculationInPOS();
        if(edit_mode == ''){
            storageCartDataInLocal();
        }
    }, 300);


    // Main SCREEN
    feather.replace();
    $(window).on('load resize mouseover',function(){
        let h = $('.main_right').height();
        $('.slimScrollDiv').css('height' , h-60);
        $('.slimScrollDivCategory').css('height' , h-60);
    });

    $(".slimScrollBar").css({'width': '7px'});
    $(".slimScrollBar").css({'background': 'rgb(0, 0, 0)'});

    $('table .slimScrollDiv').addClass('nowSlime');
    $('#main_item_holder > .slimScrollDiv').addClass('cat-list-item');

    $('.product-view-trigger').on('click',function(){
        $('.cat-list-item').fadeToggle(555);
    });


    // Code optimize by Azhar ** Final **
    $(document).on('keydown', '.integerchkPercent', function(e){
        let keys = e.charCode || e.keyCode || 0;
        // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
        // home, end, period, and numpad decimal
        return (
            keys == 8 ||
            keys == 9 ||
            keys == 13 ||
            keys == 46 ||
            keys == 110 ||
            keys == 86 ||
            keys == 190 ||
            (keys >= 35 && keys <= 40) ||
            (keys >= 48 && keys <= 57) ||
            (keys >= 96 && keys <= 105));
    });

    // Code optimize by Azhar ** Final **
    $(document).on('keyup', '.integerchkPercent', function(e){
        let input = $(this).val();
        let ponto = input.split('.').length;
        let slash = input.split('-').length;
        if (ponto > 2)
            $(this).val(input.substr(0,(input.length)-1));
        $(this).val(input.replace(/[^0-9.%]/,''));
        if(slash > 2)
            $(this).val(input.substr(0,(input.length)-1));
        if (ponto ==2)
            $(this).val(input.substr(0,(input.indexOf('.')+4)));
        if(input == '.')
            $(this).val("");
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.logOutTrigger', function(){
        let register_status = $('#register_status').val();
        if(register_status == '1'){
            Swal.fire({
                title: warning + "!",
                text: "Your Register is not close!",
                showDenyButton: true,
                showCancelButton: false,
                confirmButtonText: "Not Now!",
                denyButtonText: `Close Now?`
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    $.ajax({
                        type: "POST",
                        url: base_url+"Authentication/logOut",
                        success: function (response) {
                            window.location.href = base_url + "Authentication/index"; 
                        }
                    });
                } else if (result.isDenied) {
                    $.ajax({
                        url: base_url + "Sale/closeRegister",
                        method: "POST",
                        success: function (response) {
                            toastr['success']((register_close), '');
                            $("#close_register_button").hide();
                            window.location.href = base_url + "Register/openRegister";
                        },
                        error: function () {
                            alert("error");
                        },
                    });
                }
            });
        }
    });


    // Code optimize by Azhar ** Final **
    $(document).on('click', '.show-menu', function(){
        $(this).parent().find('.sub__menu').fadeToggle(100)
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.select2-hidden-accessible', function(){
        $('.select2-container--default').css('top', '107')
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.brand_button', function(){
        $('.brand__sub__menu').css('display', 'none');
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.category_button', function(){
        $(this).addClass('category_active_design');
        $(".category_button").not(this).removeClass("category_active_design");
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.brand_button', function(){
        $(this).addClass('brand_active');
        $(".brand_button").not(this).removeClass("brand_active");
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.button_category_show_all', function(){
        $('.button_category_show_all_left').addClass('category_active_design');
        $(".category_active_trigger").removeClass("category_active_design");
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.brand_all_category', function(){
        $(".brand_all_category").removeClass("category_active_design");
        $('.button_category_show_all_left').addClass('category_active_design');
        $('.brand_button').removeClass('brand_active');
        $('.brand__sub__menu').css('display', 'none');
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.brand_button', function(){
        $(".category_button").removeClass("category_active_design");
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.payment_btn_toggler .payment_ctrl',function() {
        $(".payment_btn_toggler .payment_ctrl").removeClass("active");
        $(this).addClass("active");
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.payment_mthod_ctrl', function(){
        $('.list-for-payment-type').addClass('finalize-p-active');
        $('.list-for-payment-type').removeClass('finalize-p-inactive');
        $('.payment_content_wrap').addClass('finalize-p-inactive');
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.payment_details_ctrl', function(){
        $('.payment_content_wrap').addClass('finalize-p-active');
        $('.payment_content_wrap').removeClass('finalize-p-inactive');
        $('.list-for-payment-type').addClass('finalize-p-inactive');
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.show-menu', function(){
        $('.show-menu').siblings('.sub__menu').css('display', 'none');
        $(this).siblings('.sub__menu').css('display', 'block');
    });

    // Code optimize by Azhar ** Final **
    $(document).on('click', '.sub__menu li a', function(){
        $('.sub__menu').css('display', 'none');
    });
    // Code optimize by Azhar ** Final **
    $(document).on('click', '.show-menu', function(){
        $('.show-menu').siblings('.sub__menu').css('display', 'none');
        $(this).siblings('.sub__menu').css('display', 'block');
    });

    let local_cart_data = localStorage['cart_html'];
    if(local_cart_data){
        if(edit_mode == ''){
            $(".order_holder").html(local_cart_data);
        }
        cartItemCalculationInPOS();
    }

    $('.off-pos-open-dropdown-menu').on('click', function(){

        $(document).find('.submenu-wrapper').hide();
        $(this).parent().find('.submenu-wrapper').toggle();
        $(".main_menu").children(".sub__menu").hide();
        $(".languages").children(".sub__menu").hide();

    });
    $('.select2').select2();


    $(document).on('click', '.show_all_menu', function(){
        $('.mobile_other_menu').css('display', 'block');
    });


    $(document).on('click', '.mobile_menu_click_for_hide', function(){
        $('.mobile_other_menu').css('display', 'none');
    });




    // Stripe Payment
    function addPaymentCashToPaid(type) {
        if (type == "stripe" && stripePayementStatus == true) {
            $("#finalize_amount_input").val($("#finalize_total_due").text());
            $("#add_payment").click();
            $('#finalize_order_button').click();
        } else if (type == "paypal" && paypalPayementStatus == true) {
            $("#finalize_amount_input").val($("#finalize_total_due").text());
            $("#add_payment").click();
            $('#finalize_order_button').click();
        } else {
            toastr["error"]("Pay first. Your Payment Not Complete!", "");
        }
    }

    $(document).on("click", ".pay_button", function () {
        // Card Payment info
        let credit_card_no = $("#credit_card_no").val();
        let holder_name = $("#holder_name").val();
        let payment_month = $("#payment_month").val();
        let payment_year = $("#payment_year").val();
        let payment_cvc = $("#payment_cvc").val();
        let account_type = $("#account_type").val();
        // Stripe
        if (account_type == "Stripe") {
            stripePayment({
                credit_card_no: credit_card_no,
                holder_name: holder_name,
                payment_month: payment_month,
                payment_year: payment_year,
                payment_cvc: payment_cvc,
            });
        }

        if (account_type == "Paypal") {
            paypalPayment({
                credit_card_no: credit_card_no,
                holder_name: holder_name,
                payment_month: payment_month,
                payment_year: payment_year,
                payment_cvc: payment_cvc,
            });
        }
    });

    function stripePayment(info) {
        if (info.credit_card_no == "") {
            toastr["error"]("Credit Card No Required", "");
            return false;
        }

        if (info.holder_name == "") {
            toastr["error"]("Card Holder Name Required", "");
            return false;
        }
        if (info.payment_month == "") {
            toastr["error"]("Payment Month Required", "");
            return false;
        }
        if (info.payment_year == "") {
            toastr["error"]("Payment Year Required", "");
            return false;
        }
        if (info.payment_cvc == "") {
            toastr["error"]("Payment CVV Required", "");
            return false;
        }

        let stripe_publish_key = $('#stripe_publish_key').val();
        Stripe.setPublishableKey(stripe_publish_key);
        Stripe.createToken({
            number: info.credit_card_no,
            cvc: info.payment_cvc,
            exp_month: info.payment_month,
            exp_year: info.payment_year,
        },
            stripeResponseHandler
        );
    }

    function stripeResponseHandler(status, response) {
        if (response.error) {
            toastr["error"](response.error.message, "");
        } else {
            /* token contains id, last4, and card type */
            let token = response["id"];
            let amount = Number($("#finalize_total_due").text());
            $.ajax({
                url: base_url + "Sale/stripePayment",
                method: "POST",
                data: {
                    token: token,
                    amount: amount,
                },
                success: function (response) {
                    let data = JSON.parse(response);
                    if (data.status == "error") {
                        toastr["error"]("Amount Must be grater than 0", "");
                        stripePayementStatus = false;
                    }
                    if (data.paid == true) {
                        stripePayementStatus = true;
                        toastr["success"]("Payment Successfully", "");
                        addPaymentCashToPaid('stripe');
                    } else {
                        toastr["error"]("Something Went Wrong! Please try again", "");
                        stripePayementStatus = false;
                    }
                },
            });
        }
    }

    // Paypal Handle
    function paypalPayment(info) {
        if (info.credit_card_no == "") {
            toastr["error"]("Credit Card No Required", "");
            return false;
        }
        if (info.holder_name == "") {
            toastr["error"]("Card Holder Name Required", "");
            return false;
        }
        if (info.payment_month == "") {
            toastr["error"]("Payment Month Required", "");
            return false;
        }
        if (info.payment_year == "") {
            toastr["error"]("Payment Year Required", "");
            return false;
        }
        if (info.payment_cvc == "") {
            toastr["error"]("Payment CVV Required", "");
            return false;
        }
        let amount = Number($("#finalize_total_due").text());
        $.ajax({
            url: base_url + "Sale/paypalPayment",
            method: "POST",
            data: {
                info : info,
                amount: amount,
            },
            success: function (response) {
                let data = JSON.parse(response);
                if (data.status == "error" && data.code == 701) {
                    toastr["error"]("Amount Must be grater than 0", "");
                    paypalPayementStatus = false;
                }
                if (data.code == 200) {
                    paypalPayementStatus = true;
                    toastr["success"]("Payment Successfully", "");
                    addPaymentCashToPaid('paypal');
                } else {
                    toastr["error"]("Something Went Wrong! Maybe Wrong Credentials!", "");
                    paypalPayementStatus = false;
                }
            },
        });
    }
    
    // Grocery Experience
    $(document).on('change', '#grocery_experience_el', function(){
        let grocery_value = $(this).val();
        if(grocery_value == ''){
            grocery_value = 'Regular';
        }
        $.ajax({
            type: "POST",
            url: base_url+"Sale/groceryExperience",
            data: {
                grocery_value : grocery_value,
            },
            success: function (response) {
                if(response.status == 'success'){
                    toastr["success"](response.message, "");
                    window.location.href = base_url+'Sale/POS';
                }
            }
        });
    });

    // Custom Num Pad for POS Added By Azhar 
    let onscreen_keyboard_status = $('#onscreen_keyboard_status').val();
    if(onscreen_keyboard_status == 'Enable'){
        $('.easy-get').on('click', () => {
            let inputVal = $('.easy-put').val();
            show_easy_numpad(inputVal);
        });
        function show_easy_numpad(inputVal) {
            let inputReady = inputVal.replace("%", "");
            if(inputReady > 0){
                inputReady = inputVal;
            }else{
                inputReady = '';
            }
            let easy_numpad = `
                <div class="easy-numpad-frame" id="easy-numpad-frame">
                    <div class="easy-numpad-container">
                        <div class="easy-numpad-output-container">
                            <p class="easy-numpad-output" id="easy-numpad-output">${inputReady}</p>
                        </div>
                        <div class="easy-numpad-number-container">
                            <table>
                                <tr>
                                    <td><a href="javascript:void(0)" class="numberTrigger">7</a></td>
                                    <td><a href="javascript:void(0)" class="numberTrigger">8</a></td>
                                    <td><a href="javascript:void(0)" class="numberTrigger">9</a></td>
                                    <td><a href="javascript:void(0)" class="del" id="del">Del</a></td>
                                </tr>
                                <tr>
                                    <td><a href="javascript:void(0)" class="numberTrigger">4</a></td>
                                    <td><a href="javascript:void(0)" class="numberTrigger">5</a></td>
                                    <td><a href="javascript:void(0)" class="numberTrigger">6</a></td>
                                    <td><a href="javascript:void(0)" class="clear" id="clear">Clear</a></td>
                                </tr>
                                <tr>
                                    <td><a href="javascript:void(0)" class="numberTrigger">1</a></td>
                                    <td><a href="javascript:void(0)" class="numberTrigger">2</a></td>
                                    <td><a href="javascript:void(0)" class="numberTrigger">3</a></td>
                                    <td><a href="javascript:void(0)" class="cancel-n" id="cancel">Cancel</a></td>
                                </tr>
                                <tr>
                                    <td class="numberTrigger"><a href="javascript:void(0)">0</a></td>
                                    <td class="numberTrigger"><a href="javascript:void(0)">%</a></td>
                                    <td class="numberTrigger"><a href="javascript:void(0)">.</a></td>
                                    <td><a href="javascript:void(0)" class="done" id="done">Done</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            `;
            $('body').append(easy_numpad);
        }
        $(document).on('click', '.numberTrigger', function(){
            easynum();
        });
        function easynum() {
            navigator.vibrate = navigator.vibrate || navigator.webkitVibrate || navigator.mozVibrate || navigator.msVibrate;
            if (navigator.vibrate) {
                navigator.vibrate(60);
            }
            let easy_num_button = $(event.target);
            let easy_num_value = easy_num_button.text();
            $('#easy-numpad-output').append(easy_num_value);
        }
        $(document).on('click', '#done', function(){
            easy_numpad_done();
        });
        function easy_numpad_done() {
            let easy_numpad_output_val = $('#easy-numpad-output').text();
            $('.easy-put').val(easy_numpad_output_val);
            easy_numpad_close();
            $(".set_payment").each(function (i, obj) {
                let id = ($(this).text());
                if($(this).hasClass('active')){
                    if(id=="Cash"){
                        let finalize_total_payable = Number($("#finalize_total_due").text());
                        let finalize_given_amount_input = Number($("#finalize_given_amount_input").val());
                        let change_amount = (finalize_given_amount_input - finalize_total_payable);
                        $("#finalize_change_amount_input").val((change_amount && change_amount>0?change_amount:0).toFixed(op_precision));

                        let finalize_change_amount_input = Number($("#finalize_change_amount_input").val());
                        
                        if(finalize_change_amount_input){
                            let amount = Number($("#finalize_total_due").text());
                            $("#finalize_amount_input").val(amount.toFixed(op_precision));
                        }
                    }
                }
            });
            $("#add_payment").click();
        }
        $(document).on('click', '#cancel', function(){
            easy_numpad_cancel();
        });
        function easy_numpad_cancel() {
            $('#easy-numpad-frame').remove();
            $('.pos__modal__overlay').css('display', 'block');
        }
        $(document).on('click', '#clear', function(){
            easy_numpad_clear();
        });
        function easy_numpad_clear() {
            $('#easy-numpad-output').text("");
        }
        $(document).on('click', '#del', function(){
            easy_numpad_del();
        });
        function easy_numpad_del() {
            let easy_numpad_output_val = $('#easy-numpad-output').text();
            let easy_numpad_output_val_deleted = easy_numpad_output_val.slice(0, -1);
            $('#easy-numpad-output').text(easy_numpad_output_val_deleted);
        }
        function easy_numpad_close() {
            $('#easy-numpad-frame').remove();
        }
    }

    $(window).on("load", function () {
      $(".main-preloader").fadeOut(500);
    });

    $(document).on('click', '.btn_video_tutorial', function(){
        $("#video_tutorial_modal").addClass("active");
        $(".pos__modal__overlay").fadeIn(200);
    })


    $(document).on('change', '.generic_serch_option_checkbox', function(){
        let generic_name = $('input[name="generic_serch_option_checkbox"]:checked').val();
        if(generic_name == 'on'){
            generic_name = 'Yes';
            $('#search').attr('placeholder', pharmacy_search_place_holder_pos);
        }else{
            generic_name = 'No';
            $('#search').attr('placeholder', other_search_place_holder_pos);
        }
        $.ajax({
            type: "POST",
            url: base_url+"Sale/searchByGenericName",
            data: {
                generic_name_search_option : generic_name,
            },
            success: function (response) {
                if(response.status == 'success'){
                    toastr["success"](response.message, "");
                }
            }
        });
    });

});

