<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:42:55 GMT -->
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
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card card-transparent card-block card-stretch card-height border-none">
                                    <div class="card-body p-0 mt-lg-2 mt-0">
                                        <h3 class="mb-3">Xin Chào Các Bạn</h3>
                                        <p class="mb-0 mr-4">Đây là bảng điều khiển nhé.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="card card-block card-stretch card-height">
                                            <a href="ListSales">
                                                <div  class="card-body">
                                                    <div class="d-flex align-items-center mb-4 card-total-sale">



                                                        <div class="icon iq-icon-box-2 bg-info-light">
                                                            <img src="assets/images/product/1.png" class="img-fluid" alt="image">
                                                        </div>



                                                        <div>
                                                            <p class="mb-2">Số đơn hàng bán được</p>
                                                            <h4>${total}</h4>

                                                    </div>

                                                </div>    

                                                <div class="iq-progress-bar mt-2">
                                                    <span class="bg-info iq-progress progress-1" data-percent="85">
                                                    </span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="card card-block card-stretch card-height">
                                        <div class="card-body">
                                            <div class="d-flex align-items-center mb-4 card-total-sale">
                                                <div class="icon iq-icon-box-2 bg-success-light">
                                                    <img src="assets/images/product/3.png" class="img-fluid" alt="image">
                                                </div>
                                                <div>
                                                    <c:forEach var="sum" items="${requestScope.sum}">
                                                    <p class="mb-2">Tổng doanh thu</p>
                                                                ${sum.totalSales} VNĐ
                                                        
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="iq-progress-bar mt-2">
                                                <span class="bg-success iq-progress progress-1" data-percent="75">
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

                        <div class="col-lg-8">
                            <div class="card card-block card-stretch card-height">
                                <div class="card-header d-flex align-items-center justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Các sản phẩm bán chạy nhất</h4>
                                    </div>
                                    <div class="card-header-toolbar d-flex align-items-center">
                                        <form action="HomeAdmin" method="get">
                                            <div class="dropdown">
                                                <div class="card-header-toolbar d-flex align-items-center">
                                                    <div><a href="BestSellProduct" class="btn btn-primary view-btn font-size-14">Chi tiết</a></div>
                                                </div>
                                                
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <ul class="list-unstyled row top-product mb-0">

                                        <c:forEach var="product" items="${top}">
                                            <li class="col-lg-3">
                                                <div class="card card-block card-stretch card-height mb-0">
                                                    <div class="card-body">
                                                        <div class="bg-warning-light rounded">

                                                            <img src="assets/images/product/${product.productImage}" 
                                                                 class="style-img img-fluid m-auto p-3" 
                                                                 alt="${product.productName}">
                                                        </div>
                                                        <div class="style-text text-left mt-3">

                                                            <h5 class="mb-1">${product.productName}</h5>


                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4">  
                            <div class="card card-transparent card-block card-stretch mb-4">
                                <div class="card-header d-flex align-items-center justify-content-between p-0">
                                    <div class="header-title">
                                        <h4 class="card-title mb-0">Loại hàng bán chạy nhất</h4>
                                    </div>

                                </div>
                            </div>
                            <div class="card card-block card-stretch card-height-helf">
                                <div class="card-body card-item-right">
                                    <div class="d-flex align-items-top">
                                        <div class="bg-warning-light rounded">
                                            <img src="assets/images/product/04.png" class="style-img img-fluid m-auto" alt="image">
                                        </div>
                                        <div class="style-text text-left">
                                            <c:forEach var="item" items="${best}">
                                                <h5 class="mb-2">${item.categoryName}</h5>
                                                <p class="mb-2">Total Sell : ${item.totalCategoryQuantity}</p>

                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>            

                        <div class="col-lg-12">  
                            <div class="card card-block card-stretch card-height">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">Tổng đơn đặt hàng</h4>
                                    </div>                        
                                    <div class="card-header-toolbar d-flex align-items-center">
                                        <div class="dropdown">
                                            
                                        </div>
                                    </div>
                                </div> 
                                <div class="card-body">
                                    <div class="d-flex flex-wrap align-items-center mt-2">
                                        <div class="d-flex align-items-center progress-order-left">
                                            <div class="progress progress-round m-0 orange conversation-bar" data-percent="46">
                                                <span class="progress-left">
                                                    <span class="progress-bar"></span>
                                                </span>
                                                <span class="progress-right">
                                                    <span class="progress-bar"></span>
                                                </span>

                                            </div>
                                            <div class="progress-value ml-3 pr-5 border-right">
                                                <h5>${avg} VNĐ</h5>
                                                <p class="mb-0">Trung bình tiền của 1 đơn hàng</p>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center ml-5 progress-order-right">
                                            <div class="progress progress-round m-100 primary conversation-bar" >
                                                <span class="progress-left">
                                                    <span class="progress-bar"></span>
                                                </span>
                                                <span class="progress-right">
                                                    <span class="progress-bar"></span>
                                                </span>

                                            </div>
                                            <a href="ListOrderMax">
                                                <div class="progress-value ml-3">

                                                    <h5>${max} VNĐ</h5>
                                                    <p class="mb-0">Tiền của đơn hàng cao nhất</p>
                                                </div>
                                            </a>
                                        </div>
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

    <!-- Mirrored from templates.iqonic.design/posdash/html/backend/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 16 Sep 2024 10:43:21 GMT -->
</html>