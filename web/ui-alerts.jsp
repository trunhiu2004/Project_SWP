

<!doctype html>
<html lang="en">

    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

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
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Basic Alerts</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert alert-primary" role="alert">
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-secondary" role="alert">
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-success" role="alert">
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-danger" role="alert">
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-warning" role="alert">
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-info" role="alert">
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-light" role="alert">
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Basic Alerts With Icons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert alert-primary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-secondary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-success" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-danger" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-warning" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-info" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert alert-light" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Basic Line Alerts</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert bg-white alert-primary" role="alert">
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-secondary" role="alert">
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-success" role="alert">
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-danger" role="alert">
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-warning" role="alert">
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-info" role="alert">
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-light" role="alert">
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Basic Line Alerts With Icons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert bg-white alert-primary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-secondary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-success" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-danger" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-warning" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-info" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-white alert-light" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Alerts With Background</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert text-white bg-primary" role="alert">
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-secondary" role="alert">
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-success" role="alert">
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-danger" role="alert">
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-warning" role="alert">
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-info" role="alert">
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-light" role="alert">
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Background Alerts With Icons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert text-white bg-primary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-secondary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-success" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-danger" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-warning" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert text-white bg-info" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                    </div>
                                    <div class="alert bg-light" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Alerts Dismissing</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert text-white bg-primary" role="alert">
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-secondary" role="alert">
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-success" role="alert">
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-danger" role="alert">
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-warning" role="alert">
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-info" role="alert">
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert bg-light" role="alert">
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                        <button type="button" class="close text-muted" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Alerts Dismissing With Icons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert text-white bg-primary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>primary</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-secondary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>secondary</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-success" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>success</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-danger" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>danger</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-warning" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>warning</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert text-white bg-info" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>info</b> alert?check it out!</div>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                    <div class="alert bg-light" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">A simple <b>light</b> alert?check it out!</div>
                                        <button type="button" class="close text-muted" data-dismiss="alert" aria-label="Close">
                                            <i class="ri-close-line"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Alerts With Background</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert alert-primary" role="alert">
                                        <div class="iq-alert-text">A simple primary alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-secondary" role="alert">
                                        <div class="iq-alert-text">A simple secondary alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-success" role="alert">
                                        <div class="iq-alert-text">A simple success alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-danger" role="alert">
                                        <div class="iq-alert-text">A simple danger alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-warning" role="alert">
                                        <div class="iq-alert-text">A simple warning alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-info" role="alert">
                                        <div class="iq-alert-text">A simple info alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-light" role="alert">
                                        <div class="iq-alert-text">A simple light alert with <a href="#" class="alert-link">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Background Alerts With Icons</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="alert alert-primary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">simple primary alert with <a href="#"
                                                                                                class="alert-link ">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-secondary" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">simple primary alert with <a href="#"
                                                                                                class="alert-link ">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-success" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">simple primary alert with <a href="#"
                                                                                                class="alert-link ">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-danger" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">simple primary alert with <a href="#"
                                                                                                class="alert-link ">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-warning" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-alert-line"></i>
                                        </div>
                                        <div class="iq-alert-text">simple primary alert with <a href="#"
                                                                                                class="alert-link ">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                    <div class="alert alert-info" role="alert">
                                        <div class="iq-alert-icon">
                                            <i class="ri-information-line"></i>
                                        </div>
                                        <div class="iq-alert-text">simple primary alert with <a href="#"
                                                                                                class="alert-link ">an
                                                example link</a>. Give it a click if you like.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Additional content</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                        Lorem Ipsum has been the industry's standard dummy text ever
                                    </p>
                                    <div class="row">
                                        <div class="col-sm-12 col-lg-6">
                                            <div class="alert alert-primary" role="alert">
                                                <div class="iq-alert-text">
                                                    <h5 class="alert-heading">Well done!</h5>
                                                    <p>Aww yeah, you successfully read this important alert message. This
                                                        example text is going to run a bit longer so that you can see how
                                                        spacing within an alert works with this kind of content.
                                                    </p>
                                                    <hr>
                                                    <p class="mb-0">Whenever you need to, be sure to use margin utilities to
                                                        keep things nice and tidy.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-lg-6">
                                            <div class="alert alert-success" role="alert">
                                                <div class="iq-alert-text">
                                                    <h5 class="alert-heading">Well done!</h5>
                                                    <p>Aww yeah, you successfully read this important alert message. This
                                                        example text is going to run a bit longer so that you can see how
                                                        spacing within an alert works with this kind of content.
                                                    </p>
                                                    <hr>
                                                    <p class="mb-0">Whenever you need to, be sure to use margin utilities to
                                                        keep things nice and tidy.
                                                    </p>
                                                </div>
                                            </div>
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

    
</html>