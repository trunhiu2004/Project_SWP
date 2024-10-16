/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Customer;


/**
 *
 * @author pqtru
 */
public class CustomerDAO extends DBContext{
    public List<Customer> getAllCustomer(){
        List<Customer> list = new ArrayList<>();
        String sql = "SELECT Customers.customer_id, Customers.customer_name, Customers.customer_phone, Customers.point, CustomerTypes.type_name, Customers.customer_type_id " +
                     "FROM Customers " +
                     "INNER JOIN CustomerTypes ON Customers.customer_type_id = CustomerTypes.customer_type_id";
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Customer customer = new Customer(rs.getInt("customer_id"),
                                     rs.getString("customer_name"),
                                     rs.getString("customer_phone"),
                                     rs.getInt("point"),
                                     rs.getInt("customer_type_id"),
                                     rs.getString("type_name"));
    list.add(customer);
            }            
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        return list;
    }
    
    
    
    public Customer getCustomerId(int customerId) {
    Customer customer = null;
    String sql = "SELECT c.customer_id, c.customer_name, c.customer_phone, c.point, c.customer_type_id, t.type_name " +
                 "FROM Customers c " +
                 "JOIN CustomerTypes t ON c.customer_type_id = t.customer_type_id " +
                 "WHERE c.customer_id = ?";
    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, customerId);
        ResultSet rs = statement.executeQuery();
        if (rs.next()) {
            customer = new Customer(rs.getInt("customer_id"),
                                     rs.getString("customer_name"),
                                     rs.getString("customer_phone"),
                                     rs.getInt("point"),
                                     rs.getInt("customer_type_id"),
                                     rs.getString("type_name"));
        }
    } catch (SQLException e) {
        System.out.println("Error fetching customer: " + e.getMessage());
    }
    return customer;
}
    

    
    public void updateCustomerAndType(Customer customer) {
    String updateCustomerSQL = "UPDATE Customers SET customer_name = ?, customer_phone = ?, point = ?, customer_type_id = ? WHERE customer_id = ?";
    String updateTypeNameSQL = "UPDATE CustomerTypes SET type_name = ? WHERE customer_type_id = ?";
    
    try {
        connection.setAutoCommit(false);

        
        PreparedStatement updateCustomerStmt = connection.prepareStatement(updateCustomerSQL);
        updateCustomerStmt.setString(1, customer.getCustomerName());
        updateCustomerStmt.setString(2, customer.getCustomerPhone());
        updateCustomerStmt.setInt(3, customer.getPoint());
        updateCustomerStmt.setInt(4, customer.getCustomerTypeId());
        updateCustomerStmt.setInt(5, customer.getCustomerId());
        updateCustomerStmt.executeUpdate();

       
        PreparedStatement updateTypeNameStmt = connection.prepareStatement(updateTypeNameSQL);
        updateTypeNameStmt.setString(1, customer.getTypeName());
        updateTypeNameStmt.setInt(2, customer.getCustomerTypeId());
        updateTypeNameStmt.executeUpdate();

        connection.commit();
    } catch (SQLException e) {
        try {
            connection.rollback();
        } catch (SQLException ex) {
            System.out.println("Error rolling back: " + ex.getMessage());
        }
        System.out.println("Error updating customer and type: " + e.getMessage());
    } finally {
        try {
            connection.setAutoCommit(true);
        } catch (SQLException e) {
            System.out.println("Error setting auto-commit: " + e.getMessage());
        }
    }
}



    
    public static void main(String[] args) {
        CustomerDAO acc = new CustomerDAO();
        List<Customer> list = acc.getAllCustomer();
        System.out.println(list.get(1).getCustomerId());
    }
}
