

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/pages-invoice.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="https://templates.iqonic.design/posdash/html/assets/images/favicon.ico" />
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">  </head>
    <body class="  ">
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!-- loader END -->
        <!-- Wrapper Start -->
        <div class="wrapper">

            <jsp:include page="components/sidebar.jsp"></jsp:include>     
            <jsp:include page="components/topnavbar.jsp"></jsp:include>
            <div class="modal fade" id="new-order" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="popup text-left">
                                <h4 class="mb-3">New Order</h4>
                                <div class="content create-workform bg-body">
                                    <div class="pb-3">
                                        <label class="mb-2">Email</label>
                                        <input type="text" class="form-control" placeholder="Enter Name or Email">
                                    </div>
                                    <div class="col-lg-12 mt-4">
                                        <div class="d-flex flex-wrap align-items-ceter justify-content-center">
                                            <div class="btn btn-primary mr-4" data-dismiss="modal">Cancel</div>
                                            <div class="btn btn-outline-primary" data-dismiss="modal">Create</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>      <div class="content-page">
                <div class="container-fluid">
                    <div class="row">                  
                        <div class="col-lg-12">
                            <div class="card card-block card-stretch card-height print rounded">
                                <div class="card-header d-flex justify-content-between bg-primary header-invoice">
                                    <div class="iq-header-title">
                                        <h4 class="card-title mb-0">Invoice#1234567</h4>
                                    </div>
                                    <div class="invoice-btn">
                                        <button type="button" class="btn btn-primary-dark mr-2"><i class="las la-print"></i> Print
                                            Print</button>
                                        <button type="button" class="btn btn-primary-dark"><i class="las la-file-download"></i>PDF</button>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-12">                                  
                                            <img src="assets/images/logo.png" class="logo-invoice img-fluid mb-3">
                                            <h5 class="mb-0">Hello, Barry Techs</h5>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at
                                                its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as
                                                opposed to using 'Content here, content here', making it look like readable English.</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-responsive-sm">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Order Date</th>
                                                            <th scope="col">Order Status</th>
                                                            <th scope="col">Order ID</th>
                                                            <th scope="col">Billing Address</th>
                                                            <th scope="col">Shipping Address</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Jan 17, 2016</td>
                                                            <td><span class="badge badge-danger">Unpaid</span></td>
                                                            <td>250028</td>
                                                            <td>
                                                                <p class="mb-0">PO Box 16122 Collins Street West<br>Victoria 8007 Australia<br>
                                                                    Phone: +123 456 7890<br>
                                                                    Email: demo@example.com<br>
                                                                    Web: www.example.com
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p class="mb-0">PO Box 16122 Collins Street West<br>Victoria 8007 Australia<br>
                                                                    Phone: +123 456 7890<br>
                                                                    Email: demo@example.com<br>
                                                                    Web: www.example.com
                                                                </p>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h5 class="mb-3">Order Summary</h5>
                                            <div class="table-responsive-sm">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center" scope="col">#</th>
                                                            <th scope="col">Item</th>
                                                            <th class="text-center" scope="col">Quantity</th>
                                                            <th class="text-center" scope="col">Price</th>
                                                            <th class="text-center" scope="col">Totals</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th class="text-center" scope="row">1</th>
                                                            <td>
                                                                <h6 class="mb-0">Web Design</h6>
                                                                <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                </p>
                                                            </td>
                                                            <td class="text-center">5</td>
                                                            <td class="text-center">$120.00</td>
                                                            <td class="text-center"><b>$2,880.00</b></td>
                                                        </tr>
                                                        <tr>
                                                            <th class="text-center" scope="row">2</th>
                                                            <td>
                                                                <h6 class="mb-0">Web Design</h6>
                                                                <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                </p>
                                                            </td>
                                                            <td class="text-center">5</td>
                                                            <td class="text-center">$120.00</td>
                                                            <td class="text-center"><b>$2,880.00</b></td>
                                                        </tr>
                                                        <tr>
                                                            <th class="text-center" scope="row">3</th>
                                                            <td>
                                                                <h6 class="mb-0">Web Design</h6>
                                                                <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                </p>
                                                            </td>
                                                            <td class="text-center">5</td>
                                                            <td class="text-center">$120.00</td>
                                                            <td class="text-center"><b>$2,880.00</b></td>
                                                        </tr>
                                                        <tr>
                                                            <th class="text-center" scope="row">4</th>
                                                            <td>
                                                                <h6 class="mb-0">Web Design</h6>
                                                                <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                                                </p>
                                                            </td>
                                                            <td class="text-center">5</td>
                                                            <td class="text-center">$120.00</td>
                                                            <td class="text-center"><b>$2,880.00</b></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>                              
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <b class="text-danger">Notes:</b>
                                            <p class="mb-0">It is a long established fact that a reader will be distracted by the readable content of a page
                                                when looking
                                                at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,
                                                as opposed to using 'Content here, content here', making it look like readable English.</p>
                                        </div>
                                    </div>
                                    <div class="row mt-4 mb-3">
                                        <div class="offset-lg-8 col-lg-4">
                                            <div class="or-detail rounded">
                                                <div class="p-3">
                                                    <h5 class="mb-3">Order Details</h5>
                                                    <div class="mb-2">
                                                        <h6>Bank</h6>
                                                        <p>Threadneedle St</p>
                                                    </div>
                                                    <div class="mb-2">
                                                        <h6>Acc. No</h6>
                                                        <p>12333456789</p>
                                                    </div>
                                                    <div class="mb-2">
                                                        <h6>Due Date</h6>
                                                        <p>12 August 2020</p>
                                                    </div>
                                                    <div class="mb-2">
                                                        <h6>Sub Total</h6>
                                                        <p>$4597.50</p>
                                                    </div>
                                                    <div>
                                                        <h6>Discount</h6>
                                                        <p>10%</p>
                                                    </div>
                                                </div>
                                                <div class="ttl-amt py-2 px-3 d-flex justify-content-between align-items-center">
                                                    <h6>Total</h6>
                                                    <h3 class="text-primary font-weight-700">$4137.75</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                            
                                </div>
                            </div>
                        </div>                                    
                    </div>
                </div>
            </div>
        </div>
        <!-- Wrapper End-->
        <footer class="iq-footer">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                                    <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 text-right">
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>©</span> <a href="#" class="">POS Dash</a>.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Backend Bundle JavaScript -->
        <script src="assets/js/backend-bundle.min.js"></script>

        <!-- Table Treeview JavaScript -->
        <script src="assets/js/table-treeview.js"></script>

        <!-- Chart Custom JavaScript -->
        <script src="assets/js/customizer.js"></script>

        <!-- Chart Custom JavaScript -->
        <script async src="assets/js/chart-custom.js"></script>

        <!-- app JavaScript -->
        <script src="assets/js/app.js"></script>
    </body>

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/pages-invoice.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>