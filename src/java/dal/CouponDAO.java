/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Accounts;
import model.Coupons;

/**
 *
 * @author frien
 */
public class CouponDAO extends DBContext {

    public void createCoupon(String coupon_code, double discount_amount, Date coupon_start_date,
            Date coupon_end_date, String coupon_status) {
        String sql = "INSERT INTO [dbo].[Coupons]\n"
                + "           ([coupon_code]\n"
                + "           ,[discount_amount]\n"
                + "           ,[coupon_start_date]\n"
                + "           ,[coupon_end_date]\n"
                + "           ,[coupon_status])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, coupon_code);
            st.setDouble(2, discount_amount);
            st.setDate(3, coupon_start_date);
            st.setDate(4, coupon_end_date);
            st.setString(5, coupon_status);
            st.executeUpdate();

        } catch (SQLException e) {

        }
    }
    
    public List<Coupons> getAllAccount() {
        List<Coupons> accounts = new ArrayList<>();
        try {
            String sql = "select * from Coupons";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accounts.add(new Coupons(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDate(4), 
                        rs.getDate(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }
    
    public static void main(String[] args) {
        for (Coupons arg : new CouponDAO().getAllAccount()) {
            System.out.println(arg);
        }
    }
}
