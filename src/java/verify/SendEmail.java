/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package verify;

import dal.EmailSettingsDAO;
import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import model.EmailSettings;

/**
 *
 * @author frien
 */
public class SendEmail {

    public void send(String toEmail, String subject, String body) {
        EmailSettingsDAO dao = new EmailSettingsDAO();
        EmailSettings settings = dao.getEmailSettings();

        if (settings == null) {
            throw new RuntimeException("Email settings not found");
        }

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", settings.getSmtpServer());
        props.put("mail.smtp.port", settings.getSmtpPort());

        //Fix UTF-8
        props.put("mail.mime.charset", "UTF-8");
        props.put("mail.smtp.allow8bitmime", "true");
        props.put("mail.smtps.allow8bitmime", "true");

        Session session = Session.getInstance(props,
                new jakarta.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(settings.getFromEmail(), settings.getAuthPassword());
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(settings.getFromEmail()));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setHeader("Content-Type", "text/html; charset=UTF-8");
            message.setSubject(subject, "UTF-8");
            message.setContent(body, "text/html; charset=UTF-8");
            message.setText(body, "UTF-8", "html");

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException("Failed to send email: " + e.getMessage(), e);
        }
    }
}
