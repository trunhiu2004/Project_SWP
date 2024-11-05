/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author ankha
 */
public class Mailog {

    private int mailogId;
    private String recipientEmail;
    private String mailSubject;
    private String mailContent;
    private Timestamp mailSentDate;
    private String status;
    private String errorMessage;
    private Integer templateId;

    public int getMailogId() {
        return mailogId;
    }

    public void setMailogId(int mailogId) {
        this.mailogId = mailogId;
    }

    public String getRecipientEmail() {
        return recipientEmail;
    }

    public void setRecipientEmail(String recipientEmail) {
        this.recipientEmail = recipientEmail;
    }

    public String getMailSubject() {
        return mailSubject;
    }

    public void setMailSubject(String mailSubject) {
        this.mailSubject = mailSubject;
    }

    public String getMailContent() {
        return mailContent;
    }

    public void setMailContent(String mailContent) {
        this.mailContent = mailContent;
    }

    public Timestamp getMailSentDate() {
        return mailSentDate;
    }

    public void setMailSentDate(Timestamp mailSentDate) {
        this.mailSentDate = mailSentDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public Integer getTemplateId() {
        return templateId;
    }

    public void setTemplateId(Integer templateId) {
        this.templateId = templateId;
    }

    public Mailog(int mailogId, String recipientEmail, String mailSubject, String mailContent, Timestamp mailSentDate, String status, String errorMessage, Integer templateId) {
        this.mailogId = mailogId;
        this.recipientEmail = recipientEmail;
        this.mailSubject = mailSubject;
        this.mailContent = mailContent;
        this.mailSentDate = mailSentDate;
        this.status = status;
        this.errorMessage = errorMessage;
        this.templateId = templateId;
    }

    public Mailog() {
    }
}
