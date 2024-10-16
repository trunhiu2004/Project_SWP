<%-- 
    Document   : addOrder
    Created on : Oct 15, 2024, 10:36:31 PM
    Author     : ankha
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Add Order</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    </head>
    <body class="  ">
        <!-- Wrapper Start -->
        <div class="wrapper">

            <jsp:include page="components/sidebar.jsp"></jsp:include>
            <jsp:include page="components/topnavbar.jsp"></jsp:include>

                <div class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Add New Order</h4>
                                        <p class="mb-0">Create a new order by providing the necessary details.</p>
                                    </div>
                                    <a href="list-order" class="btn btn-primary add-list"><i class="las la-arrow-left mr-3"></i>Back to Orders</a>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Order Information</h5>
                                        <form action="add-order" method="post">
                                            <div class="form-group">
                                                <label for="customerId">Customer Name:</label>
                                                <select name="customerId" id="customerId" class="form-control" required>
                                                <c:forEach var="customer" items="${customers}">
                                                    <option value="${customer.customerId}">${customer.customerName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="orderDate">Order Date:</label>
                                            <input type="date" name="orderDate" id="orderDate" class="form-control" required />
                                        </div>

                                        <div class="form-group">
                                            <label for="employeeId">Handled By (Employee Name):</label>
                                            <select name="employeeId" id="employeeId" class="form-control" required>
                                                <c:forEach var="employee" items="${employees}">
                                                    <option value="${employee.employee_id}">${employee.employee_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="orderStatus">Order Status:</label>
                                            <select id="orderStatus" name="orderStatus" class="form-control" required>
                                                <c:forEach var="status" items="${statuses}">
                                                    <option value="${status}">${status}</option>
                                                </c:forEach>
                                            </select>
                                        </div>


                                        <div class="form-group">
                                            <label for="couponId">Coupon Code:</label>
                                            <select name="couponId" id="couponId" class="form-control">
                                                <option value="">None</option>
                                                <c:forEach var="coupon" items="${coupons}">
                                                    <option value="${coupon.couponId}">${coupon.couponCode}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="productId">Select Product:</label>
                                            <select id="productId" class="form-control product-dropdown" required>
                                                <c:forEach var="product" items="${products}">
                                                    <option value="${product.productId}" data-barcode="${product.barcode}" data-unitprice="${product.productPrice}">
                                                        ${product.productName} - ${product.barcode}
                                                    </option>
                                                </c:forEach>
                                            </select>

                                        </div>

                                        <div class="form-group">
                                            <button type="button" id="addProduct" class="btn btn-success">Add Product</button>
                                        </div>

                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Product</th>
                                                    <th>Barcode</th>
                                                    <th>Unit Price</th>
                                                    <th>Quantity</th>
                                                    <th>Total Price</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="productTable">
                                            </tbody>
                                        </table>

                                        <div class="form-group">
                                            <label for="totalAmount">Total Amount:</label>
                                            <input type="number" step="0.01" name="totalAmount" id="totalAmount" class="form-control" readonly />
                                        </div>

                                        <button type="submit" class="btn btn-primary">Add Order</button>
                                        <a href="list-order" class="btn btn-secondary">Cancel</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper End-->

        <script>
            $(document).ready(function () {
                // Initialize Select2 for product dropdown with search by barcode
                $('.product-dropdown').select2({
                    placeholder: "Select a product",
                    allowClear: true
                });

                // Add Product to Order Table
                $('#addProduct').click(function () {
                    console.log("Add Product button clicked");

                    var selectedProduct = $('#productId').find(':selected');
                    var productId = selectedProduct.val();
                    var productName = selectedProduct.text().trim();
                    var barcode = selectedProduct.data('barcode');
                    var unitPrice = parseInt(selectedProduct.data('unitprice'));

                    // Debugging: Log the values being used
                    console.log("Selected Product ID:", productId);
                    console.log("Product Name:", productName);
                    console.log("Barcode:", barcode);
                    console.log("Unit Price (Parsed):", unitPrice, typeof unitPrice);

                    // Ensure a product is selected and unitPrice is valid
                    if (productId && !isNaN(unitPrice)) {
                        var newRow = `
                <tr>
                    <td class="product-name"></td>
                    <td class="barcode"></td>
                    <td class="unit-price"></td>
                    <td><input type="number" name="quantity" class="form-control quantity" value="1" min="1" /></td>
                    <td class="total-price"></td>
                    <td>
                        <button type="button" class="btn btn-danger remove-product">Remove</button>
                    </td>
                </tr>
            `;
                        $('#productTable').append(newRow);
                        console.log("Product added to table successfully");

                        // Explicitly set the values for the newly added row to ensure correctness
                        var addedRow = $('#productTable tr:last');
                        addedRow.find('.product-name').text(productName);
                        addedRow.find('.barcode').text(barcode);
                        addedRow.find('.unit-price').text(unitPrice);
                        addedRow.find('.total-price').text(unitPrice);

                        // Re-check the newly added row content
                        console.log("Re-check Added Row Product Name:", addedRow.find('.product-name').text());
                        console.log("Re-check Added Row Unit Price:", addedRow.find('.unit-price').text());
                        console.log("Re-check Added Row Total Price:", addedRow.find('.total-price').text());

                        // Update the total amount after adding a row
                        updateTotalAmount();
                    } else {
                        alert("Please select a product to add.");
                    }
                });

                // Remove Product from Order Table
                $(document).on('click', '.remove-product', function () {
                    console.log("Remove button clicked");
                    $(this).closest('tr').remove();
                    updateTotalAmount();
                });

                // Update Total Price for a Product when Quantity Changes
                $(document).on('input', '.quantity', function () {
                    console.log("Quantity changed");

                    var quantity = parseInt($(this).val());
                    var unitPrice = parseInt($(this).closest('tr').find('.unit-price').text());

                    // Debugging: Log the calculation
                    console.log("New Quantity:", quantity, typeof quantity);
                    console.log("Unit Price:", unitPrice, typeof unitPrice);

                    if (!isNaN(quantity) && !isNaN(unitPrice)) {
                        var totalPrice = quantity * unitPrice;
                        console.log("Total Price Calculation:", totalPrice, typeof totalPrice);
                        $(this).closest('tr').find('.total-price').text(totalPrice);
                    } else {
                        console.log("Invalid value for Quantity or Unit Price.");
                    }

                    updateTotalAmount();
                });

                // Update Total Amount for the Order
                function updateTotalAmount() {
                    var totalAmount = 0;

                    $('#productTable tr').each(function () {
                        var totalPriceText = $(this).find('.total-price').text().trim();
                        console.log("Total Price Text:", totalPriceText);

                        // Parse totalPriceText to integer
                        var totalPrice = parseInt(totalPriceText);
                        console.log("Parsed Total Price:", totalPrice, typeof totalPrice);

                        if (!isNaN(totalPrice)) {
                            totalAmount += totalPrice;
                        }
                    });

                    console.log("Total Amount Updated:", totalAmount, typeof totalAmount);
                    if (!isNaN(totalAmount)) {
                        $('#totalAmount').val(totalAmount);
                    } else {
                        console.log("Total Amount calculation failed due to NaN value.");
                    }
                }
            });

        </script>

    </body>

</html>
