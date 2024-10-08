
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-add-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>

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
                                        <h4 class="card-title">Add Product</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="https://templates.iqonic.design/posdash/html/backend/page-list-product.html" data-toggle="validator">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Product Type *</label>
                                                    <select name="type" class="selectpicker form-control" data-style="py-0">
                                                        <option>Standard</option>
                                                        <option>Combo</option>
                                                        <option>Digital</option>
                                                        <option>Service</option>
                                                    </select>
                                                </div> 
                                            </div>  
                                            <div class="col-md-6">                      
                                                <div class="form-group">
                                                    <label>Name *</label>
                                                    <input type="text" class="form-control" placeholder="Enter Name" data-errors="Please Enter Name." required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>    
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Code *</label>
                                                    <input type="text" class="form-control" placeholder="Enter Code" data-errors="Please Enter Code." required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div> 
                                            <div class="col-md-6"> 
                                                <div class="form-group">
                                                    <label>Barcode Symbology *</label>
                                                    <select name="type" class="selectpicker form-control" data-style="py-0">
                                                        <option>CREM01</option>
                                                        <option>UM01</option>
                                                        <option>SEM01</option>
                                                        <option>COF01</option>
                                                        <option>FUN01</option>
                                                        <option>DIS01</option>
                                                        <option>NIS01</option>
                                                    </select>
                                                </div>
                                            </div> 
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Category *</label>
                                                    <select name="type" class="selectpicker form-control" data-style="py-0">
                                                        <option>Beauty</option>
                                                        <option>Grocery</option>
                                                        <option>Food</option>
                                                        <option>Furniture</option>
                                                        <option>Shoes</option>
                                                        <option>Frames</option>
                                                        <option>Jewellery</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Cost *</label>
                                                    <input type="text" class="form-control" placeholder="Enter Cost" data-errors="Please Enter Cost." required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Price *</label>
                                                    <input type="text" class="form-control" placeholder="Enter Price" data-errors="Please Enter Price." required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Tax Method *</label>
                                                    <select name="type" class="selectpicker form-control" data-style="py-0">
                                                        <option>Exclusive</option>
                                                        <option>Inclusive</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12">                                    
                                                <div class="form-group">
                                                    <label>Quantity *</label>
                                                    <input type="text" class="form-control" placeholder="Enter Quantity" required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Image</label>
                                                    <input type="file" class="form-control image-file" name="pic" accept="image/*">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Description / Product Details</label>
                                                    <textarea class="form-control" rows="4"></textarea>
                                                </div>
                                            </div>
                                        </div>                            
                                        <button type="submit" class="btn btn-primary mr-2">Add Product</button>
                                        <button type="reset" class="btn btn-danger">Reset</button>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/page-add-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:35 GMT -->
</html>