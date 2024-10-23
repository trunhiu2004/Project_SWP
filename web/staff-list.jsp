

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
                </div>      
                <div class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="d-flex flex-wrap flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Product Discount List</h4>
                                        <p class="mb-0">The product list effectively dictates product presentation and provides space<br> to list your products and offering in the most appealing way.</p>
                                    </div>
                                    <a href="addProduct" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add Product</a>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="table-responsive rounded mb-3">
                                    <table class="data-tables table mb-0 tbl-server-info">
                                        <thead class="bg-white text-uppercase">
                                            <tr class="ligth ligth-data">
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
                                                                    <span class="badge bg-primary">${accountStatus.getStatus_name()}</span> 
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if>
                                                    </c:forEach>

                                                </td>
                                                <td>
                                                    <div class="flex align-items-center list-user-action">

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
                <!-- Modal Edit -->
                <div class="modal fade" id="edit-note" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="popup text-left">
                                    <div class="media align-items-top justify-content-between">                            
                                        <h3 class="mb-3">Product</h3>
                                        <div class="btn-cancel p-0" data-dismiss="modal"><i class="las la-times"></i></div>
                                    </div>
                                    <div class="content edit-notes">
                                        <div class="card card-transparent card-block card-stretch event-note mb-0">
                                            <div class="card-body px-0 bukmark">
                                                <div class="d-flex align-items-center justify-content-between pb-2 mb-3 border-bottom">                                                    
                                                    <div class="quill-tool">
                                                    </div>
                                                </div>
                                                <div id="quill-toolbar1">
                                                    <p>Virtual Digital Marketing Course every week on Monday, Wednesday and Saturday.Virtual Digital Marketing Course every week on Monday</p>
                                                </div>
                                            </div>
                                            <div class="card-footer border-0">
                                                <div class="d-flex flex-wrap align-items-ceter justify-content-end">
                                                    <div class="btn btn-primary mr-3" data-dismiss="modal">Cancel</div>
                                                    <div class="btn btn-outline-primary" data-dismiss="modal">Save</div>
                                                </div>
                                            </div>
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
                                        if (confirm("Are you sure delete category which has id =" + id)) {
                                            window.location = "staffDelete?id=" + id;
                                        }
                                    }
        </script>
    </body>
</html>