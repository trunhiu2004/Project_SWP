/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.ShiftDetail;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author pqtru
 */
public class ShiftDetailDAO extends DBContext{
    public List<ShiftDetail> getShiftDetails() {
    List<ShiftDetail> shiftDetails = new ArrayList<>();
    String sql = "SELECT sm.shift_manager_id, sm.shift_start_time, sm.shift_end_time, sm.total_hours, " +
                 "o.order_id, o.order_total_amount, od.unit_price, od.total_price, p.product_name, p.product_image," +
                 "sm.employee_id " + 
                 "FROM ShiftManagers sm " +
                 "LEFT JOIN Orders o ON sm.employee_id = o.employee_id " +
                 "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id " +
                 "LEFT JOIN Products p ON od.product_id = p.product_id ";

    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            ShiftDetail detail = new ShiftDetail();
            detail.setShiftManagerId(rs.getInt("shift_manager_id"));
            detail.setShiftStartTime(rs.getTimestamp("shift_start_time").toLocalDateTime());
            detail.setShiftEndTime(rs.getTimestamp("shift_end_time").toLocalDateTime());
            detail.setTotalHours(rs.getBigDecimal("total_hours"));
            detail.setOrderId(rs.getInt("order_id"));
            
            detail.setOrderTotalAmount(rs.getBigDecimal("order_total_amount"));
            detail.setUnitPrice(rs.getBigDecimal("unit_price")); 
            detail.setTotalPrice(rs.getBigDecimal("total_price")); 
            detail.setEmployeeId(rs.getInt("employee_id")); 
            detail.setProductName(rs.getString("product_name"));
            detail.setProductImage(rs.getString("product_image"));
            shiftDetails.add(detail);

              
        }
    } catch (SQLException e) {
        System.out.println("Error fetching shift details: " + e.getMessage());
    }
    return shiftDetails;
}
    
    public List<ShiftDetail> getShiftDetailsById(int shiftManagerId) {
    List<ShiftDetail> shiftDetails = new ArrayList<>();
    String sql = "SELECT sm.shift_manager_id, sm.shift_start_time, sm.shift_end_time, sm.total_hours, " +
                 "o.order_id, o.order_total_amount, od.unit_price, od.total_price, p.product_name, p.product_image," +
                 "sm.employee_id " +
                 "FROM ShiftManagers sm " +
                 "LEFT JOIN Orders o ON sm.employee_id = o.employee_id " +
                 "LEFT JOIN OrdersDetails od ON o.order_id = od.order_id " +
                 "LEFT JOIN Products p ON od.product_id = p.product_id " +
                 "WHERE sm.shift_manager_id = ?"; 

    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, shiftManagerId); 
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            ShiftDetail detail = new ShiftDetail();
            detail.setShiftManagerId(rs.getInt("shift_manager_id"));
            detail.setShiftStartTime(rs.getTimestamp("shift_start_time").toLocalDateTime());
            detail.setShiftEndTime(rs.getTimestamp("shift_end_time").toLocalDateTime());
            detail.setTotalHours(rs.getBigDecimal("total_hours"));
            detail.setOrderId(rs.getInt("order_id"));
            
            detail.setOrderTotalAmount(rs.getBigDecimal("order_total_amount"));
            detail.setUnitPrice(rs.getBigDecimal("unit_price"));
            detail.setTotalPrice(rs.getBigDecimal("total_price"));
            detail.setEmployeeId(rs.getInt("employee_id"));
            detail.setProductName(rs.getString("product_name"));
            detail.setProductImage(rs.getString("product_image"));

            shiftDetails.add(detail);
        }
    } catch (SQLException e) {
        System.out.println("Error fetching shift details: " + e.getMessage());
    }
    return shiftDetails;
}

    
    
    public static void main(String[] args) {
        ShiftDetailDAO acc = new ShiftDetailDAO();
        List<ShiftDetail> list = acc.getShiftDetails();
        System.out.println(list.get(0).getProductImage());
    }

}
