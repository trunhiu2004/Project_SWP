<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                    <div class="container-fluid add-form-list">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <div class="header-title">
                                            <h4 class="card-title">Cập nhật sản phẩm</h4>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                    <form action="productExpired" method="post" data-toggle="validator">
                                        <div class="row">
                                            <input type="hidden" name="idPro" value="${productExpired.getId()}">                                                 
                                            <div class="col-md-6">                      
                                                <div class="form-group">
                                                    <label>Tên *</label>
                                                    <input type="text" readonly name="namePro" class="form-control" value="${productExpired.getName()}">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>                                            
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Giảm giá (%)</label>
                                                    <input type="number" name="discount" class="form-control" value="">
                                                    <div class="help-block with-errors"></div>
                                                </div>                                           
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary mr-2">Cật nhật</button>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-add-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>