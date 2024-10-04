

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-chechbox.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include> </head>
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
            </div>      
            <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Basic Checkbox</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="checkbox d-inline-block mr-3">
                                        <input type="checkbox" class="checkbox-input" id="checkbox1">
                                        <label for="checkbox1">Primary-Inactive</label>
                                    </div>
                                    <div class="checkbox d-inline-block mr-3">
                                        <input type="checkbox" class="checkbox-input" id="checkbox2" checked="">
                                        <label for="checkbox2">Primary / Active</label>
                                    </div>
                                    <div class="checkbox d-inline-block mr-3">
                                        <input type="checkbox" class="checkbox-input" id="checkbox3" disabled="">
                                        <label for="checkbox3">Disable / Inactive</label>
                                    </div>
                                    <div class="checkbox d-inline-block mr-3">
                                        <input type="checkbox" class="checkbox-input" id="checkbox4" checked="" disabled="">
                                        <label for="checkbox4">Active / Disable</label>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Custom Checkbox</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck5">
                                        <label class="custom-control-label" for="customCheck5">Primary / Inactive</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck6" Checked="">
                                        <label class="custom-control-label" for="customCheck6">Primary - active</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck7"  disabled="">
                                        <label class="custom-control-label" for="customCheck7">Primary - inactive - disabled</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck8"  checked="" disabled="">
                                        <label class="custom-control-label" for="customCheck8">Primary - active - disabled</label>
                                    </div>
                                </div>
                            </div>                    
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-checkbox custom-checkbox-color-check custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-primary" id="customCheck-1" checked="">
                                        <label class="custom-control-label" for="customCheck-1"> Primary</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color-check custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-success" id="customCheck-2" checked="">
                                        <label class="custom-control-label" for="customCheck-2">Success</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color-check custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-danger" id="customCheck-3" checked="">
                                        <label class="custom-control-label" for="customCheck-3">Danger</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color-check custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-warning" id="customCheck-4" checked="">
                                        <label class="custom-control-label" for="customCheck-4">Warning</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color-check custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-dark" id="customCheck-5" checked="">
                                        <label class="custom-control-label" for="customCheck-5">Dark</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color-check custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-info" id="customCheck-6" checked="">
                                        <label class="custom-control-label" for="customCheck-6">Info</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Custom Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-checkbox custom-checkbox-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-primary" id="customCheck-11">
                                        <label class="custom-control-label" for="customCheck-11">Primary </label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-success" id="customCheck-22">
                                        <label class="custom-control-label" for="customCheck-22">Success</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-danger" id="customCheck-33">
                                        <label class="custom-control-label" for="customCheck-33">Danger</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-warning" id="customCheck-44">
                                        <label class="custom-control-label" for="customCheck-44">Warning</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-dark" id="customCheck-55">
                                        <label class="custom-control-label" for="customCheck-55">Dark</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-checkbox-color custom-control-inline">
                                        <input type="checkbox" class="custom-control-input bg-info" id="customCheck-66">
                                        <label class="custom-control-label" for="customCheck-66"> Info</label>
                                    </div>
                                </div>
                            </div> 
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Change Icon</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-10" checked="">
                                        <label class="custom-control-label" for="customCheck-10"><i class="fa fa-music"></i>Music</label>
                                    </div>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-20" checked="">
                                        <label class="custom-control-label" for="customCheck-20"><i class="fa fa-commenting-o"></i>SMS</label>
                                    </div>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-30" checked="">
                                        <label class="custom-control-label" for="customCheck-30"><i class="fa fa-times"></i>Cancel</label>
                                    </div>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-40" checked="">
                                        <label class="custom-control-label" for="customCheck-40"><i class="fa fa-file"></i>File</label>
                                    </div>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-50" checked="">
                                        <label class="custom-control-label" for="customCheck-50"><i class="fa fa-bold"></i>Bold</label>
                                    </div>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-60" checked="">
                                        <label class="custom-control-label" for="customCheck-60"><i class="fa fa-map-marker"></i>Location</label>
                                    </div>
                                    <div class="custom-control custom-checkbox checkbox-icon custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-70" checked="">
                                        <label class="custom-control-label" for="customCheck-70"><i class="fa fa-camera"></i>Camera</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Boolean Checkbox</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate, ex ac venenatis mollis, diam nibh finibus leo</p>
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-t" checked="">
                                        <label class="custom-control-label" for="customCheck-t">True</label>
                                    </div>
                                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input" id="customCheck-f">
                                        <label class="custom-control-label" for="customCheck-f">False</label>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/form-chechbox.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>