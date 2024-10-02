/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author frien
 */
public class Accounts {
    private int account_id;
    private String email;
    private String password;
    private int role_id;
    private int status_id;

    public Accounts() {
    }

    public Accounts(int account_id, String email, String password, int role_id, int status_id) {
        this.account_id = account_id;
        this.email = email;
        this.password = password;
        this.role_id = role_id;
        this.status_id = status_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    @Override
    public String toString() {
        return "Accounts{" + "account_id=" + account_id + ", email=" + email + ", password=" + password + ", role_id=" + role_id + ", status_id=" + status_id + '}';
    }
    
    

    
    
}
