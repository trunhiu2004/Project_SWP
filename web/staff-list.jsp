<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are you sure delete category which has id =" + id)) {
                    window.location = "staffDelete?id=" + id;
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
                                        <h4 class="mb-3">Danh sách nhân viên</h4>
                                    </div>


                                </div>
                            </div>
                            <div class="row mb-4">
                                <div>
                                    <div class="card">
                                        <div class="card-body">
                                            <form method="post" action="staffManage" class="row">
                                                <!-- Coupon Code Filter -->
                                                <div>
                                                    <input type="text" class="form-control" name="staffName" 
                                                           value="${staffName}" placeholder="Tìm nhân viên">
                                            </div>

                                            
                                            <div>
                                                <button type="submit" class="btn btn-primary">Search</button>
                                                <a href="staffManage" class="btn btn-secondary">Clear</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth">
                                            <th>Name</th>
                                            <th>Contact</th>
                                            <th>Email</th>
                                            <th>Status</th>

                                            <th style="min-width: 100px">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <c:forEach items="${listEmployee}" var="employee">
                                            <tr>
                                                <td>${employee.getEmployee_name()}</td>
                                                <td>${employee.getEmployee_phone()}</td>
                                                <td>
                                                    <c:forEach items="${listAccount}" var="account">
                                                        <c:if test="${account.getAccount_id() == employee.getAccount_id()}">
                                                            ${account.getEmail()}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${listAccount}" var="account">
                                                        <c:if test="${account.getAccount_id() == employee.getAccount_id()}">
                                                            <c:forEach items="${listAccountStatus}" var="accountStatus">
                                                                <c:if test="${accountStatus.getStatus_id() == account.getStatus_id()}">
                                                                    <c:choose>
                                                                        <c:when test="${accountStatus.getStatus_id() == 1}">
                                                                            <span class="badge bg-primary">${accountStatus.getStatus_name()}</span> 
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <span class="badge bg-warning text-dark">${accountStatus.getStatus_name()}</span> 
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if>
                                                    </c:forEach>


                                                </td>
                                                <td>
                                                    <div class="flex align-items-center list-user-action">

                                                        <a class="btn btn-sm bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                           data-original-title="Update" href="staffUpdate?id=${employee.getEmployee_id()}"><i class="ri-pencil-line mr-0"></i></a>
                                                        <a class="btn btn-sm bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                           data-original-title="Delete" href="#" onclick="doDelete(${employee.getEmployee_id()})"><i class="ri-delete-bin-line mr-0"></i></a>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>