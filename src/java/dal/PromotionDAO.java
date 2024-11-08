/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Coupons;
import model.Promotion;

/**
 *
 * @author frien
 */
public class PromotionDAO extends DBContext {

    public void createPromotion(String name, String description, Date startDate,
            Date endDate, double discount, String status) {
        String sql = "INSERT INTO [dbo].[Promotion]\n"
                + "           ([promotion_name]\n"
                + "           ,[description]\n"
                + "           ,[start_date]\n"
                + "           ,[end_date]\n"
                + "           ,[discount_value]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, description);
            st.setDate(3, startDate);
            st.setDate(4, endDate);
            st.setDouble(5, discount);
            st.setString(6, status);
            st.executeUpdate();

        } catch (SQLException e) {

        }
    }

    public List<Promotion> getAllPromotion() {
        List<Promotion> accounts = new ArrayList<>();
        try {
            String sql = "select * from Promotion";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accounts.add(new Promotion(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        rs.getDouble(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }

    public void updatePromotion(String name, String description, Date startDate,
            Date endDate, double discount, String status, int id) {
        String query = "UPDATE [dbo].[Promotion]\n"
                + "   SET [promotion_name] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[start_date] = ?\n"
                + "      ,[end_date] = ?\n"
                + "      ,[discount_value] = ?\n"
                + "	  ,[status] = ? \n"
                + " WHERE promotion_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);

            st.setString(1, name);
            st.setString(2, description);
            st.setDate(3, startDate);
            st.setDate(4, endDate);
            st.setDouble(5, discount);
            st.setString(6, status);
            st.setInt(7, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public void deletePromotion(int coupon_id) {
        String query = "DELETE FROM [dbo].[Promotion]\n"
                + "      WHERE promotion_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setInt(1, coupon_id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public Promotion getPromotionById(int id) {
        String sql = "select * from Promotion where promotion_id =?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Promotion(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDate(5),
                        rs.getDouble(6),
                        rs.getString(7));
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
        return statuses;
    }

    public List<Promotion> getFilteredPromotion(String promotionName,
            String description,
            String discountAmount,
            String startDate,
            String endDate,
            String status) {
        List<Promotion> promotion = new ArrayList<>();

        // Xây dựng câu lệnh SQL động
        StringBuilder query = new StringBuilder("SELECT * FROM Promotion WHERE 1=1");
        if (promotionName != null && !promotionName.isEmpty()) {
            query.append(" AND promotion_name LIKE ?");
        }
        if (description != null && !description.isEmpty()) {
            query.append(" AND description LIKE ?");
        }

        if (startDate != null && !startDate.isEmpty()) {
            query.append(" AND start_date = ?");
        }
        if (endDate != null && !endDate.isEmpty()) {
            query.append(" AND end_date = ?");
        }
        if (discountAmount != null && !discountAmount.isEmpty()) {
            query.append(" AND discount_value = ?");
        }
        if ("All Status".equalsIgnoreCase(status)) {
            query.append(" AND (status = 'Active' OR status = 'Inactive')");
        } else if (status != null && !status.isEmpty()) {
            query.append(" AND status = ?");
        }

        try {
            PreparedStatement stmt = connection.prepareStatement(query.toString());
            int paramIndex = 1;
            if (promotionName != null && !promotionName.isEmpty()) {
                stmt.setString(paramIndex++, "%" + promotionName + "%");
            }
            if (description != null && !description.isEmpty()) {
                stmt.setString(paramIndex++, "%" + description + "%");
            }

            if (startDate != null && !startDate.isEmpty()) {
                stmt.setDate(paramIndex++, Date.valueOf(startDate));
            }
            if (endDate != null && !endDate.isEmpty()) {
                stmt.setDate(paramIndex++, Date.valueOf(endDate));
            }
            if (discountAmount != null && !discountAmount.isEmpty()) {
                stmt.setDouble(paramIndex++, Double.parseDouble(discountAmount));
            }
            if (status != null && !"All Status".equalsIgnoreCase(status) && !status.isEmpty()) {
                stmt.setString(paramIndex++, status);
            }

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Promotion pro = new Promotion();
                pro.setPromotion_id(rs.getInt("promotion_id"));
                pro.setPromotion_name(rs.getString("promotion_name"));
                pro.setDescription(rs.getString("description"));
                pro.setStart_date(rs.getDate("start_date"));
                pro.setEnd_date(rs.getDate("end_date"));
                pro.setDiscount_value(rs.getDouble("discount_value"));
                pro.setStatus(rs.getString("status"));
                promotion.add(pro);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return promotion;
    }

    public List<Promotion> getActivePromotions() {
        List<Promotion> activePromotions = new ArrayList<>();
        String sql = "SELECT * FROM Promotion WHERE status = 'Active' AND start_date <= GETDATE() AND end_date >= GETDATE()";
        try (PreparedStatement stmt = connection.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Promotion promotion = new Promotion(
                        rs.getInt("promotion_id"),
                        rs.getString("promotion_name"),
                        rs.getString("description"),
                        rs.getDate("start_date"),
                        rs.getDate("end_date"),
                        rs.getDouble("discount_value"),
                        rs.getString("status")
                );
                activePromotions.add(promotion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return activePromotions;
    }
}
