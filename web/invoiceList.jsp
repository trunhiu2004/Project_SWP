<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Invoice" %>
<%@ page import="java.util.List" %>

<c:set var="queryString" value=""/>
<c:if test="${not empty searchKeyword}">
    <c:set var="queryString" value="${queryString}&search=${searchKeyword}"/>
</c:if>
<c:if test="${not empty selectedStatus}">
    <c:set var="queryString" value="${queryString}&status=${selectedStatus}"/>
</c:if>
<c:if test="${not empty startDate}">
    <c:set var="queryString" value="${queryString}&startDate=${startDate}"/>
</c:if>
<c:if test="${not empty endDate}">
    <c:set var="queryString" value="${queryString}&endDate=${endDate}"/>
</c:if>
<c:if test="${not empty selectedPaymentMethod}">
    <c:set var="queryString" value="${queryString}&paymentMethod=${selectedPaymentMethod}"/>
</c:if>
<c:if test="${not empty sessionScope.successMessage}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        ${sessionScope.successMessage}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% session.removeAttribute("successMessage"); %>
</c:if>

<c:if test="${not empty sessionScope.errorMessage}">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        ${sessionScope.errorMessage}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% session.removeAttribute("errorMessage"); %>
</c:if>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Invoice List</title>
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
                        <!-- Filter Section -->
                        <div class="row mb-4">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <form method="get" action="invoice" class="row">
                                            <div class="col-md-2">
                                                <input type="text" class="form-control" name="search" 
                                                       value="${searchKeyword}" placeholder="Search...">
                                        </div>
                                        <div class="col-md-2">
                                            <select class="form-control" name="status">
                                                <option value="All Status">All Status</option>
                                                <c:forEach items="${statuses}" var="stat">
                                                    <option value="${stat}" ${stat eq selectedStatus ? 'selected' : ''}>
                                                        ${stat}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <input type="date" class="form-control" name="startDate" 
                                                   value="${startDate}" placeholder="Start Date">
                                        </div>
                                        <div class="col-md-2">
                                            <input type="date" class="form-control" name="endDate" 
                                                   value="${endDate}" placeholder="End Date">
                                        </div>
                                        <div class="col-md-2">
                                            <select class="form-control" name="paymentMethod">
                                                <option value="All Payment Method">All Payment Method</option>
                                                <c:forEach items="${paymentMethods}" var="method">
                                                    <option value="${method}" ${method eq selectedPaymentMethod ? 'selected' : ''}>
                                                        ${method}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <button type="submit" class="btn btn-primary">Filter</button>
                                            <button type="button" class="btn btn-secondary" onclick="clearFilters()">Clear</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Table Section -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive rounded mb-3">
                                <table class="data-table table mb-0 tbl-server-info">
                                    <thead class="bg-white text-uppercase">
                                        <tr class="ligth ligth-data">
                                            <th>Invoice ID</th>
                                            <th>Invoice Date</th>
                                            <th>Total Amount</th>
                                            <th>Status</th>
                                            <th>Employee Name</th>
                                            <th>Customer Name</th>
                                            <th>Payment Method</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody class="ligth-body">
                                        <%
                                            List<Invoice> invoices = (List<Invoice>) request.getAttribute("invoices");
                                            if (invoices == null || invoices.isEmpty()) {
                                                out.println("<tr><td colspan='7'>No invoices found.</td></tr>");
                                            } else {
                                                for (Invoice invoice : invoices) {
                                        %>
                                        <tr>
                                            <td><%= invoice.getInvoiceId() %></td>
                                            <td><%= invoice.getInvoiceDate() %></td>
                                            <td><fmt:formatNumber value="<%= invoice.getTotalAmount() %>" pattern="#,##0" />₫</td>
                                            <td><%= invoice.getStatus() %></td>
                                            <td><%= invoice.getEmployeeName() %></td>
                                            <td><%= invoice.getCustomerName() %></td>
                                            <td><%= invoice.getPaymentMethodName() %></td>
                                            <td>
                                                <a class="badge badge-info" href="invoice-detail?invoiceId=<%= invoice.getInvoiceId() %>" 
                                                   style="text-decoration: none;">
                                                    <i class="fas fa-eye"></i> View
                                                </a>


                                                <button onclick="confirmDelete(${invoice.invoiceId})" class="btn btn-danger btn-sm">
                                                    <i class="fas fa-trash"></i> Delete
                                                </button>
                                            </td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Pagination -->
                            <div class="d-flex justify-content-center">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                            <a class="page-link" href="invoice?page=${currentPage - 1}${queryString}">Previous</a>
                                        </li>

                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}">
                                                <a class="page-link" href="invoice?page=${i}${queryString}">${i}</a>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                            <a class="page-link" href="invoice?page=${currentPage + 1}${queryString}">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            // Format dates to yyyy-MM-dd for input[type="date"]
            function formatDateForInput(dateStr) {
                if (!dateStr)
                    return '';
                const date = new Date(dateStr);
                return date.toISOString().split('T')[0];
            }

// Clear all filters
            function clearFilters() {
                document.querySelector('input[name="search"]').value = '';
                document.querySelector('select[name="status"]').value = 'All Status';
                document.querySelector('input[name="startDate"]').value = '';
                document.querySelector('input[name="endDate"]').value = '';
                document.querySelector('select[name="paymentMethod"]').value = 'All Payment Method';
                document.querySelector('form').submit();
            }

// Format dates on page load
            window.onload = function () {
                const startDate = document.querySelector('input[name="startDate"]');
                const endDate = document.querySelector('input[name="endDate"]');
                if (startDate.value)
                    startDate.value = formatDateForInput(startDate.value);
                if (endDate.value)
                    endDate.value = formatDateForInput(endDate.value);
            }
            function encodeQueryData(data) {
                return Object.keys(data)
                        .filter(key => data[key] !== null && data[key] !== undefined && data[key] !== '')
                        .map(key => encodeURIComponent(key) + '=' + encodeURIComponent(data[key]))
                        .join('&');
            }
            function getCleanUrl(baseUrl, params) {
                const cleanParams = {};
                for (const [key, value] of Object.entries(params)) {
                    if (value && value.trim() !== '') {
                        cleanParams[key] = value.trim();
                    }
                }
                const queryString = new URLSearchParams(cleanParams).toString();
                return queryString ? `${baseUrl}?${queryString}` : baseUrl;
                    }
                    function confirmDelete(invoiceId) {
                        if (confirm('Are you sure you want to delete this invoice? This action cannot be undone.')) {
                            window.location.href = 'delete-invoice?invoiceId=' + invoiceId;
                        }
                    }
        </script>
    </body>
</html>
