

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-switch.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
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
                                        <h4 class="card-title">Basic Switch</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <div class="custom-control custom-switch custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch2" checked="">
                                        <label class="custom-control-label" for="customSwitch2">Active Switch</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customSwitch1">
                                        <label class="custom-control-label" for="customSwitch1">Inactive Switch </label>
                                    </div>
                                    <div class="custom-control custom-switch custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" disabled checked="" id="customSwitch3">
                                        <label class="custom-control-label" for="customSwitch3">Disabled Active Switch</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" disabled id="customSwitch4">
                                        <label class="custom-control-label" for="customSwitch4">Disabled Inactive Switch</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Text</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <div class="custom-control custom-switch custom-switch-text custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Primary </p>
                                            <input type="checkbox" class="custom-control-input" id="customSwitch-11" checked="">
                                            <label class="custom-control-label" for="customSwitch-11" data-on-label="On" data-off-label="Off">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-text custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Success </p>
                                            <input type="checkbox" class="custom-control-input bg-success" id="customSwitch-22" checked="">
                                            <label class="custom-control-label" for="customSwitch-22" data-on-label="Tr" data-off-label="Fal">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-text custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Danger </p>
                                            <input type="checkbox" class="custom-control-input bg-danger" id="customSwitch-33" checked="">
                                            <label class="custom-control-label" for="customSwitch-33" data-on-label="Yes" data-off-label="No">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <div class="custom-control custom-switch custom-switch-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-primary" id="customSwitch01" checked="">
                                        <label class="custom-control-label" for="customSwitch01">Primary</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-success" id="customSwitch02" checked="">
                                        <label class="custom-control-label" for="customSwitch02">Success</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-danger" id="customSwitch03" checked="">
                                        <label class="custom-control-label" for="customSwitch03">Danger</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-waring" id="customSwitch04" checked="">
                                        <label class="custom-control-label" for="customSwitch04">Waring</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-dark" id="customSwitch05" checked="">
                                        <label class="custom-control-label" for="customSwitch05">Dark</label>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-info" id="customSwitch06" checked="">
                                        <label class="custom-control-label" for="customSwitch06">Info</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Icon</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam
                                        nibh finibus leo</p>
                                    <div class="custom-control custom-switch custom-switch-icon custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Primary </p>
                                            <input type="checkbox" class="custom-control-input" id="customSwitch-1" checked="">
                                            <label class="custom-control-label" for="customSwitch-1">
                                                <span class="switch-icon-left"><i class="fa fa-check"></i></span>
                                                <span class="switch-icon-right"><i class="fa fa-check"></i></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-icon custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Success </p>
                                            <input type="checkbox" class="custom-control-input bg-success" id="customSwitch-2" checked="">
                                            <label class="custom-control-label" for="customSwitch-2">
                                                <span class="switch-icon-left"><i class="fa fa-check"></i></span>
                                                <span class="switch-icon-right"><i class="fa fa-check"></i></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-icon custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Danger </p>
                                            <input type="checkbox" class="custom-control-input bg-danger" id="customSwitch-3" checked="">
                                            <label class="custom-control-label" for="customSwitch-3">
                                                <span class="switch-icon-left"><i class="fa fa-times"></i></span>
                                                <span class="switch-icon-right"><i class="fa fa-times"></i></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-icon custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Warning </p>
                                            <input type="checkbox" class="custom-control-input bg-warning" id="customSwitch-4" checked="">
                                            <label class="custom-control-label" for="customSwitch-4">
                                                <span class="switch-icon-left"><i class="fa fa-exclamation-triangle"></i></span>
                                                <span class="switch-icon-right"><i class="fa fa-exclamation-triangle"></i></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-icon custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Dark </p>
                                            <input type="checkbox" class="custom-control-input bg-dark" id="customSwitch-5" checked="">
                                            <label class="custom-control-label" for="customSwitch-5">
                                                <span class="switch-icon-left"><i class="fa fa-thumb-tack"></i></span>
                                                <span class="switch-icon-right"><i class="fa fa-thumb-tack"></i></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="custom-control custom-switch custom-switch-icon custom-switch-color custom-control-inline">
                                        <div class="custom-switch-inner">
                                            <p class="mb-0"> Info </p>
                                            <input type="checkbox" class="custom-control-input bg-info" id="customSwitch-6" checked="">
                                            <label class="custom-control-label" for="customSwitch-6">
                                                <span class="switch-icon-left"><i class="fa fa-info"></i></span>
                                                <span class="switch-icon-right"><i class="fa fa-info"></i></span>
                                            </label>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-switch.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>