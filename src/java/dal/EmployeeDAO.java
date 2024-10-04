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
import model.Employees;
import model.Product;

/**
 *
 * @author frien
 */
public class EmployeeDAO extends DBContext {

    public void createEmployee(String name, String phone, String address, int account_id) {
        String sql = "INSERT INTO [dbo].[Employees]\n"
                + "           ([employee_name]\n"
                + "           ,[employee_phone]\n"
                + "           ,[employee_address]\n"
                + "           ,[account_id])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, phone);
            st.setString(3, address);
            st.setInt(4, account_id);
            st.executeUpdate();

        } catch (SQLException e) {

        }
    }

    public List<Employees> getAll() {
        List<Employees> list = new ArrayList<>();
        String sql = "select * from Employees";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Employees employee = new Employees(rs.getInt("employee_id"),
                        rs.getString("employee_name"),
                        rs.getString("employee_phone"),
                        rs.getString("employee_address"),
                        rs.getInt("account_id"));
                list.add(employee);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching movies: " + e.getMessage());
        }
        return list;
    }

     public Employees getEmployeeById(int employeeId) {
        Employees employee = null;
        String sql = "SELECT * FROM Employees WHERE employee_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, employeeId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                employee = new Employees(rs.getInt("employee_id"),
                        rs.getString("employee_name"),
                        rs.getString("employee_phone"),
                        rs.getString("employee_address"),
                        rs.getInt("account_id"));  // Assumes account_id exists
            }
        } catch (SQLException e) {
            System.out.println("Error fetching employee: " + e.getMessage());
        }
        return employee;
    }

    public void updateEmployee(Employees employee) {
        String sql = "UPDATE Employees SET employee_name = ?, employee_phone = ?, employee_address = ? WHERE employee_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, employee.getEmployee_name());
            statement.setString(2, employee.getEmployee_phone());
            statement.setString(3, employee.getEmployee_address());
            statement.setInt(4, employee.getEmployee_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error updating employee: " + e.getMessage());
        }
    }
    
    public void deleteEmployee(int employeeId) {
    String sql = "DELETE FROM Employees WHERE employee_id = ?";
    try {
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, employeeId);
        statement.executeUpdate();
    } catch (SQLException e) {
        System.out.println("Error deleting employee: " + e.getMessage());
    }
}


    public static void main(String[] args) {
        EmployeeDAO acc = new EmployeeDAO();
        List<Employees> list = acc.getAll();
        System.out.println(list.get(0).getEmployee_phone());
    }
}
