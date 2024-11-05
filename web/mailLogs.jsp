<%-- 
    Document   : mailLogs
    Created on : Nov 6, 2024, 1:03:12 AM
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
        <title>POS Admin - Mail Logs</title>
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
                                <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Nhật ký Email</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row mb-4">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <form method="get" action="mailLogs" class="row">
                                                    <div class="col-md-3">
                                                        <input type="text" class="form-control" name="search" 
                                                               value="${searchKeyword}" placeholder="Tìm theo email...">
                                                </div>
                                                <div class="col-md-2">
                                                    <select class="form-control" name="status">
                                                        <option value="All Status">Tất cả trạng thái</option>
                                                        <c:forEach items="${statuses}" var="stat">
                                                            <option value="${stat}" ${stat eq selectedStatus ? 'selected' : ''}>
                                                                ${stat}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="date" class="form-control" name="startDate" 
                                                           value="${startDate}" placeholder="Từ ngày">
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="date" class="form-control" name="endDate" 
                                                           value="${endDate}" placeholder="Đến ngày">
                                                </div>
                                                <div class="col-md-3">
                                                    <button type="submit" class="btn btn-primary">Lọc</button>
                                                    <button type="button" class="btn btn-secondary" onclick="clearFilters()">Đặt lại</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">
                                            <th>ID</th>
                                            <th>Người nhận</th>
                                            <th>Chủ đề</th>
                                            <th>Ngày gửi</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <c:forEach var="mailog" items="${maillogs}">
                                            <tr>
                                                <td>${mailog.mailogId}</td>
                                                <td>${mailog.recipientEmail}</td>
                                                <td>${mailog.mailSubject}</td>
                                                <td><fmt:formatDate value="${mailog.mailSentDate}" pattern="dd/MM/yyyy HH:mm:ss"/></td>
                                                <td>
                                                    <span class="badge ${mailog.status == 'SUCCESS' ? 'bg-success' : 'bg-danger'}">
                                                        ${mailog.status}
                                                    </span>
                                                </td>
                                                <td>
                                                    <a href="mailLogs?action=view&id=${mailog.mailogId}" 
                                                       class="btn btn-primary btn-sm">
                                                        <i class="ri-eye-line mr-0"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="d-flex justify-content-center">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                            <a class="page-link" href="mailLogs?page=${currentPage - 1}${queryString}">Trang trước</a>
                                        </li>

                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}">
                                                <a class="page-link" href="mailLogs?page=${i}${queryString}">${i}</a>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                            <a class="page-link" href="mailLogs?page=${currentPage + 1}${queryString}">Trang sau</a>
                                        </li>
                                    </ul>
                                </nav>
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
        <script>
                                    function clearFilters() {
                                        document.querySelector('input[name="search"]').value = '';
                                        document.querySelector('select[name="status"]').value = 'All Status';
                                        document.querySelector('input[name="startDate"]').value = '';
                                        document.querySelector('input[name="endDate"]').value = '';
                                        document.querySelector('form').submit();
                                    }

                                    window.onload = function () {
                                        const startDate = document.querySelector('input[name="startDate"]');
                                        const endDate = document.querySelector('input[name="endDate"]');
                                        if (startDate.value)
                                            startDate.value = formatDateForInput(startDate.value);
                                        if (endDate.value)
                                            endDate.value = formatDateForInput(endDate.value);
                                    }

                                    function formatDateForInput(dateStr) {
                                        if (!dateStr)
                                            return '';
                                        const date = new Date(dateStr);
                                        return date.toISOString().split('T')[0];
                                    }
        </script>
    </body>
</html>
