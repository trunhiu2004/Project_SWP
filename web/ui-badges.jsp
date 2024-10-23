

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-badges.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:36 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
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
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-12 col-lg-6">
                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <div class="header-title">
                                                <h4 class="card-title">Badge</h4>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p>Badges scale to match the size of the immediate parent element by using relative font sizing and <code>em</code> units.</p>
                                            <h1 class="mt-2">Example heading <span class="badge  badge-primary">New</span></h1>
                                            <h2 class="mt-2">Example heading <span class="badge badge-secondary">New</span></h2>
                                            <h3 class="mt-2">Example heading<span class="badge badge-success ml-1">New</span>
                                            </h3>
                                            <h4 class="mt-2">Example heading <span class="badge badge-danger">New</span></h4>
                                            <h5 class="mt-2">Example heading <span class="badge badge-warning">New</span></h5>
                                            <h6 class="mb-0">Example heading <span class="badge badge-info">New</span></h6>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <div class="header-title">
                                                <h4 class="card-title">Button Badges</h4>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p>Badges can be used as part of buttons to provide a counter.</p>
                                            <button type="button" class="btn mb-1 btn-primary">
                                                Notifications <span class="badge badge-light ml-2">4</span>
                                            </button>
                                            <button type="button" class="btn mb-1 btn-success">
                                                Notifications <span class="badge badge-light ml-2">4</span>
                                            </button>
                                            <button type="button" class="btn mb-1 btn-danger">
                                                Notifications <span class="badge badge-light ml-2">4</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <div class="header-title">
                                                <h4 class="card-title">Button Light background Badges</h4>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p>Badges can be used as part of buttons to provide a counter.</p>
                                            <button type="button" class="btn mb-1 btn-outline-primary">
                                                Notifications <span class="badge badge-primary ml-2">4</span>
                                            </button>
                                            <button type="button" class="btn mb-1 btn-outline-success">
                                                Notifications <span class="badge badge-success ml-2">4</span>
                                            </button>
                                            <button type="button" class="btn mb-1 btn-outline-danger">
                                                Notifications <span class="badge badge-danger ml-2">4</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <div class="header-title">
                                                <h4 class="card-title">Button Border Badges</h4>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p>Badges can be used as part of buttons to provide a counter.</p>
                                            <button type="button" class="btn mb-1 bg-primary-light">
                                                Notifications <span class="badge badge-primary ml-2">4</span>
                                            </button>
                                            <button type="button" class="btn mb-1 bg-success-light">
                                                Notifications <span class="badge badge-success ml-2">4</span>
                                            </button>
                                            <button type="button" class="btn mb-1 bg-danger-light">
                                                Notifications <span class="badge badge-danger ml-2">4</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-lg-6">
                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <div class="header-title">
                                                <h4 class="card-title">Contextual variations</h4>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-2">Add any of the below mentioned modifier classes to change the appearance of a badge.</p>
                                            <span class="mt-2 badge badge-primary">Primary</span>
                                            <span class="mt-2 badge badge-secondary">Secondary</span>
                                            <span class="mt-2 badge badge-success">Success</span>
                                            <span class="mt-2 badge badge-danger">Danger</span>
                                            <span class="mt-2 badge badge-warning">Warning</span>
                                            <span class="mt-2 badge badge-info">Info</span>
                                            <span class="mt-2 badge badge-light">Light</span>
                                            <span class="mt-2 badge badge-dark">Dark</span>
                                            <h5 class="card-title mt-4">Pill badges</h5>
                                            <p class="mb-2">Use the <code>.badge-pill</code> modifier class to make badges more rounded (with a larger <code>border-radius</code> and additional horizontal <code>padding</code>). Useful if you miss the badges from v3.</p>
                                            <span class="mt-2 badge badge-pill badge-primary">Primary</span>
                                            <span class="mt-2 badge badge-pill badge-secondary">Secondary</span>
                                            <span class="mt-2 badge badge-pill badge-success">Success</span>
                                            <span class="mt-2 badge badge-pill badge-danger">Danger</span>
                                            <span class="mt-2 badge badge-pill badge-warning">Warning</span>
                                            <span class="mt-2 badge badge-pill badge-info">Info</span>
                                            <span class="mt-2 badge badge-pill badge-light">Light</span>
                                            <span class="mt-2 badge badge-pill badge-dark">Dark</span>
                                            <h5 class="card-title mt-4">Links</h5>
                                            <p class="mb-2">Using the contextual <code>.badge-*</code> classes on an <code>&lt;a&gt;</code> element quickly provide <em>actionable</em> badges with hover and focus states.</p>
                                            <a href="#" class="mt-2 badge badge-primary">Primary</a>
                                            <a href="#" class="mt-2 badge badge-secondary">Secondary</a>
                                            <a href="#" class="mt-2 badge badge-success">Success</a>
                                            <a href="#" class="mt-2 badge badge-danger">Danger</a>
                                            <a href="#" class="mt-2 badge badge-warning">Warning</a>
                                            <a href="#" class="mt-2 badge badge-info">Info</a>
                                            <a href="#" class="mt-2 badge badge-light">Light</a>
                                            <a href="#" class="mt-2 badge badge-dark">Dark</a>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <div class="header-title">
                                                <h4 class="card-title">Contextual variations Border</h4>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-2">Add any of the below mentioned modifier classes to change the appearance of a badge.</p>
                                            <span class="mt-2 badge border border-primary text-primary mt-2">Primary</span>
                                            <span class="mt-2 badge border border-secondary text-secondary mt-2">Secondary</span>
                                            <span class="mt-2 badge border border-success text-success mt-2">Success</span>
                                            <span class="mt-2 badge border border-danger text-danger mt-2">Danger</span>
                                            <span class="mt-2 badge border border-warning text-warning mt-2">Warning</span>
                                            <span class="mt-2 badge border border-info text-info mt-2">Info</span>
                                            <span class="mt-2 badge border border-light text-light mt-2">Light</span>
                                            <span class="mt-2 badge border border-dark text-dark mt-2">Dark</span>
                                            <h5 class="card-title mt-4">Pill badges</h5>
                                            <p class="mb-2">Use the <code>.badge-pill</code> modifier class to make badges more rounded (with a larger <code>border-radius</code> and additional horizontal <code>padding</code>). Useful if you miss the badges from v3.</p>
                                            <span class="mt-2 badge badge-pill border border-primary text-primary">Primary</span>
                                            <span class="mt-2 badge badge-pill border border-secondary text-secondary">Secondary</span>
                                            <span class="mt-2 badge badge-pill border border-success text-success">Success</span>
                                            <span class="mt-2 badge badge-pill border border-danger text-danger">Danger</span>
                                            <span class="mt-2 badge badge-pill border border-warning text-warning">Warning</span>
                                            <span class="mt-2 badge badge-pill border border-info text-info">Info</span>
                                            <span class="mt-2 badge badge-pill border border-light text-light">Light</span>
                                            <span class="mt-2 badge badge-pill border border-dark text-dark">Dark</span>
                                            <h5 class="card-title mt-4">Links</h5>
                                            <p class="mb-2">Using the contextual <code>.badge-*</code> classes on an <code>&lt;a&gt;</code> element quickly provide <em>actionable</em> badges with hover and focus states.</p>
                                            <a href="#" class="mt-2 badge border border-primary text-primary">Primary</a>
                                            <a href="#" class="mt-2 badge border border-secondary text-secondary">Secondary</a>
                                            <a href="#" class="mt-2 badge border border-success text-success">Success</a>
                                            <a href="#" class="mt-2 badge border border-danger text-danger">Danger</a>
                                            <a href="#" class="mt-2 badge border border-warning text-warning">Warning</a>
                                            <a href="#" class="mt-2 badge border border-info text-info">Info</a>
                                            <a href="#" class="mt-2 badge border border-light text-light">Light</a>
                                            <a href="#" class="mt-2 badge border border-dark text-dark">Dark</a>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-badges.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:36 GMT -->
</html>