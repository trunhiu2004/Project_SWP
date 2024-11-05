<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  

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
     <div class="container-fluid add-form-list">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">Sửa đổi cửa hàng</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="EditShop" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="shop_id" value="${shop.shopId}">
                            <div class="row">                                  
                                <div class="col-md-6">                      
                                    <div class="form-group">
                                        <label>Tên cửa hàng *</label>
                                        <input type="text" class="form-control" name="shop_name" value="${shop.shopName}" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Địa chỉ cửa hàng *</label>
                                        <input type="text" class="form-control" name="shop_address" value="${shop.shopAddress}" required>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div> 
                                        
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Số điện thoại cửa hàng *</label>
                                        <input type="text" class="form-control" name="shop_phone" value="${shop.shopPhone}" required>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div> 
                                        
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email *</label>
                                        <input type="text" class="form-control" name="shop_email" value="${shop.shopEmail}" required>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>   
                                        
                                        
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Giờ mở cửa *</label>
                                        <input type="text" class="form-control" name="shop_opening_hours" value="${shop.shopOpeningHours}" required>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>  
                                        
                               
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Hình ảnh *</label>
                                        
                                        <input type="file" class="form-control image-file" name="shop_logo" accept="image/*">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>  
                                        

                                
                            </div>                            
                            <button type="submit" class="btn btn-primary mr-2" >Lưu</button>
                            
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