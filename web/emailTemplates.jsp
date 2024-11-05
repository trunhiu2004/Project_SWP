<%-- 
    Document   : emailTemplates
    Created on : Nov 5, 2024, 4:30:43 AM
    Author     : ankha
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
                                <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Mẫu Email</h4>
                                    </div>
                                    <a href="emailTemplates?action=new" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Thêm mẫu Email</a>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row mb-4">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <form method="get" action="emailTemplates" class="row">
                                                    <div class="col-md-10">
                                                        <input type="text" class="form-control" name="search" 
                                                               value="${searchKeyword}" placeholder="Tìm theo tên mẫu hoặc chủ đề...">
                                                </div>
                                                <div class="col-md-2">
                                                    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
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
                                            <th>Tên mẫu</th>
                                            <th>Chủ đề</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <c:forEach var="template" items="${templates}">
                                            <tr>
                                                <td>${template.templateId}</td>
                                                <td>${template.templateName}</td>
                                                <td>${template.subject}</td>
                                                <td>
                                                    <div class="d-flex align-items-center list-action">
                                                        <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Sửa"
                                                           href="emailTemplates?action=edit&id=${template.templateId}"><i class="ri-pencil-line mr-0"></i></a>
                                                        <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Xoá"
                                                           href="emailTemplates?action=delete&id=${template.templateId}"
                                                           onclick="return confirm('Bạn có chắc chắn muốn xóa mẫu này không?');"><i class="ri-delete-bin-line mr-0"></i></a>
                                                    </div>
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
                                            <a class="page-link" href="emailTemplates?page=${currentPage - 1}${not empty searchKeyword ? '&search=' : ''}${searchKeyword}">Trang trước</a>
                                        </li>

                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}">
                                                <a class="page-link" href="emailTemplates?page=${i}${not empty searchKeyword ? '&search=' : ''}${searchKeyword}">${i}</a>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                            <a class="page-link" href="emailTemplates?page=${currentPage + 1}${not empty searchKeyword ? '&search=' : ''}${searchKeyword}">Trang sau</a>
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
                                        document.querySelector('form').submit();
                                    }
        </script>
    </body>
</html>
