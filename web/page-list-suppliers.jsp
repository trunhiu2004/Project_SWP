<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Bạn có muốn xóa nhà cung cấp có mã là " + id +" không ?")) {
                    window.location = "deleteSupplier?supplier_id=" + id;
                }
            }
        </script>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include>  </head>
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
                                <div class="d-flex flex-wrap flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Danh sách nhà cung cấp</h4>
                                        <p class="mb-0">Danh sách nhà cung cấp là tập hợp thông tin về các đơn vị hoặc cá nhân cung cấp hàng hóa, <br>dịch vụ cho doanh nghiệp.</p>
                                    </div>
                                    <a href="addSupplier" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Thêm nhà cung cấp</a>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="table-responsive rounded mb-3">
                                    <form action="findSupplier" method="get" data-toggle="validator">
                                        <div class="mb-3 d-flex justify-content-end">                             
                                            <input type="text" class="form-control" name="nameSup" placeholder="Tìm kiếm nhà cung cấp theo tên" style="max-width: 300px;" />
                                            <button type="submit" class="btn btn-primary mr-2">Tìm kiếm</button>
                                            <a href="listProduct" class="btn btn-primary add-list"><i class="ri-eye-line"></i>Xem toàn bộ nhà cung cấp</a>
                                            <c:if test="${not empty message}">
                                                <div class="alert alert-danger">
                                                    ${message}
                                                </div>
                                            </c:if>
                                        </div>
                                    </form>
                                    <table class="table mb-0 tbl-server-info">
                                        <thead class="bg-white text-uppercase">
                                            <tr class="ligth ligth-data">
                                                <th>Mã</th>
                                                <th>Nhà cung cấp</th>
                                                <th>Tên nhà cung cấp</th>
                                                <th>Địa chỉ</th>
                                                <th>Số điện thoại</th>
                                                <th>Email</th>
                                                <th>Người đại diện</th>
                                                <th>Chức năng khác</th>
                                            </tr>
                                        </thead>
                                        <tbody class="ligth-body">
                                        <c:forEach items="${supplier}" var="sup">
                                            <tr>    
                                                <td>${sup.getId()}</td>
                                                <td><img src="assets/images/supplier/${sup.getImg()}" width="80px" height="80px"/></td>
                                                <td>${sup.getName()}</td>
                                                <td>${sup.getAddress()}</td>
                                                <td>${sup.getPhone()}</td>
                                                <td>${sup.getEmail()}</td>
                                                <td>${sup.getContact()}</td>
                                                <td>
                                                    <div class="d-flex align-items-center list-action">
                                                        <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Chỉnh sửa nhà cung cấp"
                                                           href="updateSupplier?supplier_id=${sup.getId()}"><i class="ri-pencil-line mr-0"></i></a>
                                                        <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Xóa nhà cung cấp"
                                                           href="#" onclick="doDelete(${sup.getId()})"><i class="ri-delete-bin-line mr-0"></i></a>
                                                    </div>
                                                </td>
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