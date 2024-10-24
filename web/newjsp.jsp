<%-- 
    Document   : newjsp
    Created on : Oct 25, 2024, 12:39:18 AM
    Author     : pqtru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach var="product" items="${top}">
                    
                       ${product.name}">
                               
                            
                </c:forEach>
    </body>
</html>
