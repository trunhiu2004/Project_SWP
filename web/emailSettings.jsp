<%-- 
    Document   : emailSettings
    Created on : Nov 5, 2024, 3:21:09 AM
    Author     : ankha
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>POS Admin - Email Settings</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" />
    <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
    <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
    <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
    <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">
</head>
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
        
        <div class="content-page">
            <div class="container-fluid">
                <div class="row">                  
                    <div class="col-lg-12">
                        <div class="card card-block card-stretch card-height">
                            <div class="card-header d-flex justify-content-between bg-primary">
                                <div class="iq-header-title">
                                    <h4 class="card-title mb-0 text-white">Cài đặt Email</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <% if (request.getAttribute("message") != null) { %>
                                    <div class="alert alert-success" role="alert">
                                        <%= request.getAttribute("message") %>
                                    </div>
                                <% } %>
                                <form action="emailSettings" method="post">
                                    <input type="hidden" name="action" value="update">
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="smtpServer" class="form-label">Máy chủ SMTP</label>
                                            <input type="text" class="form-control" id="smtpServer" name="smtpServer" value="${emailSettings.smtpServer}" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="smtpPort" class="form-label">Cổng SMTP</label>
                                            <input type="number" class="form-control" id="smtpPort" name="smtpPort" value="${emailSettings.smtpPort}" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="fromEmail" class="form-label">From Email</label>
                                            <input type="email" class="form-control" id="fromEmail" name="fromEmail" value="${emailSettings.fromEmail}" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="authPassword" class="form-label">Mật khẩu</label>
                                            <input type="password" class="form-control" id="authPassword" name="authPassword" value="${emailSettings.authPassword}" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-primary">Lưu Cài Đặt</button>
                                        </div>
                                    </div>
                                </form>
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