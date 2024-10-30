package dal;

import model.CustomerType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypesDAO extends DBContext {

    public List<CustomerType> getAllCustomerTypes() {
        List<CustomerType> list = new ArrayList<>();
        String sql = "SELECT * FROM CustomerTypes";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CustomerType type = new CustomerType(
                        rs.getInt("customer_type_id"),
                        rs.getString("type_name"));
                list.add(type);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching customer types: " + e.getMessage());
        }
        return list;
    }

    public CustomerType getCustomerTypeById(int customerTypeId) {
        String sql = "SELECT * FROM CustomerTypes WHERE customer_type_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, customerTypeId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new CustomerType(rs.getInt("customer_type_id"), rs.getString("type_name"));
            }
        } catch (SQLException e) {
            System.out.println("Error fetching customer type: " + e.getMessage());
        }
        return null;
    }
}

