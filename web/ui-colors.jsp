

<!doctype html>
<html lang="en">

    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
        <link rel="stylesheet" href="../assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="../assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="../assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="../assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="../assets/vendor/remixicon/fonts/remixicon.css">  </head>
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
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">POS Admin Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Similar to the contextual text color classes, easily set the background of an element to any contextual class. Anchor components will darken on hover, just like the text classes. Background utilities <strong>do not set <code>color</code></strong>, so in some cases you?ll want to use <code>.text-*</code> utilities.</p>
                                    <div class="row mt-4">
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-primary pt-5 pb-5 text-center rounded"></p>
                                            <h6>Primary</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-secondary pt-5 pb-5 text-center rounded"></p>
                                            <h6>Secondary</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-success pt-5 pb-5 text-center rounded"></p>
                                            <h6>Success</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-danger pt-5 pb-5 text-center rounded"></p>
                                            <h6>Danger</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-warning pt-5 pb-5 text-center rounded"></p>
                                            <h6>Warning</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-info pt-5 pb-5 text-center rounded"></p>
                                            <h6>Info</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center mt-4">
                                            <p class="bg-light pt-5 pb-5 text-center rounded"></p>
                                            <h6>Light</h6>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center mt-4">
                                            <p class="bg-dark pt-5 pb-5 text-center rounded"></p>
                                            <h6>Dark</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">POS Admin Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Similar to the contextual text color classes, easily set the background of an element to any contextual class. Anchor components will darken on hover, just like the text classes. Background utilities <strong>do not set <code>color</code></strong>, so in some cases you?ll want to use <code>.text-*</code> utilities.</p>
                                    <div class="row mt-4">
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-primary-light pt-5 pb-5 text-center rounded font-size-18">Primary</p>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-secondary-light pt-5 pb-5 text-center rounded font-size-18">Secondary</p>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-success-light pt-5 pb-5 text-center rounded font-size-18">Success</p>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-danger-light pt-5 pb-5 text-center rounded font-size-18">Danger</p>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-warning-light pt-5 pb-5 text-center rounded font-size-18">Warning</p>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center">
                                            <p class="bg-info-light pt-5 pb-5 text-center rounded font-size-18">Info</p>
                                        </div>
                                        <div class="col-lg-2 col-md-6 text-center mt-4">
                                            <p class="bg-dark-light pt-5 pb-5 text-center rounded font-size-18">Dark</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">POS Admin Text Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Contextual text classes also work well on anchors with the provided hover and focus states. <strong>Note that the <code>.text-white</code> and <code>.text-muted</code> class has no additional link styling beyond underline.</strong></p>
                                    <p class="text-primary">.text-primary</p>
                                    <p class="text-secondary">.text-secondary</p>
                                    <p class="text-success">.text-success</p>
                                    <p class="text-danger">.text-danger</p>
                                    <p class="text-warning">.text-warning</p>
                                    <p class="text-bg-info">.text-bg-info</p>
                                    <p class="text-light bg-dark">.text-light</p>
                                    <p class="text-dark">.text-dark</p>
                                    <p class="text-muted">.text-muted</p>
                                    <p class="text-white bg-dark">.text-white</p>
                                    <p class="text-black-50">.text-black-50</p>
                                    <p class="text-white-50 bg-dark mb-0">.text-white-50</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">POS Admin Text Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Contextual text classes also work well on anchors with the provided hover and focus states. <strong>Note that the <code>.text-white</code> and <code>.text-muted</code> class has no additional link styling beyond underline.</strong></p>
                                    <p><a href="#" class="text-primary">Primary link</a></p>
                                    <p><a href="#" class="text-secondary">Secondary link</a></p>
                                    <p><a href="#" class="text-success">Success link</a></p>
                                    <p><a href="#" class="text-danger">Danger link</a></p>
                                    <p><a href="#" class="text-warning">Warning link</a></p>
                                    <p><a href="#" class="text-bg-info">bg-Info link</a></p>
                                    <p><a href="#" class="text-light bg-dark">Light link</a></p>
                                    <p><a href="#" class="text-dark">Dark link</a></p>
                                    <p><a href="#" class="text-muted">Muted link</a></p>
                                    <p class="mb-0"><a href="#" class="text-white bg-dark">White link</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">POS Admin Text Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Contextual text classes also work well on anchors with the provided hover and focus states. <strong>Note that the <code>.text-white</code> and <code>.text-muted</code> class has no additional link styling beyond underline.</strong></p>
                                    <p class="bg-primary-light pl-3 pr-3 pt-2 pb-2 rounded">Primary link</p>
                                    <p class="bg-secondary-light pl-3 pr-3 pt-2 pb-2 rounded">Secondary link</p>
                                    <p class="bg-success-light pl-3 pr-3 pt-2 pb-2 rounded">Success link</p>
                                    <p class="bg-danger-light pl-3 pr-3 pt-2 pb-2 rounded">Danger link</p>
                                    <p class="bg-warning-light pl-3 pr-3 pt-2 pb-2 rounded">Warning link</p>
                                    <p class="bg-info-light pl-3 pr-3 pt-2 pb-2 rounded">bg-Info link</p>
                                    <p class="bg-dark-light pl-3 pr-3 pt-2 pb-2 rounded mb-0">Dark link</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">POS Admin Text Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Contextual text classes also work well on anchors with the provided hover and focus states. <strong>Note that the <code>.text-white</code> and <code>.text-muted</code> class has no additional link styling beyond underline.</strong></p>
                                    <p><a href="#" class="bg-primary-light pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">Primary link</a></p>
                                    <p><a href="#" class="bg-secondary-light pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">Secondary link</a></p>
                                    <p><a href="#" class="bg-success-light pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">Success link</a></p>
                                    <p><a href="#" class="bg-danger-light pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">Danger link</a></p>
                                    <p><a href="#" class="bg-warning-light pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">Warning link</a></p>
                                    <p><a href="#" class="bg-info-light pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">bg-Info link</a></p>
                                    <p class="mb-0"><a href="#" class="dark pl-3 pr-3 pt-2 pb-2 rounded d-inline-block">Dark link</a></p>
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
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>©</span> <a href="#" class="">POS Admin</a>.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Backend Bundle JavaScript -->
        <script src="../assets/js/backend-bundle.min.js"></script>

        <!-- Table Treeview JavaScript -->
        <script src="../assets/js/table-treeview.js"></script>

        <!-- Chart Custom JavaScript -->
        <script src="../assets/js/customizer.js"></script>

        <!-- Chart Custom JavaScript -->
        <script async src="../assets/js/chart-custom.js"></script>

        <!-- app JavaScript -->
        <script src="../assets/js/app.js"></script>
    </body>

    
</html>