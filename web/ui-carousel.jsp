

<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-carousel.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:38 GMT -->
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
                                        <h4 class="card-title">Slides only</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Here?s a carousel with slides only. Note the presence of the <code>.d-block</code> and <code>.img-fluid</code> on carousel images to prevent browser default image alignment.</p>
                                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Slides With Controls</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Here?s a carousel with slides only. Note the presence of the <code>.d-block</code> and <code>.img-fluid</code> on carousel images to prevent browser default image alignment.</p>
                                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Slides With Indicators</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Here?s a carousel with slides only. Note the presence of the <code>.d-block</code> and <code>.img-fluid</code> on carousel images to prevent browser default image alignment.</p>
                                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                        </ol>
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Slides With Captions</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Here?s a carousel with slides only. Note the presence of the <code>.d-block</code> and <code>.img-fluid</code> on carousel images to prevent browser default image alignment.</p>
                                    <div class="bd-example">
                                        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                                            </ol>
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h4 class="text-white">First slide label</h4>
                                                        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h4 class="text-white">Second slide label</h4>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                    </div>
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h4 class="text-white">Third slide label</h4>
                                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Slides With Crossfade</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p>Here?s a carousel with slides only. Note the presence of the <code>.d-block</code> and <code>.img-fluid</code> on carousel images to prevent browser default image alignment.</p>
                                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../assets/images/small/img-1.jpg" class="d-block w-100" alt="#">
                                            </div>
                                        </div>
                                        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/ui-carousel.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:38 GMT -->
</html>