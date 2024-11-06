package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Shift;

public class ShiftDAO extends DBContext {

    // Lấy tất cả các ca làm
    public List<Shift> getAll() {
        List<Shift> list = new ArrayList<>();
        String sql = "SELECT ShiftManagers.*, Employees.employee_name "
                   + "FROM ShiftManagers "
                   + "JOIN Employees ON ShiftManagers.employee_id = Employees.employee_id";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Shift shift = new Shift(
                        rs.getInt("shift_manager_id"),
                        rs.getTimestamp("shift_start_time") != null ? rs.getTimestamp("shift_start_time").toLocalDateTime() : null,
                        rs.getTimestamp("shift_end_time") != null ? rs.getTimestamp("shift_end_time").toLocalDateTime() : null,
                        rs.getBigDecimal("total_revenue"), 
                        rs.getBigDecimal("total_hours"),
                        rs.getString("notes"),
                        rs.getInt("employee_id"),
                        rs.getString("employee_name")
                );
                list.add(shift);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching shifts: " + e.getMessage());
        }
        return list;
    }

    // Lấy thông tin ca làm của nhân viên theo id
    public Shift getShiftById(int shiftManagerId) {
        Shift shift = null;
        String sql = "SELECT ShiftManagers.*, Employees.employee_name "
                   + "FROM ShiftManagers "
                   + "JOIN Employees ON ShiftManagers.employee_id = Employees.employee_id WHERE shift_manager_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, shiftManagerId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                shift = new Shift(
                        rs.getInt("shift_manager_id"),
                        rs.getTimestamp("shift_start_time") != null ? rs.getTimestamp("shift_start_time").toLocalDateTime() : null,
                        rs.getTimestamp("shift_end_time") != null ? rs.getTimestamp("shift_end_time").toLocalDateTime() : null,
                        rs.getBigDecimal("total_revenue"),
                        rs.getBigDecimal("total_hours"),
                        rs.getString("notes"),
                        rs.getInt("employee_id"),
                        rs.getString("employee_name")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shift;
    }

    // Cập nhật thông tin ca làm
    public void updateShift(Shift shift) {
        String sql = "UPDATE ShiftManagers SET total_revenue = ? WHERE shift_manager_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setBigDecimal(1, shift.getTotalRevenue());
            statement.setInt(2, shift.getShiftManageId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Xóa ca làm
    public void deleteShift(String id) {
        String sql = "DELETE FROM ShiftManagers WHERE shift_manager_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
