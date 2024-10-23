

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/table-tree.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
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
                        <div class="col-lg-6">
                            <div class="card card-block card-stretch card-height">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Avatar Sizing</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="tree-table-1" class="table table-hover table-bordered iq-bg-white tree">
                                            <thead class="bg-white">
                                                <tr>
                                                    <th>Demo 1</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr data-id="1" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 1</td>
                                                </tr>
                                                <tr data-id="2" data-parent="1" data-level="2">
                                                    <td data-column="name">Data 1.1</td>
                                                </tr>
                                                <tr data-id="3" data-parent="2" data-level="3">
                                                    <td data-column="name">Data 1.2</td>
                                                </tr>
                                                <tr data-id="4" data-parent="3" data-level="4">
                                                    <td data-column="name">Data 1.3</td>
                                                </tr>
                                                <tr data-id="6" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 2</td>
                                                </tr>
                                                <tr data-id="7" data-parent="6" data-level="2">
                                                    <td data-column="name">Data 2.1</td>
                                                </tr>
                                                <tr data-id="8" data-parent="7" data-level="3">
                                                    <td data-column="name">Data 2.2</td>
                                                </tr>
                                                <tr data-id="9" data-parent="8" data-level="4">
                                                    <td data-column="name">Data 2.3</td>
                                                </tr>
                                                <tr data-id="10" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 3</td>
                                                </tr>
                                                <tr data-id="11" data-parent="10" data-level="2">
                                                    <td data-column="name">Data 3.1</td>
                                                </tr>
                                                <tr data-id="12" data-parent="11" data-level="3">
                                                    <td data-column="name">Data 3.2</td>
                                                </tr>
                                                <tr data-id="13" data-parent="12" data-level="4">
                                                    <td data-column="name">Data 3.3</td>
                                                </tr>
                                                <tr data-id="14" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 4</td>
                                                </tr>
                                                <tr data-id="15" data-parent="14" data-level="2">
                                                    <td data-column="name">Data 4.1</td>
                                                </tr>
                                                <tr data-id="16" data-parent="15" data-level="3">
                                                    <td data-column="name">Data 4.2</td>
                                                </tr>
                                                <tr data-id="17" data-parent="16" data-level="4">
                                                    <td data-column="name">Data 4.3</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card card-block card-stretch card-height">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Table Treeview</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="tree-table-2" class="table table-hover table-bordered iq-bg-dark  tree">
                                            <thead class="bg-dark">
                                                <tr>
                                                    <th>Demo 2</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr data-id="1" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 1</td>
                                                </tr>
                                                <tr data-id="2" data-parent="1" data-level="2">
                                                    <td data-column="name">Data 1.1</td>
                                                </tr>
                                                <tr data-id="3" data-parent="2" data-level="3">
                                                    <td data-column="name">Data 1.2</td>
                                                </tr>
                                                <tr data-id="4" data-parent="3" data-level="4">
                                                    <td data-column="name">Data 1.3</td>
                                                </tr>
                                                <tr data-id="6" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 2</td>
                                                </tr>
                                                <tr data-id="7" data-parent="6" data-level="2">
                                                    <td data-column="name">Data 2.1</td>
                                                </tr>
                                                <tr data-id="8" data-parent="7" data-level="3">
                                                    <td data-column="name">Data 2.2</td>
                                                </tr>
                                                <tr data-id="9" data-parent="8" data-level="4">
                                                    <td data-column="name">Data 2.3</td>
                                                </tr>
                                                <tr data-id="10" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 3</td>
                                                </tr>
                                                <tr data-id="11" data-parent="10" data-level="2">
                                                    <td data-column="name">Data 3.1</td>
                                                </tr>
                                                <tr data-id="12" data-parent="11" data-level="3">
                                                    <td data-column="name">Data 3.2</td>
                                                </tr>
                                                <tr data-id="13" data-parent="12" data-level="4">
                                                    <td data-column="name">Data 3.3</td>
                                                </tr>
                                                <tr data-id="14" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 4</td>
                                                </tr>
                                                <tr data-id="15" data-parent="14" data-level="2">
                                                    <td data-column="name">Data 4.1</td>
                                                </tr>
                                                <tr data-id="16" data-parent="15" data-level="3">
                                                    <td data-column="name">Data 4.2</td>
                                                </tr>
                                                <tr data-id="17" data-parent="16" data-level="4">
                                                    <td data-column="name">Data 4.3</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card card-block card-stretch card-height">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Tree view</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="tree-table-3" class="table table-hover table-bordered iq-bg-primary  tree">
                                            <thead class="bg-primary">
                                                <tr>
                                                    <th>Demo 3</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr data-id="1" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 1</td>
                                                </tr>
                                                <tr data-id="2" data-parent="1" data-level="2">
                                                    <td data-column="name">Data 1.1</td>
                                                </tr>
                                                <tr data-id="3" data-parent="2" data-level="3">
                                                    <td data-column="name">Data 1.2</td>
                                                </tr>
                                                <tr data-id="4" data-parent="3" data-level="4">
                                                    <td data-column="name">Data 1.3</td>
                                                </tr>
                                                <tr data-id="6" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 2</td>
                                                </tr>
                                                <tr data-id="7" data-parent="6" data-level="2">
                                                    <td data-column="name">Data 2.1</td>
                                                </tr>
                                                <tr data-id="8" data-parent="7" data-level="3">
                                                    <td data-column="name">Data 2.2</td>
                                                </tr>
                                                <tr data-id="9" data-parent="8" data-level="4">
                                                    <td data-column="name">Data 2.3</td>
                                                </tr>
                                                <tr data-id="10" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 3</td>
                                                </tr>
                                                <tr data-id="11" data-parent="10" data-level="2">
                                                    <td data-column="name">Data 3.1</td>
                                                </tr>
                                                <tr data-id="12" data-parent="11" data-level="3">
                                                    <td data-column="name">Data 3.2</td>
                                                </tr>
                                                <tr data-id="13" data-parent="12" data-level="4">
                                                    <td data-column="name">Data 3.3</td>
                                                </tr>
                                                <tr data-id="14" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 4</td>
                                                </tr>
                                                <tr data-id="15" data-parent="14" data-level="2">
                                                    <td data-column="name">Data 4.1</td>
                                                </tr>
                                                <tr data-id="16" data-parent="15" data-level="3">
                                                    <td data-column="name">Data 4.2</td>
                                                </tr>
                                                <tr data-id="17" data-parent="16" data-level="4">
                                                    <td data-column="name">Data 4.3</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card card-block card-stretch card-height">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Avatar Sizing</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="tree-table-4" class="table table-hover table-bordered iq-bg-success  tree">
                                            <thead class="bg-success">
                                                <tr>
                                                    <th>Demo 4</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr data-id="1" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 1</td>
                                                </tr>
                                                <tr data-id="2" data-parent="1" data-level="2">
                                                    <td data-column="name">Data 1.1</td>
                                                </tr>
                                                <tr data-id="3" data-parent="2" data-level="3">
                                                    <td data-column="name">Data 1.2</td>
                                                </tr>
                                                <tr data-id="4" data-parent="3" data-level="4">
                                                    <td data-column="name">Data 1.3</td>
                                                </tr>
                                                <tr data-id="6" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 2</td>
                                                </tr>
                                                <tr data-id="7" data-parent="6" data-level="2">
                                                    <td data-column="name">Data 2.1</td>
                                                </tr>
                                                <tr data-id="8" data-parent="7" data-level="3">
                                                    <td data-column="name">Data 2.2</td>
                                                </tr>
                                                <tr data-id="9" data-parent="8" data-level="4">
                                                    <td data-column="name">Data 2.3</td>
                                                </tr>
                                                <tr data-id="10" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 3</td>
                                                </tr>
                                                <tr data-id="11" data-parent="10" data-level="2">
                                                    <td data-column="name">Data 3.1</td>
                                                </tr>
                                                <tr data-id="12" data-parent="11" data-level="3">
                                                    <td data-column="name">Data 3.2</td>
                                                </tr>
                                                <tr data-id="13" data-parent="12" data-level="4">
                                                    <td data-column="name">Data 3.3</td>
                                                </tr>
                                                <tr data-id="14" data-parent="0" data-level="1">
                                                    <td data-column="name">Data 4</td>
                                                </tr>
                                                <tr data-id="15" data-parent="14" data-level="2">
                                                    <td data-column="name">Data 4.1</td>
                                                </tr>
                                                <tr data-id="16" data-parent="15" data-level="3">
                                                    <td data-column="name">Data 4.2</td>
                                                </tr>
                                                <tr data-id="17" data-parent="16" data-level="4">
                                                    <td data-column="name">Data 4.3</td>
                                                </tr>
                                            </tbody>
                                        </table>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/table-tree.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>