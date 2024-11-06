package model;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Shift {
    private int shiftManageId;
    private LocalDateTime shiftStartTime;
    private LocalDateTime shiftEndTime;
    private BigDecimal totalRevenue;
    private BigDecimal totalHours;
    private String note;
    private int employeeId;
    private String employeeName;

    public Shift() {
    }

    public Shift(int shiftManageId, LocalDateTime shiftStartTime, LocalDateTime shiftEndTime, BigDecimal totalRevenue, BigDecimal totalHours, String note, int employeeId, String employeeName) {
        this.shiftManageId = shiftManageId;
        this.shiftStartTime = shiftStartTime;
        this.shiftEndTime = shiftEndTime;
        this.totalRevenue = totalRevenue;
        this.totalHours = totalHours;
        this.note = note;
        this.employeeId = employeeId;
        this.employeeName = employeeName;
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

    public String getFormattedShiftStartTime() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        return shiftStartTime != null ? shiftStartTime.format(formatter) : "";
    }

    public String getFormattedShiftEndTime() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
        return shiftEndTime != null ? shiftEndTime.format(formatter) : "";
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }
}
