
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-users.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

        <!-- Favicon -->
        <jsp:include page="components/favicon.jsp"></jsp:include> </head>
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
                        <div class="col-lg-12">
                            <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                <div>
                                    <h4 class="mb-3">User List</h4>
                                    <p class="mb-0">A dashboard provides you an overview of user list with access to the most important data,<br>
                                        functions and controls. </p>
                                </div>
                                <a href="page-add-users.html" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add User</a>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">
                                            <th>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox1">
                                                    <label for="checkbox1" class="mb-0"></label>
                                                </div>
                                            </th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Company</th>
                                            <th>Awors Points</th>
                                            <th>Group</th>
                                            <th>Status</th>
                                            <th>Store</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox2">
                                                    <label for="checkbox2" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Cliff Hanger</td>
                                            <td>cliff@gmail.com</td>
                                            <td>Product Manager</td>
                                            <td>0</td>
                                            <td>Cliff</td>
                                            <td>Active</td>
                                            <td>1</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox3">
                                                    <label for="checkbox3" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Terry Aki</td>
                                            <td>terry@gmail.com</td>
                                            <td>Stock CEO</td>
                                            <td>0</td>
                                            <td>Terry</td>
                                            <td>Active</td>
                                            <td>2</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox4">
                                                    <label for="checkbox4" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Ira Membrit</td>
                                            <td>ira@gmail.com</td>
                                            <td>Stock Manager</td>
                                            <td>0</td>
                                            <td>Ira</td>
                                            <td>Active</td>
                                            <td>3</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox5">
                                                    <label for="checkbox5" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Barb Ackue</td>
                                            <td>barb@gmail.com</td>
                                            <td>Stock Developer</td>
                                            <td>0</td>
                                            <td>Barb</td>
                                            <td>Active</td>
                                            <td>1</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox6">
                                                    <label for="checkbox6" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Max Conversion</td>
                                            <td>max@gmail.com</td>
                                            <td>Stock Manager</td>
                                            <td>0</td>
                                            <td>Max</td>
                                            <td>Active</td>
                                            <td>1</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox7">
                                                    <label for="checkbox7" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Alex john</td>
                                            <td>alex@gmail.com</td>
                                            <td>Product Manager</td>
                                            <td>0</td>
                                            <td>Alex</td>
                                            <td>Active</td>
                                            <td>2</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox8">
                                                    <label for="checkbox8" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Paige Turner</td>
                                            <td>paige@gmail.com</td>
                                            <td>Stock Developer</td>
                                            <td>0</td>
                                            <td>Paige</td>
                                            <td>Active</td>
                                            <td>2</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox9">
                                                    <label for="checkbox9" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Greta Life</td>
                                            <td>greta@gmail.com</td>
                                            <td>Product Manager</td>
                                            <td>0</td>
                                            <td>Greta</td>
                                            <td>Active</td>
                                            <td>4</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox d-inline-block">
                                                    <input type="checkbox" class="checkbox-input" id="checkbox10">
                                                    <label for="checkbox10" class="mb-0"></label>
                                                </div>
                                            </td>
                                            <td>Anna Mull</td>
                                            <td>anna@gmail.com</td>
                                            <td>Stock Manager</td>
                                            <td>0</td>
                                            <td>Anna</td>
                                            <td>Active</td>
                                            <td>1</td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                                       href="#"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"
                                                       href="#"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                                       href="#"><i class="ri-delete-bin-line mr-0"></i></a>
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
                                    <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                                    <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 text-right">
                                <span class="mr-1"><script>document.write(new Date().getFullYear())</script>�</span> <a href="#" class="">POS Dash</a>.
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-users.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>