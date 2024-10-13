

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backend.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">  </head>
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
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <div class="header-title">
                                            <h4 class="card-title">User List</h4>
                                        </div>
                                        <a href="promotionAdd" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add Promotion</a>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div class="row justify-content-between">
                                                <div class="col-sm-6 col-md-6">
                                                    <div id="user_list_datatable_info" class="dataTables_filter">
                                                        <form action="promotionManage" method="post" class="mr-3 position-relative">
                                                            <div class="form-group mb-0">
                                                                <input type="search" class="form-control" id="exampleInputSearch" placeholder="Search"
                                                                       aria-controls="user-list-table" name="search">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>

                                            </div>
                                            <table id="user-list-table" class="table table-striped dataTable mt-4" role="grid"
                                                   aria-describedby="user-list-page-info">
                                                <thead>
                                                    <tr class="ligth">
                                                        <th>Code</th>
                                                        <th>Description</th>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                        <th>Discount (%)</th>
                                                        <th>Status</th>
                                                        <th style="min-width: 100px">Action</th>
                                                    </tr>
                                                </thead>
                                            <c:forEach items="${listPromotion}" var="promotion">
                                                <tbody>
                                                    <tr>
                                                        <td>${promotion.promotion_name}</td>
                                                        <td>${promotion.description}</td>
                                                        <td>${promotion.start_date}</td>
                                                        <td>${promotion.end_date}</td>
                                                        <td>${promotion.discount_value}</td>
                                                        <td>
                                                            <span class="badge bg-primary">${promotion.status}</span>
                                                        </td>
                                                        <td>
                                                            <div class="flex align-items-center list-user-action">

                                                                <a class="btn btn-sm bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Update" href="promotionUpdate?id=${promotion.promotion_id}"><i class="ri-pencil-line mr-0"></i></a>
                                                                <a class="btn btn-sm bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="Delete" href="#" onclick="doDelete(${promotion.promotion_id})"><i class="ri-delete-bin-line mr-0"></i></a>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                </tbody>

                                            </c:forEach>
                                        </table>
                                    </div>
                                    <div class="row justify-content-between mt-3">
                                        <div id="user-list-page-info" class="col-md-6">
                                            <span>Showing 1 to 5 of 5 entries</span>
                                        </div>
                                        <div class="col-md-6">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination justify-content-end mb-0">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                                    </li>
                                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#">Next</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
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
                                    <li class="list-inline-item"><a href="backend/privacy-policy.html">Privacy Policy</a></li>
                                    <li class="list-inline-item"><a href="backend/terms-of-service.html">Terms of Use</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 text-right">
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>©</span> <a href="#" class="">POS Dash</a>.
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
                                            window.location = "promotionDelete?id=" + id;
                                        }
                                    }
        </script>
    </body>
</html>