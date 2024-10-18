<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-customers.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
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

            <div class="iq-sidebar  sidebar-default ">
                <div class="iq-sidebar-logo d-flex align-items-center justify-content-between">
                    <a href="home_1.jsp" class="header-logo">
                        <img src="assets/images/logo.png" class="img-fluid rounded-normal light-logo" alt="logo"><h5 class="logo-title light-logo ml-3">POSDash</h5>
                    </a>
                    <div class="iq-menu-bt-sidebar ml-0">
                        <i class="las la-bars wrapper-menu"></i>
                    </div>
                </div>
              <jsp:include page="components/DashBoard.jsp"/>
            </div>      <div class="iq-top-navbar">
                <div class="iq-navbar-custom">
                    <nav class="navbar navbar-expand-lg navbar-light p-0">
                        <div class="iq-navbar-logo d-flex align-items-center justify-content-between">
                            <i class="ri-menu-line wrapper-menu"></i>
                            <a href="home_1.jsp" class="header-logo">
                                <img src="assets/images/logo.png" class="img-fluid rounded-normal" alt="logo">
                                <h5 class="logo-title ml-3">POSDash</h5>

                            </a>
                        </div>
                        <div class="iq-search-bar device-search">
                            <form action="#" class="searchbox">
                                <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                                <input type="text" class="text search-input" placeholder="Search here...">
                            </form>
                        </div>
                        <div class="d-flex align-items-center">
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-label="Toggle navigation">
                                <i class="ri-menu-3-line"></i>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto navbar-list align-items-center">
                                    <li class="nav-item nav-icon dropdown">
                                        <a href="#" class="search-toggle dropdown-toggle btn border add-btn"
                                           id="dropdownMenuButton02" data-toggle="dropdown" aria-haspopup="true"
                                           aria-expanded="false">
                                            <img src="assets/images/small/flag-01.png" alt="img-flag"
                                                 class="img-fluid image-flag mr-2">En
                                        </a>
                                        <div class="iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                            <div class="card shadow-none m-0">
                                                <div class="card-body p-3">
                                                    <a class="iq-sub-card" href="#"><img
                                                            src="assets/images/small/flag-02.png" alt="img-flag"
                                                            class="img-fluid mr-2">French</a>
                                                    <a class="iq-sub-card" href="#"><img
                                                            src="assets/images/small/flag-03.png" alt="img-flag"
                                                            class="img-fluid mr-2">Spanish</a>
                                                    <a class="iq-sub-card" href="#"><img
                                                            src="assets/images/small/flag-04.png" alt="img-flag"
                                                            class="img-fluid mr-2">Italian</a>
                                                    <a class="iq-sub-card" href="#"><img
                                                            src="assets/images/small/flag-05.png" alt="img-flag"
                                                            class="img-fluid mr-2">German</a>
                                                    <a class="iq-sub-card" href="#"><img
                                                            src="assets/images/small/flag-06.png" alt="img-flag"
                                                            class="img-fluid mr-2">Japanese</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="#" class="btn border add-btn shadow-none mx-2 d-none d-md-block"
                                           data-toggle="modal" data-target="#new-order"><i class="las la-plus mr-2"></i>New
                                            Order</a>
                                    </li>
                                    <li class="nav-item nav-icon search-content">
                                        <a href="#" class="search-toggle rounded" id="dropdownSearch" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="ri-search-line"></i>
                                        </a>
                                        <div class="iq-search-bar iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownSearch">
                                            <form action="#" class="searchbox p-2">
                                                <div class="form-group mb-0 position-relative">
                                                    <input type="text" class="text search-input font-size-12"
                                                           placeholder="type here to search...">
                                                    <a href="#" class="search-link"><i class="las la-search"></i></a>
                                                </div>
                                            </form>
                                        </div>
                                    </li>
                                    <li class="nav-item nav-icon dropdown">
                                        <a href="#" class="search-toggle dropdown-toggle" id="dropdownMenuButton2"
                                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                 stroke-linejoin="round" class="feather feather-mail">
                                            <path
                                                d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z">
                                            </path>
                                            <polyline points="22,6 12,13 2,6"></polyline>
                                            </svg>
                                            <span class="bg-primary"></span>
                                        </a>
                                        <div class="iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                            <div class="card shadow-none m-0">
                                                <div class="card-body p-0 ">
                                                    <div class="cust-title p-3">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <h5 class="mb-0">All Messages</h5>
                                                            <a class="badge badge-primary badge-card" href="#">3</a>
                                                        </div>
                                                    </div>
                                                    <div class="px-3 pt-0 pb-0 sub-card">
                                                        <a href="#" class="iq-sub-card">
                                                            <div class="media align-items-center cust-card py-3 border-bottom">
                                                                <div class="">
                                                                    <img class="avatar-50 rounded-small"
                                                                         src="assets/images/user/01.jpg" alt="01">
                                                                </div>
                                                                <div class="media-body ml-3">
                                                                    <div class="d-flex align-items-center justify-content-between">
                                                                        <h6 class="mb-0">Emma Watson</h6>
                                                                        <small class="text-dark"><b>12 : 47 pm</b></small>
                                                                    </div>
                                                                    <small class="mb-0">Lorem ipsum dolor sit amet</small>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a href="#" class="iq-sub-card">
                                                            <div class="media align-items-center cust-card py-3 border-bottom">
                                                                <div class="">
                                                                    <img class="avatar-50 rounded-small"
                                                                         src="assets/images/user/02.jpg" alt="02">
                                                                </div>
                                                                <div class="media-body ml-3">
                                                                    <div class="d-flex align-items-center justify-content-between">
                                                                        <h6 class="mb-0">Ashlynn Franci</h6>
                                                                        <small class="text-dark"><b>11 : 30 pm</b></small>
                                                                    </div>
                                                                    <small class="mb-0">Lorem ipsum dolor sit amet</small>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a href="#" class="iq-sub-card">
                                                            <div class="media align-items-center cust-card py-3">
                                                                <div class="">
                                                                    <img class="avatar-50 rounded-small"
                                                                         src="assets/images/user/03.jpg" alt="03">
                                                                </div>
                                                                <div class="media-body ml-3">
                                                                    <div class="d-flex align-items-center justify-content-between">
                                                                        <h6 class="mb-0">Kianna Carder</h6>
                                                                        <small class="text-dark"><b>11 : 21 pm</b></small>
                                                                    </div>
                                                                    <small class="mb-0">Lorem ipsum dolor sit amet</small>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <a class="right-ic btn btn-primary btn-block position-relative p-2" href="#"
                                                       role="button">
                                                        View All
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="nav-item nav-icon dropdown">
                                        <a href="#" class="search-toggle dropdown-toggle" id="dropdownMenuButton"
                                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                                 fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                 stroke-linejoin="round" class="feather feather-bell">
                                            <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                            <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                                            </svg>
                                            <span class="bg-primary "></span>
                                        </a>
                                        <div class="iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <div class="card shadow-none m-0">
                                                <div class="card-body p-0 ">
                                                    <div class="cust-title p-3">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <h5 class="mb-0">Notifications</h5>
                                                            <a class="badge badge-primary badge-card" href="#">3</a>
                                                        </div>
                                                    </div>
                                                    <div class="px-3 pt-0 pb-0 sub-card">
                                                        <a href="#" class="iq-sub-card">
                                                            <div class="media align-items-center cust-card py-3 border-bottom">
                                                                <div class="">
                                                                    <img class="avatar-50 rounded-small"
                                                                         src="assets/images/user/01.jpg" alt="01">
                                                                </div>
                                                                <div class="media-body ml-3">
                                                                    <div class="d-flex align-items-center justify-content-between">
                                                                        <h6 class="mb-0">Emma Watson</h6>
                                                                        <small class="text-dark"><b>12 : 47 pm</b></small>
                                                                    </div>
                                                                    <small class="mb-0">Lorem ipsum dolor sit amet</small>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a href="#" class="iq-sub-card">
                                                            <div class="media align-items-center cust-card py-3 border-bottom">
                                                                <div class="">
                                                                    <img class="avatar-50 rounded-small"
                                                                         src="assets/images/user/02.jpg" alt="02">
                                                                </div>
                                                                <div class="media-body ml-3">
                                                                    <div class="d-flex align-items-center justify-content-between">
                                                                        <h6 class="mb-0">Ashlynn Franci</h6>
                                                                        <small class="text-dark"><b>11 : 30 pm</b></small>
                                                                    </div>
                                                                    <small class="mb-0">Lorem ipsum dolor sit amet</small>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a href="#" class="iq-sub-card">
                                                            <div class="media align-items-center cust-card py-3">
                                                                <div class="">
                                                                    <img class="avatar-50 rounded-small"
                                                                         src="assets/images/user/03.jpg" alt="03">
                                                                </div>
                                                                <div class="media-body ml-3">
                                                                    <div class="d-flex align-items-center justify-content-between">
                                                                        <h6 class="mb-0">Kianna Carder</h6>
                                                                        <small class="text-dark"><b>11 : 21 pm</b></small>
                                                                    </div>
                                                                    <small class="mb-0">Lorem ipsum dolor sit amet</small>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <a class="right-ic btn btn-primary btn-block position-relative p-2" href="#"
                                                       role="button">
                                                        View All
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="nav-item nav-icon dropdown caption-content">
                                        <a href="#" class="search-toggle dropdown-toggle" id="dropdownMenuButton4"
                                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="assets/images/user/1.png" class="img-fluid rounded" alt="user">
                                        </a>
                                        <div class="iq-sub-dropdown dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <div class="card shadow-none m-0">
                                                <div class="card-body p-0 text-center">
                                                    <div class="media-body profile-detail text-center">
                                                        <img src="assets/images/page-img/profile-bg.jpg" alt="profile-bg"
                                                             class="rounded-top img-fluid mb-4">
                                                        <img src="assets/images/user/1.png" alt="profile-img"
                                                             class="rounded profile-img img-fluid avatar-70">
                                                    </div>
                                                    <div class="p-3">
                                                        <h5 class="mb-1">JoanDuo@property.com</h5>
                                                        <p class="mb-0">Since 10 march, 2020</p>
                                                        <div class="d-flex align-items-center justify-content-center mt-3">
                                                            <a href="https://templates.iqonic.design/posdash/html/app/user-profile.html" class="btn border mr-2">Profile</a>
                                                            <a href="auth-sign-in.html" class="btn border">Sign Out</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
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
                            <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                <div>
                                    <h4 class="mb-3">Shift Detail</h4>
                                    <p class="mb-0">A customer dashboard lets you easily gather and visualize customer data from optimizing <br>
                                        the customer experience, ensuring customer retention. </p>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">
                                            <th>Shift ID</th>
                                            <th>Start</th>
                                            <th>End</th>
                                            <th>Total Hours</th>
                                            <th>Order ID</th>                                                                                       
                                            <th>Quantity</th>
                                            <th>Order Total Amount</th>
                                            <th>Unit Price</th>
                                            <th>Total Price</th>
                                            <th>Employee ID</th>
                                            <th>Product Name</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <c:forEach var="shiftdetail" items="${requestScope.shiftDetails}">
                                            <tr>
                                                <td>${shiftdetail.shiftManagerId}</td>
                                                <td>${shiftdetail.shiftStartTime}</td>
                                                <td>${shiftdetail.shiftEndTime}</td>
                                                <td>${shiftdetail.totalHours}</td>
                                                <td>${shiftdetail.orderId}</td>
                                                <td>${shiftdetail.quantity}</td>
                                                <td>${shiftdetail.orderTotalAmount}</td>
                                                <td>${shiftdetail.unitPrice}</td>
                                                <td>${shiftdetail.totalPrice}</td>
                                                <td>${shiftdetail.employeeId}</td>
                                                <td>${shiftdetail.productName}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <!-- Page end  -->
                </div>
                <!-- Modal Edit -->
                <div class="modal fade" id="edit-note" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="popup text-left">
                                    <div class="media align-items-top justify-content-between">                            
                                        <h3 class="mb-3">Product</h3>
                                        <div class="btn-cancel p-0" data-dismiss="modal"><i class="las la-times"></i></div>
                                    </div>
                                    <div class="content edit-notes">
                                        <div class="card card-transparent card-block card-stretch event-note mb-0">
                                            <div class="card-body px-0 bukmark">
                                                <div class="d-flex align-items-center justify-content-between pb-2 mb-3 border-bottom">                                                    
                                                    <div class="quill-tool">
                                                    </div>
                                                </div>
                                                <div id="quill-toolbar1">
                                                    <p>Virtual Digital Marketing Course every week on Monday, Wednesday and Saturday.Virtual Digital Marketing Course every week on Monday</p>
                                                </div>
                                            </div>
                                            <div class="card-footer border-0">
                                                <div class="d-flex flex-wrap align-items-ceter justify-content-end">
                                                    <div class="btn btn-primary mr-3" data-dismiss="modal">Cancel</div>
                                                    <div class="btn btn-outline-primary" data-dismiss="modal">Save</div>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-customers.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>