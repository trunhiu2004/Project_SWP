/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.lang.System.Logger;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Accounts;
import java.sql.ResultSet;
import java.util.logging.Level;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author frien
 */
public class AccountDAO extends DBContext {

    public void createAccount(String email, String password, int roleID) {
        String sql = "INSERT INTO [dbo].[Accounts]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[role_id]\n"
                + "           ,[status_id])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,1)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            st.setInt(3, roleID);
            st.executeUpdate();

        } catch (SQLException e) {

        }
    }

    public void changePassword(String email, String password) {
        String sql = "Update Accounts\n"
                + "set password=?\n"
                + "where email=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, email);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Accounts> getAllAccount() {
        List<Accounts> accounts = new ArrayList<>();
        try {
            String sql = "select * from Accounts";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accounts.add(
                        new Accounts(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return accounts;
    }

    public int getAccountId(String email) {
        try {
            String sql = "select account_id\n"
                    + "from Accounts\n"
                    + "where email=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("account_id");
            }
        } catch (SQLException ex) {
        }
        return -1;
    }

    public Accounts login(String user, String pass) {
        String sql = "select * from Accounts where [email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);

            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                String hashedPassword = rs.getString("password");

                if (BCrypt.checkpw(pass, hashedPassword)) {
                    return new Accounts(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getInt(4),
                            rs.getInt(5)
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Nên log lỗi để dễ dàng phát hiện và sửa chữa
        }

        return null; // Trả về null nếu xác thực thất bại
    }

    public void updateStatus(int status, int account_id) {
        String query = "UPDATE [dbo].[Accounts]\n"
                + "   SET \n"
                + "      [status_id] = ?\n"
                + " WHERE account_id =?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setInt(1, status);
            statement.setInt(2, account_id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public void deleteAccount(int account_id) {
        String query = "DELETE FROM [dbo].[Accounts]\n"
                + "      WHERE account_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);

            statement.setInt(1, account_id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public boolean changePassword(int accountId, String newPassword) {
        String sql = "UPDATE Accounts SET password = ? WHERE account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, BCrypt.hashpw(newPassword, BCrypt.gensalt()));
            st.setInt(2, accountId);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        AccountDAO ac = new AccountDAO();
        for (Accounts arg : ac.getAllAccount()) {
            System.out.println(arg);
        }
    }
}
