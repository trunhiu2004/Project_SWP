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
import model.Suppliers;

/**
 *
 * @author PC
 */
public class SuppliersDAO extends DBContext {

    public List<Suppliers> getAll() {
        List<Suppliers> list = new ArrayList<>();
        String sql = "select * from Suppliers";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Suppliers pc = new Suppliers(
                        rs.getInt("supplier_id"),
                        rs.getString("supplier_name"),
                        rs.getString("supplier_address"),
                        rs.getString("supplier_phone"),
                        rs.getString("supplier_email"),
                        rs.getString("supplier_contact_person"),
                        rs.getString("image")
                        
                );
                list.add(pc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Suppliers getSupById(int supplier_id) {
        String sql = "select * from Suppliers where supplier_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, supplier_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Suppliers s = new Suppliers(
                        rs.getInt("supplier_id"),
                        rs.getString("supplier_name"),
                        rs.getString("supplier_address"),
                        rs.getString("supplier_phone"),
                        rs.getString("supplier_email"),
                        rs.getString("supplier_contact_person"),
                        rs.getString("image")
                );
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Suppliers getSupByName(String supplier_name) {
        String sql = "select * from Suppliers where supplier_name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, supplier_name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Suppliers s = new Suppliers(
                        rs.getInt("supplier_id"),
                        rs.getString("supplier_name"),
                        rs.getString("supplier_address"),
                        rs.getString("supplier_phone"),
                        rs.getString("supplier_email"),
                        rs.getString("supplier_contact_person"),
                        rs.getString("image")
                        
                );
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void deleteSup(int id) {
        String sql = "delete from Suppliers where supplier_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertSup(Suppliers c) {
        String sql = "INSERT INTO Suppliers VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());       // for name
            st.setString(2, c.getAddress());    // for address
            st.setString(3, c.getPhone());      // for phone
            st.setString(4, c.getEmail());      // for email
            st.setString(5, c.getContact());
            st.setString(6, c.getImg());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateSupplier(Suppliers s) {
        String sql = "UPDATE [dbo].[Suppliers]\n"
                + "   SET [supplier_name] = ? \n"
                + "      ,[supplier_address] = ? \n"
                + "      ,[supplier_phone] = ? \n"
                + "      ,[supplier_email] = ? \n"
                + "      ,[supplier_contact_person] = ? \n"
                + "      ,[image] = ? \n"
                + " WHERE supplier_id = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s.getName());
            st.setString(2, s.getAddress());
            st.setString(3, s.getPhone());
            st.setString(4, s.getEmail());
            st.setString(5, s.getContact());
            st.setString(6, s.getImg());
            st.setInt(7, s.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        SuppliersDAO c = new SuppliersDAO();
        List<Suppliers> list = c.getAll();
        System.out.println(list.get(0).getImg());
    }
}
