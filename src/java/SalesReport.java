/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author pqtru
 */
public class SalesReport {
    private int year;
    private double totalSales;
    private int totalOrders;

    public SalesReport() {
    }

    public SalesReport(int year, double totalSales, int totalOrders) {
        this.year = year;
        this.totalSales = totalSales;
        this.totalOrders = totalOrders;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public double getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(double totalSales) {
        this.totalSales = totalSales;
    }

    public int getTotalOrders() {
        return totalOrders;
    }

    public void setTotalOrders(int totalOrders) {
        this.totalOrders = totalOrders;
    }
    
    
}
