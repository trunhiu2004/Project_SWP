package dal;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class EmployeeAttendanceDAO extends DBContext {

    public void recordLoginTime(int employeeId, Timestamp loginTime) {
        String sql = "INSERT INTO EmployeeAttendance (employee_id, login_time) VALUES (?, ?)";
        try {
            
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, employeeId);
            ps.setTimestamp(2, loginTime);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    public void recordLogoutTime(int employeeId) {
    String sql = "UPDATE EmployeeAttendance SET logout_time = ? WHERE employee_id = ? AND logout_time IS NULL";
    try {
        
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
        ps.setInt(2, employeeId);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

    
}
