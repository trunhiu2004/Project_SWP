

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-radio.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>  </head>
        <body class=" color-light ">
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
                        <div class="col-sm-12 col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Default Radio Buttons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="radio d-inline-block mr-2">
                                        <input type="radio" name="bsradio" id="radio1" checked="">
                                        <label for="radio1">Active</label>
                                    </div>
                                    <div class="radio d-inline-block mr-2">
                                        <input type="radio" name="bsradio" id="radio2">
                                        <label for="radio2">Inactive</label>
                                    </div>
                                    <div class="radio d-inline-block mr-2">
                                        <input type="radio" name="bsradio1" id="radio3" disabled="" checked="">
                                        <label for="radio3">Active - Disabled</label>
                                    </div>
                                    <div class="radio d-inline-block mr-2">
                                        <input type="radio" name="bsradio1" id="radio4" disabled="">
                                        <label for="radio3">Inactive - Disabled</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Custom Colored Radio Buttons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-radio custom-radio-color custom-control-inline">
                                        <input type="radio" id="customRadio01" name="customRadio-11" class="custom-control-input bg-primary">
                                        <label class="custom-control-label" for="customRadio01"> Primary </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color custom-control-inline">
                                        <input type="radio" id="customRadio02" name="customRadio-11" class="custom-control-input bg-success">
                                        <label class="custom-control-label" for="customRadio02"> Success </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color custom-control-inline">
                                        <input type="radio" id="customRadio03" name="customRadio-11" class="custom-control-input bg-danger">
                                        <label class="custom-control-label" for="customRadio03"> Danger </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color custom-control-inline">
                                        <input type="radio" id="customRadio04" name="customRadio-11" class="custom-control-input bg-warning">
                                        <label class="custom-control-label" for="customRadio04"> Warning </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color custom-control-inline">
                                        <input type="radio" id="customRadio05" name="customRadio-11" class="custom-control-input bg-dark">
                                        <label class="custom-control-label" for="customRadio05"> Dark </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color custom-control-inline">
                                        <input type="radio" id="customRadio06" name="customRadio-11" class="custom-control-input bg-info">
                                        <label class="custom-control-label" for="customRadio06"> Info </label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Custom Radio Buttons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadio6" name="customRadio-1" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio6"> One </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadio7" name="customRadio-1" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio7"> Two </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadio8" name="customRadio-1" class="custom-control-input" checked="">
                                        <label class="custom-control-label" for="customRadio8"> Three </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadio-8" name="customRadio-2" class="custom-control-input" checked="">
                                        <label class="custom-control-label" for="customRadio-8"> Four Checked </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadio9" name="customRadio-3" class="custom-control-input" disabled="">
                                        <label class="custom-control-label" for="customRadio9"> Five disabled</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input type="radio" id="customRadio10" name="customRadio-4" class="custom-control-input" disabled="" checked="">
                                        <label class="custom-control-label" for="customRadio10"> Six Selected and  disabled</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Colored Radio Buttons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-radio custom-radio-color-checked custom-control-inline">
                                        <input type="radio" id="customRadio-1" name="customRadio-10" class="custom-control-input bg-primary">
                                        <label class="custom-control-label" for="customRadio-1"> Primary </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color-checked custom-control-inline">
                                        <input type="radio" id="customRadio-2" name="customRadio-10" class="custom-control-input bg-success">
                                        <label class="custom-control-label" for="customRadio-2"> Success </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color-checked custom-control-inline">
                                        <input type="radio" id="customRadio-3" name="customRadio-10" class="custom-control-input bg-danger">
                                        <label class="custom-control-label" for="customRadio-3"> Danger </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color-checked custom-control-inline">
                                        <input type="radio" id="customRadio-4" name="customRadio-10" class="custom-control-input bg-warning">
                                        <label class="custom-control-label" for="customRadio-4"> Warning </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color-checked custom-control-inline">
                                        <input type="radio" id="customRadio-5" name="customRadio-10" class="custom-control-input bg-dark">
                                        <label class="custom-control-label" for="customRadio-5"> Dark </label>
                                    </div>
                                    <div class="custom-control custom-radio custom-radio-color-checked custom-control-inline">
                                        <input type="radio" id="customRadio-6" name="customRadio-10" class="custom-control-input bg-info">
                                        <label class="custom-control-label" for="customRadio-6"> Info </label>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-radio.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>