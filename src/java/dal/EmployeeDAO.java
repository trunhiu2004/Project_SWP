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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Accounts;
import model.Employees;

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

    public List<Employees> getAllStaff() {
        List<Employees> lstStaff = new ArrayList<>();
        try {
            String sql = "select e.employee_id,e.employee_name, e.employee_phone,e.employee_address,e.account_id\n"
                    + "from Accounts a, Employees e, AccountStatus acstatus\n"
                    + "where a.account_id = e.account_id\n"
                    + "	and acstatus.status_id = a.status_id\n"
                    + "	and a.role_id = 2";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                lstStaff.add(
                        new Employees(rs.getInt(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return lstStaff;
    }

    public Employees getEmployeeById(int id) {
        String sql = "select * from Employees where employee_id =?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Employees(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateEmployee(String name, String phone, String address, int employee_id) {
        String query = "UPDATE [dbo].[Employees]\n"
                + "   SET [employee_name] = ?\n"
                + "	  ,[employee_phone] = ?\n"
                + "      ,[employee_address] = ?\n"
                + " WHERE employee_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setString(1, name);
            statement.setString(2, phone);
            statement.setString(3, address);
            statement.setInt(4, employee_id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public List<Employees> searchByName(String txtSearch) {
        List<Employees> list = new ArrayList<>();
        String sql = "select e.account_id, e.employee_name,e.employee_phone,e.employee_address,e.account_id\n"
                + "from Accounts a, Employees e\n"
                + "where e.account_id = a.account_id\n"
                + "	and a.role_id = 2\n"
                + "	and e.employee_name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");

            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Employees e = new Employees(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
                list.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }
    
    
    public Integer getEmployeeIdByAccountId(int accountId){
        String sql = "select employee_id from employees where account_id = ?";
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accountId);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return rs.getInt("employee_id");
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        EmployeeDAO e = new EmployeeDAO();
        Employees a = e.getEmployeeById(2);
        System.out.println(a);
    }
}
