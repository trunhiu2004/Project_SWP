$(function () {
    "use strict";
    let base_url = $("#base_url").val();
    let register_close = $("#register_close_text").val();

    let copy_db = $('#copy_db_exp').val();
    let print_db = $('#print_db_exp').val();
    let excel_db = $('#excel_db_exp').val();
    let csv_db = $('#csv_db_exp').val();
    let pdf_db = $('#pdf_db_exp').val();
 
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
