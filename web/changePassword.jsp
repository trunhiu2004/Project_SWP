

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>  </head>
    <body class=" ">
        <!-- loader Start -->
        <div id="loading">
            <div id="loading-center">
            </div>
        </div>
        <!- - loader END -->

        <div class="wrapper">
            <section class="login-content">
                <div class="container">
                    <div class="row align-items-center justify-content-center height-self-center">
                        <div class="col-lg-8">
                            <div class="card auth-card">
                                <div class="card-body p-0">
                                    <div class="d-flex align-items-center auth-content">
                                        <div class="col-lg-7 align-self-center">
                                            <div class="p-3">
                                                <h2 class="mb-2">Đổi mật khẩu</h2>
                                                <form action="changePassword" method="post">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="floating-label form-group">
                                                                <input class="floating-input form-control" type="password" placeholder="Mật khẩu mới..." name="passwordRegister">
                                                            </div>
                                                        </div>


                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Confirm</button>
                                                   
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 content-right">
                                            <img src="assets/images/login/01.png" class="img-fluid image-right" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

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