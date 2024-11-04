/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.EmailTemplate;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ankha
 */
public class EmailTemplateDAO extends DBContext {

    public List<EmailTemplate> getAllTemplates() throws SQLException {
        List<EmailTemplate> templates = new ArrayList<>();
        String sql = "SELECT * FROM EmailTemplates";
        try (PreparedStatement stmt = connection.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                EmailTemplate template = new EmailTemplate();
                template.setTemplateId(rs.getInt("template_id"));
                template.setTemplateName(rs.getString("template_name"));
                template.setSubject(rs.getString("subject"));
                template.setContent(rs.getString("content"));
                template.setVariables(rs.getString("variables"));
                template.setCreatedAt(rs.getTimestamp("created_at"));
                template.setUpdatedAt(rs.getTimestamp("updated_at"));
                templates.add(template);
            }
        }
        return templates;
    }

    public EmailTemplate getTemplateById(int id) throws SQLException {
        String sql = "SELECT * FROM EmailTemplates WHERE template_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    EmailTemplate template = new EmailTemplate();
                    template.setTemplateId(rs.getInt("template_id"));
                    template.setTemplateName(rs.getString("template_name"));
                    template.setSubject(rs.getString("subject"));
                    template.setContent(rs.getString("content"));
                    template.setVariables(rs.getString("variables"));
                    template.setCreatedAt(rs.getTimestamp("created_at"));
                    template.setUpdatedAt(rs.getTimestamp("updated_at"));
                    return template;
                }
            }
        }
        return null;
    }

    public EmailTemplate getTemplateByName(String name) throws SQLException {
        String sql = "SELECT * FROM EmailTemplates WHERE template_name = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, name);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    EmailTemplate template = new EmailTemplate();
                    template.setTemplateId(rs.getInt("template_id"));
                    template.setTemplateName(rs.getString("template_name"));
                    template.setSubject(rs.getString("subject"));
                    template.setContent(rs.getString("content"));
                    template.setVariables(rs.getString("variables"));
                    template.setCreatedAt(rs.getTimestamp("created_at"));
                    template.setUpdatedAt(rs.getTimestamp("updated_at"));
                    return template;
                }
            }
        }
        return null;
    }

    public void addTemplate(EmailTemplate template) throws SQLException {
        String sql = "INSERT INTO EmailTemplates (template_name, subject, content, variables) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, template.getTemplateName());
            stmt.setString(2, template.getSubject());
            stmt.setString(3, template.getContent());
            stmt.setString(4, template.getVariables());
            stmt.executeUpdate();
        }
    }

    public void updateTemplate(EmailTemplate template) throws SQLException {
        String sql = "UPDATE EmailTemplates SET template_name = ?, subject = ?, content = ?, variables = ?, updated_at = GETDATE() WHERE template_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, template.getTemplateName());
            stmt.setString(2, template.getSubject());
            stmt.setString(3, template.getContent());
            stmt.setString(4, template.getVariables());
            stmt.setInt(5, template.getTemplateId());
            stmt.executeUpdate();
        }
    }

    public void deleteTemplate(int id) throws SQLException {
        String sql = "DELETE FROM EmailTemplates WHERE template_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }
}
