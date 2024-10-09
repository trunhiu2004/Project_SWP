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
    public List<WeightUnit> getAll(){
            List<WeightUnit> list = new ArrayList<>();
            String sql = "select * from Weight_unit";
            
            try {
                PreparedStatement st = connection.prepareStatement(sql);
                ResultSet rs = st.executeQuery();
                while (rs.next()){
                    WeightUnit pc = new WeightUnit(rs.getInt("weight_unit_id"),
                                                                 rs.getString("unit_name"));
                    list.add(pc);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
            return list;
        }
    
    public static void main(String[] args) {
        WeightUnitDAO c = new WeightUnitDAO();
        List<WeightUnit> list = c.getAll();
        System.out.println(list.get(0).getName());
    }
}
