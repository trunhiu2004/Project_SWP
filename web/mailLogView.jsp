<%-- 
    Document   : mailLogView
    Created on : Nov 6, 2024, 1:03:29 AM
    Author     : ankha
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>POS Admin - Mail Log Detail</title>
    <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">
</head>
<body>
    <div class="wrapper">
        <jsp:include page="components/sidebar.jsp"></jsp:include>     
        <jsp:include page="components/topnavbar.jsp"></jsp:include>
        
        <div class="content-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">Chi tiết Email</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Người nhận:</label>
                                    <p>${mailog.recipientEmail}</p>
                                </div>
                                <div class="form-group">
                                    <label>Chủ đề:</label>
                                    <p>${mailog.mailSubject}</p>
                                </div>
                                <div class="form-group">
                                    <label>Nội dung:</label>
                                    <div class="border p-3">
                                        ${mailog.mailContent}
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Ngày gửi:</label>
                                    <p><fmt:formatDate value="${mailog.mailSentDate}" pattern="dd/MM/yyyy HH:mm:ss"/></p>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái:</label>
                                    <p>
                                        <span class="badge ${mailog.status == 'SUCCESS' ? 'bg-success' : 'bg-danger'}">
                                            ${mailog.status}
                                        </span>
                                    </p>
                                </div>
                                <c:if test="${mailog.status == 'FAILED'}">
                                    <div class="form-group">
                                        <label>Lỗi:</label>
                                        <p class="text-danger">${mailog.errorMessage}</p>
                                    </div>
                                </c:if>
                                <a href="mailLogs" class="btn btn-primary">Quay lại</a>
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