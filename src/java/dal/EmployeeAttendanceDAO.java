package dal;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class EmployeeAttendanceDAO extends DBContext {

    // Hàm bắt đầu ca làm của nhân viên
    public void startShift(int employeeId, Timestamp loginTime) {
        String sql = "INSERT INTO ShiftManagers (employee_id, shift_start_time, cash_start) VALUES (?, ?, 0)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, employeeId);
            ps.setTimestamp(2, loginTime);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Hàm kết thúc ca làm của nhân viên
    public void endShift(int employeeId, Timestamp logoutTime) {
        String sql = """
            UPDATE ShiftManagers
            SET shift_end_time = ?, 
                total_revenue = ?, 
                total_hours = DATEDIFF(MINUTE, shift_start_time, ?) / 60.0
            WHERE employee_id = ? AND shift_end_time IS NULL
        """;
        try {
            // Lấy thời gian bắt đầu ca
            Timestamp shiftStartTime = getShiftStartTime(employeeId);
    
            // Tính tổng doanh thu cho ca làm
            BigDecimal cashEnd = getTotalOrderAmountForShift(employeeId, shiftStartTime, logoutTime);
    
            // Cập nhật ca làm
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setTimestamp(1, logoutTime);
            ps.setBigDecimal(2, cashEnd);
            ps.setTimestamp(3, logoutTime);
            ps.setInt(4, employeeId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // Lấy thời gian bắt đầu ca làm của nhân viên
    private Timestamp getShiftStartTime(int employeeId) {
        String sql = "SELECT shift_start_time FROM ShiftManagers WHERE employee_id = ? AND shift_end_time IS NULL";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, employeeId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getTimestamp("shift_start_time");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Tính tổng doanh thu cho ca làm
    public BigDecimal getTotalOrderAmountForShift(int employeeId, Timestamp shiftStartTime, Timestamp shiftEndTime) {
        String sql = """
            SELECT SUM(total_order_amount) AS total_amount
            FROM Orders
            WHERE employee_id = ? AND order_time BETWEEN ? AND ?
        """;
        BigDecimal totalAmount = BigDecimal.ZERO;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, employeeId);
            ps.setTimestamp(2, shiftStartTime);
            ps.setTimestamp(3, shiftEndTime);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                totalAmount = rs.getBigDecimal("total_amount");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return totalAmount;
    }

    // Ghi nhận kết thúc ca làm và tính tổng doanh thu
    public void recordShiftEnd(int employeeId, Timestamp shiftEndTime) {
        // Tính tổng doanh thu cho nhân viên trong ca làm
        String sqlCalculateTotalRevenue = "SELECT SUM(order_total_amount) AS totalRevenue " +
                                          "FROM Orders WHERE employee_id = ? AND order_date BETWEEN " +
                                          "(SELECT shift_start_time FROM ShiftManagers WHERE employee_id = ? AND shift_end_time IS NULL) AND ?";
        
        String sqlUpdateShiftEnd = "UPDATE ShiftManagers SET shift_end_time = ?, total_revenue = ? " +
                                   "WHERE employee_id = ? AND shift_end_time IS NULL";
        try (PreparedStatement psCalculateRevenue = connection.prepareStatement(sqlCalculateTotalRevenue);
             PreparedStatement psUpdateShiftEnd = connection.prepareStatement(sqlUpdateShiftEnd)) {

            // Tính tổng doanh thu
            psCalculateRevenue.setInt(1, employeeId);
            psCalculateRevenue.setInt(2, employeeId);
            psCalculateRevenue.setTimestamp(3, shiftEndTime);
            ResultSet rs = psCalculateRevenue.executeQuery();
            BigDecimal totalRevenue = rs.next() ? rs.getBigDecimal("totalRevenue") : BigDecimal.ZERO;

            // Cập nhật thời gian kết thúc ca và tổng doanh thu
            psUpdateShiftEnd.setTimestamp(1, shiftEndTime);
            psUpdateShiftEnd.setBigDecimal(2, totalRevenue);
            psUpdateShiftEnd.setInt(3, employeeId);
            psUpdateShiftEnd.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    
}
