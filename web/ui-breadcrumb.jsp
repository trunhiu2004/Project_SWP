

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-breadcrumb.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:36 GMT -->
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
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Breadcrumb</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Use the items in order to programatically generate the breadcrumb links.use class <code>.breadcrumb to ol</code></p>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item active" aria-current="page">Home</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Library</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">Library</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Data</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Breadcrumb With Icon</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Use the items in order to programatically generate the breadcrumb links.use class <code>.breadcrumb to ol</code> with Icon</p>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item active" aria-current="page"><i class="ri-home-4-line mr-1 float-left"></i>Home</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Library</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">Library</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Data</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Breadcrumb</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>use class <code>.breadcrumb .bg-primary</code></p>
                                    <nav aria-label="breadcrumb ">
                                        <ol class="breadcrumb bg-primary">
                                            <li class="breadcrumb-item active text-white" aria-current="page">Home</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb bg-primary">
                                            <li class="breadcrumb-item"><a href="#" class="text-white">Home</a></li>
                                            <li class="breadcrumb-item active text-white" aria-current="page">Library</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb bg-primary mb-0">
                                            <li class="breadcrumb-item"><a href="#" class="text-white">Home</a></li>
                                            <li class="breadcrumb-item"><a href="#" class="text-white">Library</a></li>
                                            <li class="breadcrumb-item active text-white" aria-current="page">Data</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Breadcrumb With Icon</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>use class <code>.breadcrumb .bg-primary </code> With Icon.</p>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb bg-primary">
                                            <li class="breadcrumb-item active text-white" aria-current="page"><i class="ri-home-4-line mr-1 float-left"></i>Home</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb bg-primary">
                                            <li class="breadcrumb-item"><a href="#" class="text-white"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item active text-white" aria-current="page">Library</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb bg-primary mb-0">
                                            <li class="breadcrumb-item"><a href="#" class="text-white"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item"><a href="#" class="text-white">Library</a></li>
                                            <li class="breadcrumb-item active text-white" aria-current="page">Data</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Breadcrumb With Icon</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>use class <code>.breadcrumb .iq-bg-primary</code></p>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb iq-bg-primary">
                                            <li class="breadcrumb-item active" aria-current="page"><i class="ri-home-4-line mr-1 float-left"></i>Home</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb iq-bg-primary">
                                            <li class="breadcrumb-item"><a href="#"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Library</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb iq-bg-primary mb-0">
                                            <li class="breadcrumb-item"><a href="#"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item"><a href="#">Library</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Data</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Breadcrumb With Icon</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>use class <code>.breadcrumb .iq-bg-danger</code></p>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb iq-bg-danger">
                                            <li class="breadcrumb-item active" aria-current="page"><i class="ri-home-4-line mr-1 float-left"></i>Home</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb iq-bg-danger">
                                            <li class="breadcrumb-item"><a href="#" class="text-danger"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Library</li>
                                        </ol>
                                    </nav>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb iq-bg-danger mb-0">
                                            <li class="breadcrumb-item"><a href="#" class="text-danger"><i class="ri-home-4-line mr-1 float-left"></i>Home</a></li>
                                            <li class="breadcrumb-item"><a href="#" class="text-danger">Library</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Data</li>
                                        </ol>
                                    </nav>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-breadcrumb.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:36 GMT -->
</html>