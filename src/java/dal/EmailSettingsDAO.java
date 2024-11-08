/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.EmailSettings;

/**
 *
 * @author ankha
 */
public class EmailSettingsDAO extends DBContext {

    public EmailSettings getEmailSettings() {
        String sql = "SELECT TOP 1 * FROM EmailSettings";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                EmailSettings settings = new EmailSettings();
                settings.setEmailSettingId(rs.getInt("email_setting_id"));
                settings.setSmtpServer(rs.getString("smtp_server"));
                settings.setSmtpPort(rs.getInt("smtp_port"));
                settings.setAuthPassword(rs.getString("auth_password"));
                settings.setFromEmail(rs.getString("from_email"));
                return settings;
            }
        } catch (SQLException e) {
            System.out.println("Error getting email settings: " + e.getMessage());
        }
        return null;
    }

    public boolean updateEmailSettings(EmailSettings settings) {
        String sql = "UPDATE EmailSettings SET smtp_server=?, smtp_port=?, auth_password=?, from_email=? WHERE email_setting_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, settings.getSmtpServer());
            st.setInt(2, settings.getSmtpPort());
            st.setString(3, settings.getAuthPassword());
            st.setString(4, settings.getFromEmail());
            st.setInt(5, settings.getEmailSettingId());
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error updating email settings: " + e.getMessage());
            return false;
        }
    }

    public boolean insertEmailSettings(EmailSettings settings) {
        String sql = "INSERT INTO EmailSettings (smtp_server, smtp_port, auth_password, from_email) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, settings.getSmtpServer());
            st.setInt(2, settings.getSmtpPort());
            st.setString(3, settings.getAuthPassword());
            st.setString(4, settings.getFromEmail());
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error inserting email settings: " + e.getMessage());
            return false;
        }
    }

}
