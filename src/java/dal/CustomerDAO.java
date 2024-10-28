/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Customers;
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
public class CustomerDAO extends DBContext {

    public List<Customers> getAllCustomers() {
        List<Customers> customers = new ArrayList<>();
        String sql = "SELECT c.*, ct.type_name FROM Customers c "
                + "LEFT JOIN CustomerTypes ct ON c.customer_type_id = ct.customer_type_id "
                + "ORDER BY c.customer_name"; // Thêm ORDER BY để sắp xếp

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Customers customer = new Customers();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setCustomerName(rs.getString("customer_name"));
                customer.setCustomerPhone(rs.getString("customer_phone"));
                customer.setPoint(rs.getInt("point"));

                CustomerType type = new CustomerType();
                type.setCustomerTypeId(rs.getInt("customer_type_id"));
                type.setTypeName(rs.getString("type_name"));
                customer.setCustomerType(type);

                customers.add(customer);
            }
        } catch (SQLException e) {
            System.out.println("Error in getAllCustomers: " + e.getMessage());
        }
        return customers;
    }

    public Customers getCustomerById(int customerId) {
        String sql = "SELECT c.*, ct.type_name FROM Customers c "
                + "LEFT JOIN CustomerTypes ct ON c.customer_type_id = ct.customer_type_id "
                + "WHERE c.customer_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, customerId);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Customers customer = new Customers();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setCustomerName(rs.getString("customer_name"));
                customer.setCustomerPhone(rs.getString("customer_phone"));
                customer.setPoint(rs.getInt("point"));

                CustomerType type = new CustomerType();
                type.setCustomerTypeId(rs.getInt("customer_type_id"));
                type.setTypeName(rs.getString("type_name"));
                customer.setCustomerType(type);

                return customer;
            }
        } catch (SQLException e) {
            System.out.println("Error in getCustomerById: " + e.getMessage());
        }
        return null;
    }
}
