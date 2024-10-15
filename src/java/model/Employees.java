/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author frien
 */
public class Employees {

    private int employee_id;
    private String employee_name;
    private String employee_phone;
    private String employee_address;
    private int account_id;

    public Employees() {
    }

    public Employees(int employee_id, String employee_name, String employee_phone, String employee_address) {
        this.employee_id = employee_id;
        this.employee_name = employee_name;
        this.employee_phone = employee_phone;
        this.employee_address = employee_address;
    }

    public Employees(int employee_id, String employee_name, String employee_phone, String employee_address, int account_id) {
        this.employee_id = employee_id;
        this.employee_name = employee_name;
        this.employee_phone = employee_phone;
        this.employee_address = employee_address;
        this.account_id = account_id;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getEmployee_name() {
        return employee_name;
    }

    public void setEmployee_name(String employee_name) {
        this.employee_name = employee_name;
    }

    public String getEmployee_phone() {
        return employee_phone;
    }

    public void setEmployee_phone(String employee_phone) {
        this.employee_phone = employee_phone;
    }

    public String getEmployee_address() {
        return employee_address;
    }

    public void setEmployee_address(String employee_address) {
        this.employee_address = employee_address;
    }

  

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    @Override
    public String toString() {
        return "Employees{" + "employee_id=" + employee_id + ", employee_name=" + employee_name + ", employee_phone=" + employee_phone + ", employee_address=" + employee_address  + '}';
    }

}