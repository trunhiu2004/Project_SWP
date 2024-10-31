package model;


import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class Shift {
    private int shiftManageId;
    private LocalDateTime shiftStartTime;
    private LocalDateTime shiftEndTime;
    private BigDecimal cashStart;
    private BigDecimal cashEnd;
    private BigDecimal totalRevenue;
    private BigDecimal totalHours;
    private String note;
    private int employeeId;
    private List<Integer> orderIds;  
    private List<Integer> quantities;  
    private List<String> productNames; 

    public Shift() {
        this.orderIds = new ArrayList<>();
        this.quantities = new ArrayList<>();
        this.productNames = new ArrayList<>();
    }

    public Shift(int shiftManageId, LocalDateTime shiftStartTime, LocalDateTime shiftEndTime, BigDecimal cashStart, BigDecimal cashEnd, BigDecimal totalRevenue, BigDecimal totalHours, String note, int employeeId) {
        this.shiftManageId = shiftManageId;
        this.shiftStartTime = shiftStartTime;
        this.shiftEndTime = shiftEndTime;
        this.cashStart = cashStart;
        this.cashEnd = cashEnd;
        this.totalRevenue = totalRevenue;
        this.totalHours = totalHours;
        this.note = note;
        this.employeeId = employeeId;
        this.orderIds = new ArrayList<>();
        this.quantities = new ArrayList<>();
        this.productNames = new ArrayList<>();
    }

    
    public List<Integer> getOrderIds() {
        return orderIds;
    }

    public void addOrderId(int orderId) {
        this.orderIds.add(orderId);
    }

    public List<Integer> getQuantities() {
        return quantities;
    }

    public void addQuantity(int quantity) {
        this.quantities.add(quantity);
    }

    public List<String> getProductNames() {
        return productNames;
    }

    public void addProductName(String productName) {
        this.productNames.add(productName);
    }

    public int getShiftManageId() {
        return shiftManageId;
    }

    public void setShiftManageId(int shiftManageId) {
        this.shiftManageId = shiftManageId;
    }

    public LocalDateTime getShiftStartTime() {
        return shiftStartTime;
    }

    public void setShiftStartTime(LocalDateTime shiftStartTime) {
        this.shiftStartTime = shiftStartTime;
    }

    public LocalDateTime getShiftEndTime() {
        return shiftEndTime;
    }

    public void setShiftEndTime(LocalDateTime shiftEndTime) {
        this.shiftEndTime = shiftEndTime;
    }

    public BigDecimal getCashStart() {
        return cashStart;
    }

    public void setCashStart(BigDecimal cashStart) {
        this.cashStart = cashStart;
    }

    public BigDecimal getCashEnd() {
        return cashEnd;
    }

    public void setCashEnd(BigDecimal cashEnd) {
        this.cashEnd = cashEnd;
    }

    public BigDecimal getTotalRevenue() {
        return totalRevenue;
    }

    public void setTotalRevenue(BigDecimal totalRevenue) {
        this.totalRevenue = totalRevenue;
    }

    public BigDecimal getTotalHours() {
        return totalHours;
    }

    public void setTotalHours(BigDecimal totalHours) {
        this.totalHours = totalHours;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getFormattedShiftStartTime(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        return shiftStartTime != null ? shiftStartTime.format(formatter) : "";
    }   
    
    public String getFormattedShiftEndTime(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        return shiftEndTime != null ? shiftEndTime.format(formatter) : "";
    }
}
