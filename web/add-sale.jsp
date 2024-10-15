<%-- 
    Document   : add-sale
    Created on : Oct 13, 2024, 6:34:34 AM
    Author     : ankha
--%>

<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="model.Employees" %>
<%@ page import="model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Add Sale</title>
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
        <jsp:include page="components/favicon.jsp"></jsp:include>
            <style>
                .product-item {
                    margin-bottom: 10px;
                }

                .bootstrap-select {
                    display: block !important;
                }
            </style>
        </head>
        <body class="">
            <div class="wrapper">
            <jsp:include page="components/sidebar.jsp"></jsp:include>
            <jsp:include page="components/topnavbar.jsp"></jsp:include>
                <div class="content-page">
                    <div class="container-fluid add-form-list">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <div class="header-title">
                                            <h4 class="card-title">Add Sale</h4>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form action="add-sale" method="post" id="saleForm">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Date *</label>
                                                        <input type="date" name="orderDate" class="form-control" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Customer *</label>
                                                        <select name="customerId" class="form-control selectpicker" data-live-search="true" required>
                                                        <c:forEach var="customer" items="${customers}">
                                                            <option value="${customer.customerId}">${customer.customerName} - ${customer.customerPhone}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Biller *</label>
                                                    <select name="employeeId" class="form-control selectpicker" data-live-search="true" required>
                                                        <c:forEach var="employee" items="${employees}">
                                                            <option value="${employee.employee_id}">${employee.employee_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Order Status *</label>
                                                    <select name="orderStatus" class="form-control selectpicker" required>
                                                        <option value="Unpaid">Unpaid</option>
                                                        <option value="Paid">Paid</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Payment Method *</label>
                                                    <select name="paymentMethodId" class="form-control selectpicker" required>
                                                        <c:forEach var="paymentMethod" items="${paymentMethods}">
                                                            <option value="${paymentMethod.paymentMethodId}">${paymentMethod.paymentMethodName}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>    
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Products *</label>
                                                    <div id="product-list">
                                                        <div class="row product-item">
                                                            <div class="col-md-5">
                                                                <select name="productId[]" class="form-control selectpicker product-select" data-live-search="true" required>
                                                                    <option value="">Select a product</option>
                                                                    <c:forEach var="product" items="${products}">
                                                                        <option value="${product.productId}" data-price="${product.productPrice}">${product.productName}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <input type="number" name="quantity[]" class="form-control quantity" placeholder="Quantity" min="1" required>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <input type="text" name="unitPrice[]" class="form-control unit-price" placeholder="Unit Price" readonly>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <button type="button" class="btn btn-danger remove-product">Remove</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="button" class="btn btn-primary mt-2" id="add-product">Add Product</button>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Total Amount *</label>
                                                    <input type="text" name="totalAmount" id="totalAmount" class="form-control" placeholder="Total Amount" required readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-primary mr-2" id="calculateTotal">Calculate Total</button>
                                        <button type="submit" class="btn btn-success mr-2">Add Sale</button>
                                        <button type="reset" class="btn btn-danger">Reset</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="iq-footer">
            <!-- Footer content -->
        </footer>
        <script src="assets/js/backend-bundle.min.js"></script>
        <script src="assets/js/table-treeview.js"></script>
        <script src="assets/js/customizer.js"></script>
        <script async src="assets/js/chart-custom.js"></script>
        <script src="assets/js/app.js"></script>
        <script>
            $(document).ready(function () {
                function updateProductOptions() {
                    const selectedValues = Array.from(document.querySelectorAll('.product-select')).map(select => select.value);
                    $('.product-select').each(function () {
                        $(this).find('option').each(function () {
                            if (this.value !== '' && selectedValues.includes(this.value) && !this.selected) {
                                $(this).prop('disabled', true);
                            } else {
                                $(this).prop('disabled', false);
                            }
                        });
                    });
                    $('.product-select').selectpicker('refresh');
                }

                function addProductItem() {
                    const productList = $('#product-list');
                    const newItem = $(`
                <div class="row product-item">
                    <div class="col-md-5">
                        <select name="productId[]" class="form-control selectpicker product-select" data-live-search="true" required>
                            <option value="">Select a product</option>
            <c:forEach var="product" items="${products}">
                                <option value="${product.productId}" data-price="${product.productPrice}">${product.productName}</option>
            </c:forEach>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <input type="number" name="quantity[]" class="form-control quantity" placeholder="Quantity" min="1" value="1" required>
                    </div>
                    <div class="col-md-3">
                        <input type="text" name="unitPrice[]" class="form-control unit-price" placeholder="Unit Price" readonly>
                    </div>
                    <div class="col-md-2">
                        <button type="button" class="btn btn-danger remove-product">Remove</button>
                    </div>
                </div>
            `);
                    productList.append(newItem);

                    newItem.find('.selectpicker').selectpicker({
                        liveSearch: true,
                        showSubtext: true
                    });

                    updateProductOptions();
                }

                function removeProductItem(button) {
                    if ($('.product-item').length > 1) {
                        $(button).closest('.product-item').remove();
                        updateProductOptions();
                        calculateTotal();
                    }
                }

                function updateUnitPrice() {
                    const select = $(this);
                    const unitPriceInput = select.closest('.product-item').find('.unit-price');
                    const selectedOption = select.find('option:selected');
                    const price = parseFloat(selectedOption.data('price'));
                    if (!isNaN(price)) {
                        unitPriceInput.val(price.toFixed(2));
                    } else {
                        unitPriceInput.val('');
                    }
                    calculateTotal();
                }

                function calculateTotal() {
                    let total = 0;
                    $('.product-item').each(function () {
                        const quantity = parseFloat($(this).find('.quantity').val()) || 0;
                        const unitPrice = parseFloat($(this).find('.unit-price').val()) || 0;
                        total += quantity * unitPrice;
                    });
                    $('#totalAmount').val(total.toFixed(2));
                }

                $('#add-product').on('click', addProductItem);
                $(document).on('click', '.remove-product', function () {
                    removeProductItem(this);
                });
                $(document).on('change', '.product-select', updateUnitPrice);
                $(document).on('input', '.quantity', calculateTotal);
                $('#calculateTotal').on('click', calculateTotal);

                $(document).on('input', '.quantity', function () {
                    const value = parseInt($(this).val());
                    if (isNaN(value) || value < 1) {
                        $(this).val(1);
                    }
                    calculateTotal();
                });

                $('#saleForm').on('submit', function (e) {
                    e.preventDefault();
                    calculateTotal();
                    if (confirm('Are you sure you want to add this sale?')) {
                        // Add debug logging
                        console.log('Form data:', $(this).serialize());

                        $.ajax({
                            url: $(this).attr('action'),
                            type: 'POST',
                            data: $(this).serialize(),
                            success: function (response) {
                                console.log('Success:', response);
                                window.location.href = 'sale-list';
                            },
                            error: function (xhr, status, error) {
                                console.error('Error:', xhr.responseText);
                                alert('An error occurred while adding the sale. Please try again.');
                            }
                        });
                    }
                });
            });
        </script>
    </body>
</html>