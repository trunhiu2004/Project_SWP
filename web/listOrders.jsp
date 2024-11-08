<%-- 
    Document   : listOrders
    Created on : Oct 15, 2024, 8:09:54 PM
    Author     : ankha
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include> 
            <style>
                .btn-sm {
                    padding: 0.25rem 0.5rem;
                    font-size: 0.875rem;
                    line-height: 1.5;
                    border-radius: 0.2rem;
                }

                .me-2 {
                    margin-right: 0.5rem !important;
                }

                .alert {
                    padding: 1rem;
                    margin-bottom: 1rem;
                    border: 1px solid transparent;
                    border-radius: 0.25rem;
                }

                .alert-dismissible {
                    padding-right: 3rem;
                }

                .alert-success {
                    color: #155724;
                    background-color: #d4edda;
                    border-color: #c3e6cb;
                }

                .alert-danger {
                    color: #721c24;
                    background-color: #f8d7da;
                    border-color: #f5c6cb;
                }
                .form-floating > .form-control,
                .form-floating > .form-select {
                    height: calc(3.5rem + 2px);
                    line-height: 1.25;
                }

                .form-floating > label {
                    padding: 1rem 0.75rem;
                }

                .btn-primary {
                    background: linear-gradient(135deg, #0d6efd 0%, #0a58ca 100%);
                    border: none;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                    transition: all 0.3s ease;
                }

                .btn-primary:hover {
                    transform: translateY(-1px);
                    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
                }
                .action-buttons .btn-icon {
                    width: 32px;
                    height: 32px;
                    padding: 0;
                    display: inline-flex;
                    align-items: center;
                    justify-content: center;
                    border-radius: 8px;
                    transition: all 0.3s ease;
                }

                .btn-soft-info {
                    background-color: rgba(13, 110, 253, 0.1);
                    color: #0d6efd;
                    border: none;
                }

                .btn-soft-success {
                    background-color: rgba(25, 135, 84, 0.1);
                    color: #198754;
                    border: none;
                }

                .btn-soft-danger {
                    background-color: rgba(220, 53, 69, 0.1);
                    color: #dc3545;
                    border: none;
                }

                .btn-soft-info:hover {
                    background-color: #0d6efd;
                    color: white;
                }

                .btn-soft-success:hover {
                    background-color: #198754;
                    color: white;
                }

                .btn-soft-danger:hover {
                    background-color: #dc3545;
                    color: white;
                }

                .action-buttons .btn-icon i {
                    font-size: 1rem;
                }

            </style>
        </head>
        <body class="">
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
                    <c:if test="${not empty sessionScope.successMessage}">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            ${sessionScope.successMessage}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% session.removeAttribute("successMessage"); %>
                    </c:if>

                    <c:if test="${not empty sessionScope.errorMessage}">
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            ${sessionScope.errorMessage}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% session.removeAttribute("errorMessage"); %>
                    </c:if>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                <div>
                                    <h4 class="mb-3">Danh sách đơn hàng</h4>
                                    <p class="mb-0">Kiểm soát đơn hàng của shop</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <form action="list-order" method="GET" class="row">
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" 
                                                   name="customerName" value="${customerName}" 
                                                   placeholder="Tìm khách hàng...">
                                        </div>
                                        <div class="col-md-2">
                                            <input type="date" class="form-control" 
                                                   name="orderDate" value="${orderDate}">
                                        </div>
                                        <div class="col-md-2">
                                            <select class="form-control" name="status">
                                                <option value="" ${empty status ? 'selected' : ''}>Tất cả trạng thái</option>
                                                <option value="PENDING" ${status == 'PENDING' ? 'selected' : ''}>PENDING</option>
                                                <option value="COMPLETED" ${status == 'COMPLETED' ? 'selected' : ''}>COMPLETED</option>
                                                <option value="CANCELLED" ${status == 'CANCELLED' ? 'selected' : ''}>CANCELLED</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" 
                                                   name="employeeName" value="${employeeName}" 
                                                   placeholder="Tìm kiếm nhân viên...">
                                        </div>
                                        <div class="col-md-2">
                                            <div class="d-flex gap-2">
                                                <button type="submit" class="btn btn-primary flex-grow-1">
                                                    <i class="ri-search-line me-1"></i> Lọc
                                                </button>
                                                <button type="button" class="btn btn-secondary" onclick="clearFilters()">
                                                    <i class="ri-refresh-line"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">
                                            <th>ID Hoá đơn</th>
                                            <th>Tên khách hàng</th>
                                            <th>Ngày đặt hàng</th>
                                            <th>Tổng tiền</th>
                                            <th>Trạng thái</th>
                                            <th>Tên nhân viên</th>
                                            <th>Mã giảm giá</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <c:forEach var="order" items="${orders}">
                                            <tr>
                                                <td>${order.orderId}</td>
                                                <td>${order.customerName}</td>
                                                <td>${order.orderDate}</td>
                                                <td><fmt:formatNumber value="${order.orderTotalAmount}" pattern="#,##0" />₫</td>
                                                <td>${order.orderStatus}</td>
                                                <td>${order.employeeName}</td>
                                                <td>${order.couponCode}</td>
                                                <td>
                                                    <div class="d-flex gap-2 action-buttons">
                                                        <button onclick="window.location.href = 'view-order?orderId=${order.orderId}'" 
                                                                class="btn btn-soft-info btn-icon btn-sm" 
                                                                data-bs-toggle="tooltip" 
                                                                title="Xem">
                                                            <i class="ri-eye-line"></i>
                                                        </button>

                                                        <button onclick="window.location.href = 'edit-order?orderId=${order.orderId}'" 
                                                                class="btn btn-soft-success btn-icon btn-sm"
                                                                data-bs-toggle="tooltip" 
                                                                title="Sửa">
                                                            <i class="ri-pencil-line"></i>
                                                        </button>

                                                        <button onclick="confirmDelete(${order.orderId})" 
                                                                class="btn btn-soft-danger btn-icon btn-sm"
                                                                data-bs-toggle="tooltip" 
                                                                title="Xoá">
                                                            <i class="ri-delete-bin-line"></i>
                                                        </button>
                                                    </div>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <div class="row">
                                    <div class="col-12">
                                        <nav aria-label="Page navigation">
                                            <ul class="pagination justify-content-center">
                                                <c:url value="/list-order" var="prevUrl">
                                                    <c:param name="page" value="${currentPage - 1}"/>
                                                    <c:param name="pageSize" value="${pageSize}"/>
                                                    <c:param name="customerName" value="${customerName}"/>
                                                    <c:param name="orderDate" value="${orderDate}"/>
                                                    <c:param name="status" value="${status}"/>
                                                    <c:param name="employeeName" value="${employeeName}"/>
                                                </c:url>
                                                <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                                    <a class="page-link" href="${prevUrl}">Trang trước</a>
                                                </li>

                                                <c:forEach begin="1" end="${totalPages}" var="i">
                                                    <c:url value="/list-order" var="pageUrl">
                                                        <c:param name="page" value="${i}"/>
                                                        <c:param name="pageSize" value="${pageSize}"/>
                                                        <c:param name="customerName" value="${customerName}"/>
                                                        <c:param name="orderDate" value="${orderDate}"/>
                                                        <c:param name="status" value="${status}"/>
                                                        <c:param name="employeeName" value="${employeeName}"/>
                                                    </c:url>
                                                    <li class="page-item ${currentPage == i ? 'active' : ''}">
                                                        <a class="page-link" href="${pageUrl}">${i}</a>
                                                    </li>
                                                </c:forEach>

                                                <c:url value="/list-order" var="nextUrl">
                                                    <c:param name="page" value="${currentPage + 1}"/>
                                                    <c:param name="pageSize" value="${pageSize}"/>
                                                    <c:param name="customerName" value="${customerName}"/>
                                                    <c:param name="orderDate" value="${orderDate}"/>
                                                    <c:param name="status" value="${status}"/>
                                                    <c:param name="employeeName" value="${employeeName}"/>
                                                </c:url>
                                                <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                                    <a class="page-link" href="${nextUrl}">Trang sau</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
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
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>?</span> <a href="#" class="">POS Admin</a>.
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
                                    document.addEventListener('DOMContentLoaded', function () {
                                        var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
                                        var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                                            return new bootstrap.Tooltip(tooltipTriggerEl)
                                        })
                                    });
                                    function clearFilters() {
                                        document.querySelector('input[name="customerName"]').value = '';
                                        document.querySelector('input[name="orderDate"]').value = '';
                                        document.querySelector('select[name="status"]').value = '';
                                        document.querySelector('input[name="employeeName"]').value = '';
                                        document.querySelector('form').submit();
                                    }
                                    function confirmDelete(orderId) {
                                        if (confirm('Bạn có chắc chắn muốn xóa đơn hàng này không?')) {
                                            window.location.href = 'delete-order?orderId=' + orderId;
                                        }
                                    }
        </script>
    </body>
</html>
