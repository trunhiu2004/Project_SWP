
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-purchase.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
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
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                <div>
                                    <h4 class="mb-3">Purchase List</h4>
                                    <p class="mb-0">A purchase dashboard enables purchasing manager to efficiently track, evaluate, <br>
                                        and optimize all acquisition processes within a company.</p>
                                </div>
                                <a href="page-add-purchase.html" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add Purchase</a>
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
                                            <th>Date</th>
                                            <th>Reference No</th>
                                            <th>Supplier</th>
                                            <th>Purchase Status</th>
                                            <th>Total</th>
                                            <th>Paid</th>
                                            <th>Balance</th>
                                            <th>Payment Status</th>
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
                                            <td>01 jan 2021</td>
                                            <td>PO201</td>
                                            <td>Fruits Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>50.1</td>
                                            <td>45.1</td>
                                            <td>5.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>05 jan 2021</td>
                                            <td>PO202</td>
                                            <td>Footwear Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>40.5</td>
                                            <td>38.1</td>
                                            <td>2.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>06 jan 2021</td>
                                            <td>PO251</td>
                                            <td>Furniture Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>80.1</td>
                                            <td>35.1</td>
                                            <td>45.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>08 jan 2021</td>
                                            <td>PO261</td>
                                            <td>Food Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>30.1</td>
                                            <td>15.1</td>
                                            <td>15.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>09 jan 2021</td>
                                            <td>PO271</td>
                                            <td>Grocery Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>20.1</td>
                                            <td>7.1</td>
                                            <td>13.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>10 jan 2021</td>
                                            <td>PO101</td>
                                            <td>Packing Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>60.1</td>
                                            <td>40.1</td>
                                            <td>20.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>12 jan 2021</td>
                                            <td>PO122</td>
                                            <td>Fish Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>33.1</td>
                                            <td>13.1</td>
                                            <td>20.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>12 jan 2021</td>
                                            <td>PO123</td>
                                            <td>Cloth Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>10.1</td>
                                            <td>8.1</td>
                                            <td>2.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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
                                            <td>13 jan 2021</td>
                                            <td>PO124</td>
                                            <td>Toy Supply</td>
                                            <td><div class="badge badge-success">Received</div></td>
                                            <td>10.1</td>
                                            <td>5.1</td>
                                            <td>5.00</td>                            
                                            <td><div class="badge badge-warning">Panding</div></td>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-list-purchase.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>