/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author frien
 */
public class EmployeeDAO extends DBContext{

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
}
