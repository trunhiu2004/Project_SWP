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

    public List<Customers> searchCustomers(String searchTerm) {
        List<Customers> customers = new ArrayList<>();
        String sql = "SELECT c.*, ct.type_name FROM Customers c "
                + "LEFT JOIN CustomerTypes ct ON c.customer_type_id = ct.customer_type_id "
                + "WHERE c.customer_name LIKE ? OR c.customer_phone LIKE ? "
                + "ORDER BY c.customer_name";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            String searchPattern = "%" + (searchTerm != null ? searchTerm : "") + "%";
            st.setString(1, searchPattern);
            st.setString(2, searchPattern);
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
            System.out.println("Error in searchCustomers: " + e.getMessage());
        }
        return customers;
    }

    public boolean updateCustomer(Customers customer) {
        String sql = "UPDATE Customers SET customer_name=?, customer_phone=?, customer_type_id=? WHERE customer_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, customer.getCustomerName());
            st.setString(2, customer.getCustomerPhone());
            st.setInt(3, customer.getCustomerType().getCustomerTypeId());
            st.setInt(4, customer.getCustomerId());
            return st.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Error in updateCustomer: " + e.getMessage());
            return false;
        }
    }

    public boolean isPhoneNumberExists(String phoneNumber) {
        String sql = "SELECT COUNT(*) FROM Customers WHERE customer_phone = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phoneNumber);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            System.out.println("Error in isPhoneNumberExists: " + e.getMessage());
        }
        return false;
    }

    public int add(Customers customer) {
        String sql = "INSERT INTO Customers (customer_name, customer_phone, customer_type_id, point) VALUES (?, ?, ?, 0)";
        try {
            PreparedStatement st = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            st.setString(1, customer.getCustomerName());
            st.setString(2, customer.getCustomerPhone());
            st.setInt(3, customer.getCustomerType().getCustomerTypeId());

            int affectedRows = st.executeUpdate();
            if (affectedRows > 0) {
                ResultSet rs = st.getGeneratedKeys();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            System.out.println("Error in add Customer: " + e.getMessage());
        }
        return -1;
    }
    
    
    public void deleteCustomer(String id){
        String sql = "delete from Customers where customer_id = ?";
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            
            statement.setString(1, id);
            statement.executeUpdate();
            
        }catch(Exception e){
             
        }
    }
    
    

}
