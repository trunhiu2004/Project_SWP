

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-pagination.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:42 GMT -->
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
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Pagination Examples</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>In addition, as pages likely have more than one such navigation section, it?s advisable to provide a descriptive <code>aria-label</code> for the <code>&lt;nav&gt;</code> to reflect its purpose. For example, if the pagination component is used to navigate between a set of search results, an appropriate label could be <code>aria-label="Search results pages"</code>.</p>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination mb-0">
                                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Disabled and active states</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Pagination links are customizable for different circumstances. Use <code>.disabled</code> for links that appear un-clickable and <code>.active</code> to indicate the current page.</p>
                                    <p>While the <code>.disabled</code> class uses <code>pointer-events: none</code> to <em>try</em> to disable the link functionality of <code>&lt;a&gt;</code>s, that CSS property is not yet standardized and doesn?t account for keyboard navigation. As such, you should always add <code>tabindex="-1"</code> on disabled links and use custom JavaScript to fully disable their functionality.</p>
                                    <nav aria-label="...">
                                        <ul class="pagination">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item active" aria-current="page">
                                                <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                    <p>You can optionally swap out active or disabled anchors for <code>&lt;span&gt;</code>, or omit the anchor in the case of the prev/next arrows, to remove click functionality and prevent keyboard focus while retaining intended styles.</p>
                                    <nav aria-label="...">
                                        <ul class="pagination">
                                            <li class="page-item disabled">
                                                <span class="page-link">Previous</span>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item active" aria-current="page">
                                                <span class="page-link">
                                                    2
                                                    <span class="sr-only">(current)</span>
                                                </span>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Pagination With Color</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>In addition, as pages likely have more than one such navigation section, it?s advisable to provide a descriptive <code>aria-label</code> for the <code>&lt;nav&gt;</code> to reflect its purpose. For example, if the pagination component is used to navigate between a set of search results, an appropriate label could be <code>aria-label="Search results pages"</code>.</p>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link border-primary bg-primary text-white" href="#">Previous</a></li>
                                            <li class="page-item"><a class="page-link border-primary bg-primary text-white" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link border-primary bg-primary text-white" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link border-primary bg-primary text-white" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link border-primary bg-primary text-white" href="#">Next</a></li>
                                        </ul>
                                    </nav>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link border-success bg-success text-white" href="#">Previous</a></li>
                                            <li class="page-item"><a class="page-link border-success bg-success text-white" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link border-success bg-success text-white" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link border-success bg-success text-white" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link border-success bg-success text-white" href="#">Next</a></li>
                                        </ul>
                                    </nav>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination mb-0 ">
                                            <li class="page-item"><a class="page-link border-info bg-info text-white" href="#">Previous</a></li>
                                            <li class="page-item"><a class="page-link border-info bg-info text-white" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link border-info bg-info text-white" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link border-info bg-info text-white" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link border-info bg-info text-white" href="#">Next</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Working with icons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Looking to use an icon or symbol in place of text for some pagination links? Be sure to provide proper screen reader support with <code>aria</code> attributes.</p>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination mb-0">
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Pagination Sizing</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Fancy larger or smaller pagination? Add <code>.pagination-lg</code> or <code>.pagination-sm</code> for additional sizes.</p>
                                    <nav aria-label="...">
                                        <ul class="pagination pagination-lg">
                                            <li class="page-item active" aria-current="page">
                                                <span class="page-link">
                                                    1
                                                    <span class="sr-only">(current)</span>
                                                </span>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        </ul>
                                    </nav>
                                    <nav aria-label="...">
                                        <ul class="pagination">
                                            <li class="page-item active" aria-current="page">
                                                <span class="page-link">
                                                    1
                                                    <span class="sr-only">(current)</span>
                                                </span>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        </ul>
                                    </nav>
                                    <nav aria-label="...">
                                        <ul class="pagination pagination-sm">
                                            <li class="page-item active" aria-current="page">
                                                <span class="page-link">
                                                    1
                                                    <span class="sr-only">(current)</span>
                                                </span>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Alignment</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Change the alignment of pagination components with <a href="https://templates.iqonic.design/docs/4.3/utilities/flex/">flexbox utilities</a>.</p>
                                    <h6>left</h6>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                    <h6 class="text-center">Center</h6>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                    <h6 class="text-right">Right</h6>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end">
                                            <li class="page-item disabled">
                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">Next</a>
                                            </li>
                                        </ul>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-pagination.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:42 GMT -->
</html>