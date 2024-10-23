

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/pricing.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
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
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive pricing pt-2">
                                        <table id="my-table" class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center prc-wrap"></th>
                                                    <th class="text-center prc-wrap">
                                                        <div class="prc-box">
                                                            <div class="h3 pt-4">$19<small> / Per month</small>
                                                            </div> <span class="type">Basic</span>
                                                        </div>
                                                    </th>
                                                    <th class="text-center prc-wrap">
                                                        <div class="prc-box active">
                                                            <div class="h3 pt-4">$39<small> / Per month</small>
                                                            </div> <span class="type">Standard</span>
                                                        </div>
                                                    </th>
                                                    <th class="text-center prc-wrap">
                                                        <div class="prc-box">
                                                            <div class="h3 pt-4">$119<small> / Per month</small>
                                                            </div> <span class="type">Platinum</span>
                                                        </div>
                                                    </th>
                                                    <th class="text-center prc-wrap">
                                                        <div class="prc-box">
                                                            <div class="h3 pt-4">$219<small> / Per month</small>
                                                            </div> <span class="type">Premium</span>
                                                        </div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th class="text-center" scope="row">New Movies</th>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell active"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center" scope="row">Streamit Special</th>
                                                    <td class="text-center child-cell"><i class="ri-close-line i_close"></i>
                                                    </td>
                                                    <td class="text-center child-cell active"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center" scope="row">Sofbox series</th>
                                                    <td class="text-center child-cell"><i class="ri-close-line i_close"></i>
                                                    </td>
                                                    <td class="text-center child-cell active"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center" scope="row">Xamin TV shows</th>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell active"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center" scope="row">Prokit HD shows</th>
                                                    <td class="text-center child-cell">SD (480p)</td>
                                                    <td class="text-center child-cell active">HD (720p)</td>
                                                    <td class="text-center child-cell">FHD (1080p)</td>
                                                    <td class="text-center child-cell">FHD (1080p)</td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center" scope="row">Unlimited Graphina plug-in</th>
                                                    <td class="text-center child-cell"><i class="ri-close-line i_close"></i>
                                                    </td>
                                                    <td class="text-center child-cell active"><i class="ri-close-line i_close"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                    <td class="text-center child-cell"><i class="ri-check-line ri-2x"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center"><i class="ri-close-line i_close"></i>
                                                    </td>
                                                    <td class="text-center"> <a href="#" class="btn btn-primary mt-3">Purchase</a>
                                                    </td>
                                                    <td class="text-center"> <a href="#" class="btn btn-primary mt-3">Purchase</a>
                                                    </td>
                                                    <td class="text-center"> <a href="#" class="btn btn-primary mt-3">Purchase</a>
                                                    </td>
                                                    <td class="text-center"> <a href="#" class="btn btn-primary mt-3">Purchase</a>
                                                    </td>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/pricing.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:43 GMT -->
</html>