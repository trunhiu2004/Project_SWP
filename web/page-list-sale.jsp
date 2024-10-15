<%@ page import="model.Sale" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Sale List</title>
        <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
        <link rel="stylesheet" href="assets/css/backende209.css?v=1.0.0">
        <link rel="stylesheet" href="assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/fonts/remixicon.css">
        <script src="assets/js/backend-bundle.min.js"></script>
        <script src="assets/js/app.js"></script>
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="components/sidebar.jsp"></jsp:include>     
            <jsp:include page="components/topnavbar.jsp"></jsp:include>
                <div class="content-page">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="d-flex flex-wrap align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-3">Sale List</h4>
                                        <p class="mb-0">Sales enables you to effectively control sales KPIs and monitor them in one central<br>
                                            place while helping teams to reach sales goals. </p>
                                    </div>
                                    <a href="add-sale" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Add Sale</a>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="table-responsive rounded mb-3">
                                    <table class="data-table table mb-0 tbl-server-info">
                                        <thead class="bg-white text-uppercase">
                                            <tr class="ligth ligth-data">
                                                <th>
                                                    Order ID
                                                </th>
                                                <th>Date</th>
                                                <th>Customer</th>
                                                <th>Total</th>
                                                <th>Status</th>
                                                <th>Biller</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody class="ligth-body">
                                        <% List<Sale> sales = (List<Sale>) request.getAttribute("sales"); %>
                                        <% for (Sale sale : sales) { %>
                                        <tr>
                                            <td><%= sale.getOrderId() %></td>
                                            <td><%= sale.getOrderDate() %></td>
                                            <td><%= sale.getCustomerName() %></td>
                                            <td><%= sale.getTotalAmount() %></td>
                                            <td><%= sale.getOrderStatus() %></td>
                                            <td><%= sale.getBillerName() %></td>
                                            <td>
                                                <div class="d-flex align-items-center list-action">
                                                    <a class="badge badge-info mr-2" href="view-sale?orderId=<%= sale.getOrderId() %>" title="View"><i class="ri-eye-line mr-0"></i></a>
                                                    <a class="badge bg-success mr-2" href="edit-sale?orderId=<%= sale.getOrderId() %>" title="Edit"><i class="ri-pencil-line mr-0"></i></a>
                                                    <a class="badge bg-warning mr-2" href="delete-sale?orderId=<%= sale.getOrderId() %>" title="Delete"><i class="ri-delete-bin-line mr-0"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                        <% } %>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Page end  -->
                </div>
            </div>
        </div>
    </div>
</body>
</html>