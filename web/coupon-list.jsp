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
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="d-flex flex-wrap flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Danh sách phiếu giảm giá</h4>
                                    </div>
                                    <a href="couponAdd" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add Coupon</a>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <form method="post" action="couponManage" class="row">
                                                <!-- Coupon Code Filter -->
                                                <div class="col-md-2">
                                                    <input type="text" class="form-control" name="couponCode" 
                                                           value="${couponCode}" placeholder="Search Coupon">
                                            </div>

                                            <!-- Coupon Status Filter -->
                                            <div class="col-md-2">
                                                <select class="form-control" name="couponStatus">
                                                    <option value="All Status" ${"All Status".equals(couponStatuss) ? "selected" : ""}>All Status</option>
                                                    <c:forEach items="${statuses}" var="status">
                                                        <option value="${status}" ${status.equals(couponStatuss) ? "selected" : ""}>${status}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <!-- Start Date Filter -->
                                            <div class="col-md-2">
                                                <input type="date" class="form-control" name="startDate" 
                                                       value="${startDate}" placeholder="Start Date">
                                            </div>

                                            <!-- End Date Filter -->
                                            <div class="col-md-2">
                                                <input type="date" class="form-control" name="endDate" 
                                                       value="${endDate}" placeholder="End Date">
                                            </div>

                                            <!-- Discount Amount Filter -->
                                            <div class="col-md-2">
                                                <input type="number" class="form-control" step="0.1" name="discountAmount" 
                                                       value="${discountAmount}" placeholder="Discount Amount">
                                            </div>

                                            <!-- Filter and Clear Buttons -->
                                            <div class="col-md-2">
                                                <button type="submit" class="btn btn-primary">Search</button>
                                                <a href="couponManage" class="btn btn-secondary">Clear</a>
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
                                        <tr class="ligth ligth-data">
                                            <th>Code</th>
                                            <th>Discount Amount (%)</th>
                                            <th>Start Date</th>
                                            <th>Coupon End Date</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <c:forEach items="${listCoupon}" var="coupon">
                                        <tbody class="ligth-body">
                                            <tr>

                                                <td>${coupon.coupon_code}</td>
                                                <td>${coupon.discount_amount}</td>
                                                <td>${coupon.coupon_start_date}</td>
                                                <td>${coupon.coupon_end_date}</td>
                                                <td>
                                                    <c:set var="statusClass" value="${coupon.coupon_status == 'Active' ? 'bg-primary' : 'bg-warning'}" />
                                                    <span class="badge ${statusClass}">${coupon.coupon_status}</span>
                                                </td>
                                                <td>
                                                    <div class="flex align-items-center list-user-action">

                                                        <a class="btn btn-sm bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                           data-original-title="Update" href="couponUpdate?id=${coupon.coupon_id}"><i class="ri-pencil-line mr-0"></i></a>
                                                        <a class="btn btn-sm bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                           data-original-title="Delete" href="#" onclick="doDelete(${coupon.coupon_id})"><i class="ri-delete-bin-line mr-0"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Page end  -->
                </div>

            </div>
        </div>
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

        <script type="text/javascript">
                                                               function doDelete(id) {
                                                                   if (confirm("Are you sure delete coupon which has id =" + id)) {
                                                                       window.location = "couponDelete?id=" + id;
                                                                   }
                                                               }
        </script>
    </body>

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>