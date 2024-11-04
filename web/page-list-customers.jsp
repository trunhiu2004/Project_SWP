<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
        <html lang="en">

        <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-customers.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>POS Admin</title>

            <!-- Favicon -->
            <link rel="shortcut icon" href="https://templates.iqonic.design/posdash/html/assets/images/favicon.ico" />
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
                                <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Danh sách khách hàng</h4>
                                        
                                        <div class="iq-search-bar device-search">
                                            
                                            
                                <form action="SearchCustomer" method="post" class="searchbox">
                                    <a type = "submit" class="search-link"><i class="ri-search-line"></i></a>
                                    <input name="txt" type="text" class="text search-input" placeholder="Tìm kiếm ở đây...">
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

                                                <th>Tên</th>
                                                <th>Số điện thoại </th>
                                                <th>Điểm</th>
                                                <th>Xếp hạng khách hàng</th>
                                                
                                                <th>Chức năng</th>

                                            </tr>
                                        </thead>
                                        <tbody class="ligth-body">
                                            <tr>
                                            <c:forEach var="customer" items="${requestScope.customer}">
                                                <tr>
                                                    <td>${customer.customerName}</td>
                                                    <td>${customer.customerPhone}</td>
                                                    <td>${customer.point}</td>
                                                    <td>${customer.typeName}</td>
                                                    
                                                    <td>
                                                        <div class="d-flex align-items-center list-action">
                                                            
                                                            <a class="badge bg-success mr-2" data-toggle="tooltip"
                                                                data-placement="top" title="" data-original-title="Sửa đổi"
                                                                href="EditCustomer?id=${customer.customerId}"><i class="ri-pencil-line mr-0"></i></a>
                                                            <a class="badge bg-warning mr-2" data-toggle="tooltip"
                                                                data-placement="top" title=""
                                                                data-original-title="Xóa" href="DeleteCustomerServlet?id=${customer.customerId}"><i
                                                                    class="ri-delete-bin-line mr-0"></i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                                </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- Page end  -->
                        <div class="row justify-content-between mt-3">
                                        
                                    </div>
                    </div>
                    <!-- Modal Edit -->
                    <div class="modal fade" id="edit-note" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div class="popup text-left">
                                        <div class="media align-items-top justify-content-between">
                                            <h3 class="mb-3">Product</h3>
                                            <div class="btn-cancel p-0" data-dismiss="modal"><i
                                                    class="las la-times"></i></div>
                                        </div>
                                        <div class="content edit-notes">
                                            <div class="card card-transparent card-block card-stretch event-note mb-0">
                                                <div class="card-body px-0 bukmark">
                                                    <div
                                                        class="d-flex align-items-center justify-content-between pb-2 mb-3 border-bottom">
                                                        <div class="quill-tool">
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
                                            <div
                                                class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                                <div>
                                                    <h4 class="mb-3">Customer List</h4>
                                                    <p class="mb-0">A customer dashboard lets you easily gather and
                                                        visualize customer data from optimizing <br>
                                                        the customer experience, ensuring customer retention. </p>
                                                </div>
                                                <a href="addCustomer.jsp" class="btn btn-primary add-list"><i
                                                        class="las la-plus mr-3"></i>Add Customer</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="table-responsive rounded mb-3">
                                                <table class="data-table table mb-0 tbl-server-info">
                                                    <thead class="bg-white text-uppercase">
                                                        <tr class="ligth ligth-data">
                                                            <th>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox1">
                                                                    <label for="checkbox1" class="mb-0"></label>
                                                                </div>
                                                            </th>
                                                            <th>Name</th>
                                                            <th>Email</th>
                                                            <th>Phone No.</th>
                                                            <th>Country</th>
                                                            <th>Order</th>
                                                            <th>Status</th>
                                                            <th>Last Order</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody class="ligth-body">
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox2">
                                                                    <label for="checkbox2" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Max Conversion</td>
                                                            <td>max@gmail.com</td>
                                                            <td>0123456789</td>
                                                            <td>USA</td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>1</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox3">
                                                                    <label for="checkbox3" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Alex john</td>
                                                            <td>alex@gmail.com</td>
                                                            <td>0123456123</td>
                                                            <td>USA</td>
                                                            <td>3</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox4">
                                                                    <label for="checkbox4" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Cliff Hanger</td>
                                                            <td>cliff@gmail.com</td>
                                                            <td>0189556789</td>
                                                            <td>UK</td>
                                                            <td>3</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>3</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox5">
                                                                    <label for="checkbox5" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Terry Aki</td>
                                                            <td>terry@gmail.com</td>
                                                            <td>0123205789</td>
                                                            <td>USA</td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox6">
                                                                    <label for="checkbox6" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Rock lai</td>
                                                            <td>rock@gmail.com</td>
                                                            <td>0123452289</td>
                                                            <td>UK</td>
                                                            <td>3</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>1</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox7">
                                                                    <label for="checkbox7" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Pete Sariya</td>
                                                            <td>pete@gmail.com</td>
                                                            <td>0111456789</td>
                                                            <td>USA</td>
                                                            <td>5</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>4</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox8">
                                                                    <label for="checkbox8" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Ira Membrit</td>
                                                            <td>ira@gmail.com</td>
                                                            <td>0123458719</td>
                                                            <td>UK</td>
                                                            <td>4</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox9">
                                                                    <label for="checkbox9" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Barb Ackue</td>
                                                            <td>barb@gmail.com</td>
                                                            <td>0123246789</td>
                                                            <td>USA</td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>2</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox d-inline-block">
                                                                    <input type="checkbox" class="checkbox-input"
                                                                        id="checkbox10">
                                                                    <label for="checkbox10" class="mb-0"></label>
                                                                </div>
                                                            </td>
                                                            <td>Paige Turner</td>
                                                            <td>paige@gmail.com</td>
                                                            <td>0125856789</td>
                                                            <td>UK</td>
                                                            <td>9</td>
                                                            <td>
                                                                <div class="badge badge-warning">Pending</div>
                                                            </td>
                                                            <td>7</td>
                                                            <td>
                                                                <div class="d-flex align-items-center list-action">
                                                                    <a class="badge badge-info mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="View" href="#"><i
                                                                            class="ri-eye-line mr-0"></i></a>
                                                                    <a class="badge bg-success mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Edit" href="#"><i
                                                                            class="ri-pencil-line mr-0"></i></a>
                                                                    <a class="badge bg-warning mr-2"
                                                                        data-toggle="tooltip" data-placement="top"
                                                                        title="" data-original-title="Delete"
                                                                        href="#"><i
                                                                            class="ri-delete-bin-line mr-0"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
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
                                                        <div class="btn-cancel p-0" data-dismiss="modal"><i
                                                                class="las la-times"></i></div>
                                                    </div>
                                                    <div class="content edit-notes">
                                                        <div
                                                            class="card card-transparent card-block card-stretch event-note mb-0">
                                                            <div class="card-body px-0 bukmark">
                                                                <div
                                                                    class="d-flex align-items-center justify-content-between pb-2 mb-3 border-bottom">
                                                                    <div class="quill-tool">
                                                                    </div>
                                                                </div>
                                                                <div id="quill-toolbar1">
                                                                    <p>Virtual Digital Marketing Course every week on
                                                                        Monday, Wednesday and Saturday.Virtual Digital
                                                                        Marketing Course every week on Monday</p>
                                                                </div>
                                                            </div>
                                                            <div class="card-footer border-0">
                                                                <div
                                                                    class="d-flex flex-wrap align-items-ceter justify-content-end">
                                                                    <div class="btn btn-primary mr-3"
                                                                        data-dismiss="modal">Cancel</div>
                                                                    <div class="btn btn-outline-primary"
                                                                        data-dismiss="modal">Save</div>
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
                                                    <li class="list-inline-item"><a href="privacy-policy.html">Privacy
                                                            Policy</a></li>
                                                    <li class="list-inline-item"><a href="terms-of-service.html">Terms
                                                            of Use</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-6 text-right">
                                                <span class="mr-1">
                                                    <script>document.write(new Date().getFullYear())</script>�
                                                </span> <a href="#" class="">POS Admin</a>.
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

        <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-customers.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->

        </html>