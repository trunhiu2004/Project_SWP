/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author frien
 */
public class AccountStatus {
    private int status_id;
    private String status_name;

    public AccountStatus() {
    }

    public AccountStatus(int status_id, String status_name) {
        this.status_id = status_id;
        this.status_name = status_name;
    }

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    public String getStatus_name() {
        return status_name;
    }

    public void setStatus_name(String status_name) {
        this.status_name = status_name;
    }

    @Override
    public String toString() {
        return "AccountStatus{" + "status_id=" + status_id + ", status_name=" + status_name + '}';
    }

    
    
    
}
