
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                            <h4 class="card-title">Add to Inventory</h4>
                                        </div>
                                        <a href="listInventory" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>List Inventory</a>
                                    </div>
                                    <div class="card-body">
                                    <c:set var="i" value="${inventory}"/>
                                    <form action="importProduct" method="post" data-toggle="validator" enctype="multipart/form-data">
                                        <input type="hidden" name="idInven" value="${i.getId()}">
                                        <div class="row">
                                            <div class="col-md-6">                      
                                                <div class="form-group">
                                                    <label>Name *</label>
                                                    <input type="text" readonly name="namePro" class="form-control" value="${i.getProduct().getName()}">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">                      
                                                <div class="form-group">
                                                    <label>Category *</label>
                                                    <input type="hidden" name="catePro" value="${i.getProduct().getProductCategories().getId()}">
                                                    <input type="text" readonly name="cateProduct" class="form-control" value="${i.getProduct().getProductCategories().getName()}">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">                      
                                                <div class="form-group">
                                                    <label>Supplier *</label>
                                                    <input type="hidden" name="supPro" value="${i.getProduct().getProductCategories().getId()}">
                                                    <input type="text" readonly name="supProduct" class="form-control" value="${i.getProduct().getSuppliers().getName()}">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">                      
                                                <div class="form-group">
                                                    <label>Unit *</label>
                                                    <input type="hidden" name="unitPro" value="${i.getProduct().getProductCategories().getId()}">
                                                    <input type="text" readonly name="unitProduct" class="form-control" value="${i.getProduct().getWeightUnit().getName()}">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                        </div>         
                                        <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Barcode</label>
                                                <input type="text" name="barcode" class="form-control" placeholder="Enter Barcode" data-errors="Please Enter Barcode." required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>            
                                                    
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Price</label>
                                                <input type="number" name="pricePro" class="form-control" placeholder="Enter Price" data-errors="Please Enter Price." required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="manufactureDate">manufactureDate:</label><br>
                                                    <input type="date" id="manufactureDate" name="manufactureDate" value="${p.getManufactureDate()}"><br><br>
                                                </div>
                                            </div>

                                        <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="expirationDate">expirationDate:</label><br>
                                                    <input type="date" id="expirationDate" name="expirationDate" value="${p.getExpirationDate()}"><br><br>
                                                </div>
                                        </div>     
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Image</label>
                                                <input type="file" class="form-control image-file" name="imgPro" accept="image/*">
                                            </div>
                                        </div>
                                        </div>        
                                        <button type="submit" class="btn btn-primary mr-2">Import to Inventory</button>
                                        <button type="reset" class="btn btn-danger">Reset</button>
                                    </form>

                                </div>                            

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