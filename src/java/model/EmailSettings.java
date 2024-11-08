/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ankha
 */
public class EmailSettings {

    private int emailSettingId;
    private String smtpServer;
    private int smtpPort;
    private String authPassword;
    private String fromEmail;

    public EmailSettings() {
    }

    public EmailSettings(int emailSettingId, String smtpServer, int smtpPort, String authPassword, String fromEmail) {
        this.emailSettingId = emailSettingId;
        this.smtpServer = smtpServer;
        this.smtpPort = smtpPort;
        this.authPassword = authPassword;
        this.fromEmail = fromEmail;
    }

    public int getEmailSettingId() {
        return emailSettingId;
    }

    public void setEmailSettingId(int emailSettingId) {
        this.emailSettingId = emailSettingId;
    }

    public String getSmtpServer() {
        return smtpServer;
    }

    public void setSmtpServer(String smtpServer) {
        this.smtpServer = smtpServer;
    }

    public int getSmtpPort() {
        return smtpPort;
    }

    public void setSmtpPort(int smtpPort) {
        this.smtpPort = smtpPort;
    }

    public String getAuthPassword() {
        return authPassword;
    }

    public void setAuthPassword(String authPassword) {
        this.authPassword = authPassword;
    }

    public String getFromEmail() {
        return fromEmail;
    }

    public void setFromEmail(String fromEmail) {
        this.fromEmail = fromEmail;
    }

    

}
