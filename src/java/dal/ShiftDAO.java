/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import model.Shift;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.sql.Timestamp;

/**
 *
 * @author pqtru
 */
public class ShiftDAO extends DBContext{
    
    
     public List<Shift> getAll() {
        List<Shift> list = new ArrayList<>();
        String sql = "SELECT * FROM ShiftManagers";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Shift shift = new Shift(
                    rs.getInt("shift_manager_id"),                     
                    rs.getTimestamp("shift_start_time") != null ? rs.getTimestamp("shift_start_time").toLocalDateTime() : null,  // Chuyển từ Timestamp sang LocalDateTime
                    rs.getTimestamp("shift_end_time") != null ? rs.getTimestamp("shift_end_time").toLocalDateTime() : null,      // Chuyển từ Timestamp sang LocalDateTime
                    rs.getBigDecimal("cash_start"),                         
                    rs.getBigDecimal("cash_end"),                           
                    rs.getBigDecimal("total_revenue"),                      
                    rs.getBigDecimal("total_hours"),                        
                    rs.getString("notes"),                                  
                    rs.getInt("employee_id")                                
                );
                list.add(shift);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching shifts: " + e.getMessage());
        }
        return list;
    }
     
     
    public Shift getShiftById(int shiftManagerId) {
        Shift shift = null;
        String sql = "SELECT * FROM ShiftManagers WHERE shift_manager_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, shiftManagerId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                shift = new Shift(
                    rs.getInt("shift_manager_id"),
                    rs.getTimestamp("shift_start_time") != null ? rs.getTimestamp("shift_start_time").toLocalDateTime() : null,
                    rs.getTimestamp("shift_end_time") != null ? rs.getTimestamp("shift_end_time").toLocalDateTime() : null,
                    rs.getBigDecimal("cash_start"),
                    rs.getBigDecimal("cash_end"),
                    rs.getBigDecimal("total_revenue"),
                    rs.getBigDecimal("total_hours"),
                    rs.getString("notes"),
                    rs.getInt("employee_id")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shift;
    }
     
    
    public void updateShift(Shift shift) {
        String sql = "UPDATE ShiftManagers SET cash_start = ?, cash_end = ?, total_revenue = ? WHERE shift_manager_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setBigDecimal(1, shift.getCashStart());
            statement.setBigDecimal(2, shift.getCashEnd());
            statement.setBigDecimal(3, shift.getTotalRevenue());
            statement.setInt(4, shift.getShiftManageId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    



    public void deleteShift(String id){
        String sql = "delete from ShiftManagers where shift_manager_id = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        }catch(SQLException e){
            
        }
    }
     


}
