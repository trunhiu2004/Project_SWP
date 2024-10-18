/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Accounts;
import model.Roles;

/**
 *
 * @author frien
 */
public class RolesDAO extends DBContext{
    public List<Roles> getAllRoles() {
        List<Roles> accounts = new ArrayList<>();
        try {
            String sql = "select * from Roles";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accounts.add(
                        new Roles(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }
}
