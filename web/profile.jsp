<%-- 
    Document   : profile
    Created on : Nov 5, 2024, 1:16:04 PM
    Author     : ankha
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">
    </head>
    <body>
        <jsp:include page="components/sidebar.jsp"></jsp:include>     
        <jsp:include page="components/topnavbar.jsp"></jsp:include>

            <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="mb-3">Thông tin người dùng</h4>

                                <c:if test="${not empty message}">
                                    <div class="alert alert-success">${message}</div>
                                </c:if>
                                <c:if test="${not empty error}">
                                    <div class="alert alert-danger">${error}</div>
                                </c:if>

                                <div class="row">
                                    <div class="col-md-6">
                                        <p><strong>Họ tên:</strong> ${employee.employee_name}</p>
                                        <p><strong>Điện thoại:</strong> ${employee.employee_phone}</p>
                                        <p><strong>Địa chỉ:</strong> ${employee.employee_address}</p>
                                        <p><strong>Email:</strong> ${account.email}</p>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>Đổi mật khẩu</h5>
                                        <form action="profile?action=changePassword" method="post">
                                            <div class="form-group">
                                                <label for="currentPassword">Mật khẩu hiện tại</label>
                                                <input type="password" class="form-control" id="currentPassword" name="currentPassword" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="newPassword">Mật khẩu mới</label>
                                                <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="confirmPassword">Nhập lại mật khẩu mới</label>
                                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                                            </div>
                                            <div class="form-group">
                                                <small class="form-text text-muted">
                                                    <%= utils.PasswordValidator.getPasswordRequirements()%>
                                                </small>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
                                        </form>
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
        <!--Password Validation-->
        <script src="assets/js/passwordValidation.js"></script>
    </body>
</html>
