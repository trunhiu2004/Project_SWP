/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.WeightUnit;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class WeightUnitDAO extends DBContext {

    public List<WeightUnit> getAll() {
        List<WeightUnit> list = new ArrayList<>();
        String sql = "select * from Weight_unit";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                WeightUnit pc = new WeightUnit(rs.getInt("weight_unit_id"),
                        rs.getString("unit_name"));
                list.add(pc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public WeightUnit getUnitById(int weight_unit_id) {
        String sql = "select * from Weight_unit where weight_unit_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, weight_unit_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                WeightUnit pc = new WeightUnit(rs.getInt("weight_unit_id"),
                        rs.getString("unit_name"));
                return pc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public WeightUnit getUnitByName(String unit_name) {
        String sql = "select * from Weight_unit where unit_name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, unit_name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                WeightUnit pc = new WeightUnit(rs.getInt("weight_unit_id"),
                        rs.getString("unit_name"));
                return pc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void deleteUnit(int id) {
        String sql = "delete from Weight_unit where weight_unit_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertUnit(WeightUnit c) {
        String sql = "insert into Weight_unit values(?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateCategory(WeightUnit u) {
        String sql = "UPDATE [dbo].[Weight_unit]\n"
                + "   SET [unit_name] = ? \n"
                + " WHERE weight_unit_id = ? \n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getName());
            st.setInt(2, u.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        WeightUnitDAO c = new WeightUnitDAO();
        List<WeightUnit> list = c.getAll();
        System.out.println(list.get(0).getName());
    }
}
