$(function () {
    "use strict";
    let base_url = $("#base_url").val();
    let register_close = $("#register_close_text").val();

    let copy_db = $('#copy_db_exp').val();
    let print_db = $('#print_db_exp').val();
    let excel_db = $('#excel_db_exp').val();
    let csv_db = $('#csv_db_exp').val();
    let pdf_db = $('#pdf_db_exp').val();


    function show_details_for_details_page() {
        let csrf_value_ = $("#csrf_value_").val();
        $.ajax({
            url: base_url + "Sale/registerDetailCalculationToShowAjax",
            method: "POST",
            data: {
                csrf_name_: csrf_value_,
            },
            success: function (response) {
                if (response == 0) {
                    window.location.href = base_url + "Register/openRegister";
                }
                response = JSON.parse(response);
                $(".html_content").html(response.html_content_for_div);
                $("#datatable").DataTable({
                    'autoWidth': false,
                    'ordering': false,
                    'paging': false,
                    'bFilter': false,
                    dom: 'Blfrtip',
                    buttons: [{
                        extend: "print",
                        text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="solar:printer-broken" width="16"></iconify-icon> '+print_db+'</span>',
                        titleAttr: "print",
                    },
                    {
                        extend: "copyHtml5",
                        text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="solar:copy-broken" width="16"></iconify-icon> '+copy_db+'</span>',
                        titleAttr: "Copy",
                    },
                    {
                        extend: "excelHtml5",
                        text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="icon-park-solid:excel" width="16"></iconify-icon> '+excel_db+'</span>',
                        titleAttr: "Excel",
                    },
                    {
                        extend: "csvHtml5",
                        text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="teenyicons:csv-outline" width="16"></iconify-icon> '+csv_db+'</span>',
                        titleAttr: "CSV",
                    },
                    {
                        extend: "pdfHtml5",
                        text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="teenyicons:pdf-outline" width="16"></iconify-icon> '+pdf_db+'</span>',
                        titleAttr: "PDF",
                    },
        
                    
                ],


                });
            }
        });
    }
    show_details_for_details_page();
 
    $(document).on("click", ".register_details", function (e) {
        $('.overlayForCalculator').css('display', 'none');
        $('#calculator_main').css('display', 'none');
        let status = true;
        if (status) {
            let csrf_value_ = $("#csrf_value_").val();
            $.ajax({
                url: base_url + "Sale/registerDetailCalculationToShowAjax",
                method: "POST",
                data: {
                    csrf_name_: csrf_value_,
                },
                success: function (response) {
                    response = JSON.parse(response);
                    $("#register_modal").addClass("active");
                    $(".pos__modal__overlay").fadeIn(200);
                    $("#opening_register_time").html(response.opening_date_time);
                    $(".html_content").html(response.html_content_for_div);

                    setTimeout(function () {
                        $("#datatable").DataTable({
                            'autoWidth': false,
                            'ordering': false,
                            'paging': false,
                            'bFilter': false,
                            dom: 'Blfrtip',
                            buttons: [{
                                extend: "print",
                                text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="solar:printer-broken" width="16"></iconify-icon> '+print_db+'</span>',
                                titleAttr: "print",
                            },
                            {
                                extend: "copyHtml5",
                                text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="solar:copy-broken" width="16"></iconify-icon> '+copy_db+'</span>',
                                titleAttr: "Copy",
                            },
                            {
                                extend: "excelHtml5",
                                text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="icon-park-solid:excel" width="16"></iconify-icon> '+excel_db+'</span>',
                                titleAttr: "Excel",
                            },
                            {
                                extend: "csvHtml5",
                                text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="teenyicons:csv-outline" width="16"></iconify-icon> '+csv_db+'</span>',
                                titleAttr: "CSV",
                            },
                            {
                                extend: "pdfHtml5",
                                text: '<span style="display: flex; align-items-center; gap: 8px;"><iconify-icon icon="teenyicons:pdf-outline" width="16"></iconify-icon> '+pdf_db+'</span>',
                                titleAttr: "PDF",
                            },
                
                            
                        ],
                        });

                        $('.closing_balance').each(function(){
                            let closing_balance = $(this).attr('data-closing-balance');
                            if(closing_balance == 0){
                                
                            }
                            console.log(closing_balance);
                        });

                    }, 1000);
                },
                error: function () {
                    alert("error");
                },
            });
        }
    });

    $(document).on("click", ".pos__modal__close", function () {
        $("#last_future_sale_id").val("");
        $(this).parent().parent().removeClass("active").addClass("inActive");
        setTimeout(function () {
            $(".cus_pos_modal").removeClass("inActive");
        }, 1000);
        $(".pos__modal__overlay").fadeOut(300);
    });

    $(document).on("click", ".modal_hide_register", function () {
        $("#last_future_sale_id").val("");
        $(this)
            .parent()
            .parent()
            .parent()
            .removeClass("active")
            .addClass("inActive");
        setTimeout(function () {
            $(".cus_pos_modal").removeClass("inActive");
        }, 1000);
        $(".pos__modal__overlay").fadeOut(300);
    });

    $(document).on("click", "#register_close", function (e) {
        let csrf_name_ = $("#csrf_name_").val();
        let csrf_value_ = $("#csrf_value_").val();
        Swal.fire({
            title: 'Alert' + "!",
            text: 'Are you sure to close register?',
            showDenyButton: true,
            showCancelButton: false,
            confirmButtonText: `Yes`,
            denyButtonText: `Cancel`,
        }).then((result) => {
            if (result.value == true) {
                $.ajax({
                    url: base_url + "Sale/closeRegister",
                    method: "POST",
                    data: {
                        csrf_name_: csrf_value_,
                    },
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
    });

});
