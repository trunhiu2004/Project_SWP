<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <link rel="stylesheet" href="assets/css/edit-employee.css"> 
</head>
<body>
    <div class="container">
        <h2>Edit Employee</h2>
        <form action="EditEmployee" method="post"> 
            <input type="hidden" name="employee_id" value="${employee.employee_id}"> <!-- Hidden field để lưu ID nhân viên -->
            <div>
                <label>Name:</label>
                <input type="text" name="employee_name" value="${employee.employee_name}" required>
            </div>
            <div>
                <label>Phone:</label>
                <input type="text" name="employee_phone" value="${employee.employee_phone}" required>
            </div>
            <div>
                <label>Address:</label>
                <input type="text" name="employee_address" value="${employee.employee_address}" required>
            </div>
            <div>
                <button type="submit">Update</button>
                <a href="employee-list.jsp">Cancel</a> 
            </div>
        </form>
    </div>
</body>
</html>
