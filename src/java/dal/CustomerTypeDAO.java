/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.CustomerType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ankha
 */
public class CustomerTypeDAO extends DBContext {

    public CustomerType get(int customerTypeId) {
        String sql = "SELECT * FROM CustomerTypes WHERE customer_type_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, customerTypeId);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                CustomerType type = new CustomerType();
                type.setCustomerTypeId(rs.getInt("customer_type_id"));
                type.setTypeName(rs.getString("type_name"));
                return type;
            }
        } catch (SQLException e) {
            System.out.println("Error in get CustomerType: " + e.getMessage());
        }
        return null;
    }

    public List<CustomerType> getAllCustomerTypes() {
        List<CustomerType> types = new ArrayList<>();
        String sql = "SELECT * FROM CustomerTypes ORDER BY customer_type_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                CustomerType type = new CustomerType();
                type.setCustomerTypeId(rs.getInt("customer_type_id"));
                type.setTypeName(rs.getString("type_name"));
                types.add(type);
            }
        } catch (SQLException e) {
            System.out.println("Error in getAllCustomerTypes: " + e.getMessage());
        }
        return types;
    }
}
