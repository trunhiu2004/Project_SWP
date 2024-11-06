package dal;

import model.ShiftDetail;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ShiftDetailDAO extends DBContext {

    public List<ShiftDetail> getShiftDetailsById(int shiftManagerId) {
        List<ShiftDetail> shiftDetails = new ArrayList<>();
        String sql = "SELECT "
                + "    sm.shift_manager_id, "
                + "    sm.shift_start_time, "
                + "    sm.shift_end_time, "
                + "    o.order_id, "
                + "    c.customer_name, "
                + "    o.order_date, "
                + "    od.quantity, "
                + "    od.unit_price, "
                + "    od.total_price, "
                + "    p.product_name, "
                + "    e.employee_name, "
                + "    p.product_image "
                + "FROM "
                + "    Orders AS o "
                + "JOIN "
                + "    OrdersDetails AS od ON o.order_id = od.order_id "
                + "JOIN "
                + "    Employees AS e ON o.employee_id = e.employee_id "
                + "JOIN "
                + "    Products AS p ON od.product_id = p.product_id "
                + "JOIN "
                + "    Customers AS c ON o.customer_id = c.customer_id "
                + "JOIN "
                + "    ShiftManagers AS sm ON e.employee_id = sm.employee_id "
                + "WHERE "
                + "    sm.shift_manager_id = ? "
                + "    AND o.order_date >= sm.shift_start_time "
                + "    AND o.order_date <= sm.shift_end_time";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, shiftManagerId);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                ShiftDetail detail = new ShiftDetail();
                detail.setShiftManagerId(rs.getInt("shift_manager_id"));
                detail.setOrderId(rs.getInt("order_id"));
                detail.setProductName(rs.getString("product_name"));
                detail.setEmployeeName(rs.getString("employee_name"));
                detail.setQuantity(rs.getInt("quantity"));
                detail.setUnitPrice(rs.getBigDecimal("unit_price"));
                detail.setTotalPrice(rs.getBigDecimal("total_price"));
                detail.setProductImage(rs.getString("product_image"));
                detail.setCustomerName(rs.getString("customer_name"));
                detail.setOrderDate(rs.getTimestamp("order_date"));
                detail.setShiftStartTime(rs.getTimestamp("shift_start_time"));
                detail.setShiftEndTime(rs.getTimestamp("shift_end_time"));
                shiftDetails.add(detail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return shiftDetails;
    }
}
