/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author frien
 */
public class Coupons {
    private int coupon_id;
    private String coupon_code;
    private double discount_amount;
    private Date coupon_start_date;
    private Date coupon_end_date;
    private String coupon_status;

    public Coupons() {
    }

    public Coupons(int coupon_id, String coupon_code, double discount_amount, Date coupon_start_date, Date coupon_end_date, String coupon_status) {
        this.coupon_id = coupon_id;
        this.coupon_code = coupon_code;
        this.discount_amount = discount_amount;
        this.coupon_start_date = coupon_start_date;
        this.coupon_end_date = coupon_end_date;
        this.coupon_status = coupon_status;
    }

    public int getCoupon_id() {
        return coupon_id;
    }

    public void setCoupon_id(int coupon_id) {
        this.coupon_id = coupon_id;
    }

    public String getCoupon_code() {
        return coupon_code;
    }

    public void setCoupon_code(String coupon_code) {
        this.coupon_code = coupon_code;
    }

    public double getDiscount_amount() {
        return discount_amount;
    }

    public void setDiscount_amount(double discount_amount) {
        this.discount_amount = discount_amount;
    }

    public Date getCoupon_start_date() {
        return coupon_start_date;
    }

    public void setCoupon_start_date(Date coupon_start_date) {
        this.coupon_start_date = coupon_start_date;
    }

    public Date getCoupon_end_date() {
        return coupon_end_date;
    }

    public void setCoupon_end_date(Date coupon_end_date) {
        this.coupon_end_date = coupon_end_date;
    }

    public String getCoupon_status() {
        return coupon_status;
    }

    public void setCoupon_status(String coupon_status) {
        this.coupon_status = coupon_status;
    }

    @Override
    public String toString() {
        return "Coupons{" + "coupon_id=" + coupon_id + ", coupon_code=" + coupon_code + ", discount_amount=" + discount_amount + ", coupon_start_date=" + coupon_start_date + ", coupon_end_date=" + coupon_end_date + ", coupon_status=" + coupon_status + '}';
    }

    
    
}
