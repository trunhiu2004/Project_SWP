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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Accounts;
import model.Coupons;
import model.Employees;

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

    public List<Coupons> getAllCoupons() {
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

    public void updateCoupon(String code, Double discount, Date startDate, Date endDate, String status, int id) {
        String query = "UPDATE [dbo].[Coupons]\n"
                + "   SET [coupon_code] = ?\n"
                + "      ,[discount_amount] = ?\n"
                + "      ,[coupon_start_date] = ?\n"
                + "      ,[coupon_end_date] = ?\n"
                + "      ,[coupon_status] = ?\n"
                + " WHERE coupon_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setString(1, code);
            statement.setDouble(2, discount);
            statement.setDate(3, startDate);
            statement.setDate(4, endDate);
            statement.setString(5, status);
            statement.setInt(6, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public void deleteCoupon(int coupon_id) {
        String query = "DELETE FROM [dbo].[Coupons]\n"
                + "      WHERE coupon_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setInt(1, coupon_id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public Coupons getCouponById(int id) {
        String sql = "select * from Coupons where coupon_id =?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Coupons(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<String> getStatuses() {
        List<String> statuses = new ArrayList<>();
        statuses.add("Active");
        statuses.add("Inactive");
        statuses.add("Upcoming");
        return statuses;
    }

    public List<Coupons> searchByName(String txtSearch) {
        List<Coupons> list = new ArrayList<>();
        String sql = "select * from Coupons\n"
                + "where coupon_code like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");

            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Coupons c = new Coupons(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        rs.getString(6));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;

    }
}