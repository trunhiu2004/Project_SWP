

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
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Tooltips</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Hover over the buttons below to see the four tooltips directions: top, right, bottom, and left. The data-placement attribute specifies the tooltip position.</p>
                                    <button type="button" class="btn btn-secondary mt-2" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
                                        Tooltip on top
                                    </button>
                                    <button type="button" class="btn btn-secondary mt-2" data-toggle="tooltip" data-placement="right" title="Tooltip on right">
                                        Tooltip on right
                                    </button>
                                    <button type="button" class="btn btn-secondary mt-2" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
                                        Tooltip on bottom
                                    </button>
                                    <button type="button" class="btn btn-secondary mt-2" data-toggle="tooltip" data-placement="left" title="Tooltip on left">
                                        Tooltip on left
                                    </button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Disabled elements</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Elements with the <code>disabled</code> attribute aren?t interactive, meaning users cannot focus, hover, or click them to trigger a tooltip (or popover). As a workaround, you?ll want to trigger the tooltip from a wrapper <code>&lt;div&gt;</code> or <code>&lt;span&gt;</code>, ideally made keyboard-focusable using <code>tabindex="0"</code>, and override the <code>pointer-events</code> on the disabled element.</p>
                                    <span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Disabled tooltip">
                                        <button class="btn btn-primary" style="pointer-events: none;" type="button" disabled>Disabled button</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Tooltips</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Hover over the buttons below to see the four tooltips directions: top, right, bottom, and left Using background colors</p>
                                    <button type="button" class="btn btn-primary mt-2" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
                                        Tooltip on top
                                    </button>
                                    <button type="button" class="btn btn-success mt-2" data-toggle="tooltip" data-placement="right" title="Tooltip on right">
                                        Tooltip on right
                                    </button>
                                    <button type="button" class="btn btn-danger mt-2" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
                                        Tooltip on bottom
                                    </button>
                                    <button type="button" class="btn btn-info mt-2" data-toggle="tooltip" data-placement="left" title="Tooltip on left">
                                        Tooltip on left
                                    </button>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Tooltips</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Hover over the buttons below to see the four tooltips directions: top, right, bottom, and left Using Light background colors</p>
                                    <button type="button" class="btn iq-bg-primary mt-2 px-0 mr-2" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
                                        Tooltip on top
                                    </button>
                                    <button type="button" class="btn iq-bg-success mt-2 px-0 mx-2" data-toggle="tooltip" data-placement="right" title="Tooltip on right">
                                        Tooltip on right
                                    </button>
                                    <button type="button" class="btn iq-bg-danger mt-2 px-0 mx-2" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
                                        Tooltip on bottom
                                    </button>
                                    <button type="button" class="btn iq-bg-info mt-2 px-0 mx-2" data-toggle="tooltip" data-placement="left" title="Tooltip on left">
                                        Tooltip on left
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Hover elements</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Hover over the buttons below to see the tooltip.</p>
                                    <!-- HTML to write -->
                                    <a href="#" data-toggle="tooltip" title="Some tooltip text!">Hover over me</a>
                                    <!-- Generated markup by the plugin -->
                                    <div class="tooltip bs-tooltip-top" role="tooltip">
                                        <div class="arrow"></div>
                                        <div class="tooltip-inner">
                                            Some tooltip text!
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