<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Admin</title>

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
                <div class="modal fade" id="new-order" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="popup text-left">
                                    <h4 class="mb-3">New Order</h4>
                                    <div class="content create-workform bg-body">
                                        <div class="pb-3">
                                            <label class="mb-2">Email</label>
                                            <input type="text" class="form-control" placeholder="Enter Name or Email">
                                        </div>
                                        <div class="col-lg-12 mt-4">
                                            <div class="d-flex flex-wrap align-items-ceter justify-content-center">
                                                <div class="btn btn-primary mr-4" data-dismiss="modal">Cancel</div>
                                                <div class="btn btn-outline-primary" data-dismiss="modal">Create</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      <div class="content-page">
                    <div class="container-fluid add-form-list">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <div class="header-title">
                                            <h4 class="card-title">Thêm sản phẩm mới lên cửa hàng</h4>
                                        </div>
                                        <a href="listStoreStock" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Danh sách sản phẩm trong cửa hàng</a>
                                    </div>
                                    <div class="card-body">
                                        <form action="exportNewToStore" method="post" data-toggle="validator">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">   
                                                        <label>Tên sản phẩm</label>
                                                        <select name="idInven" class="selectpicker form-control" data-style="py-0">
                                                        <c:forEach items="${inventory}" var="i">
                                                            <option value="${i.getId()}">
                                                                ${i.getProduct().getName()} - Lô: ${i.getProduct().getBatch()}
                                                                - Số lượng trong kho: ${i.getCurrentStock()}
                                                            </option>
                                                        </c:forEach>  
                                                        </select>
                                                </div>
                                            </div> 
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Số lượng</label>
                                                    <input type="number" name="quantity" class="form-control" placeholder="Nhập số lượng" data-errors="Please Enter Quantity." required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <c:if test="${not empty errorMessage}">
                                                <div class="alert alert-danger">
                                                    ${errorMessage}
                                                </div>
                                            </c:if>
                                        </div>                            
                                        <button type="submit" class="btn btn-primary mr-2">Thêm sản phẩm mới lên cửa hàng</button>
                                        <button type="reset" class="btn btn-danger">Làm mới </button>
                                    </form>
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