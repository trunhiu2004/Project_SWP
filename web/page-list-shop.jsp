    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-users.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
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

                        <div class="d-flex align-items-center">
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-label="Toggle navigation">
                                <i class="ri-menu-3-line"></i>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto navbar-list align-items-center">


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
            <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                <div>
                                    <h4 class="mb-3">Shop</h4>

                                    <div class="iq-search-bar device-search">
                                        <form action="SearchShop" method="post" class="searchbox">
                                            <a type = "submit" class="search-link" href="#"><i class="ri-search-line"></i></a>
                                            <input name="txt" type="text" class="text search-input" placeholder="Search here...">
                                        </form>
                                    </div>

                                </div>
                                <a href="addShop.jsp" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add Shop</a>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">


                                            <th>Name</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th>Opening</th>   
                                            <th>Image</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="shop" items="${requestScope.shop}">
                                            <tr>

                                                <td>${shop.shopName}</td>
                                                <td>${shop.shopPhone}</td>
                                                <td>${shop.shopAddress}</td>
                                                <td>${shop.shopEmail}</td>
                                                <td>${shop.shopOpeningHours}</td>

                                                <td><img src="assets/images/logoshop/${shop.shopLogo}" width="80px" height="80px"/></td>
                                                <th>
                                                    <a href="DeleteShop?id=${shop.shopId}" class="btn btn-warning">Delete</a>
                                                    <a href="EditShop?id=${shop.shopId}" class="btn btn-primary">Edit</a>


                                                </th>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                    
                    
                    

                    <!-- Page end  -->
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-users.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>