/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.ReportCustomer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author pqtru
 */
public class ReportCustomerDAO extends DBContext {

    public List<ReportCustomer> getAll() {
        List<ReportCustomer> list = new ArrayList<>();
        String sql = "SELECT \n"
                + "    o.customer_id, \n"
                + "    c.customer_name,\n"
                + "	c.customer_phone,\n"
                + "    SUM(Distinct o.order_total_amount) AS total_amount, \n"
                + "    COUNT(DISTINCT od.order_id) AS total_orders \n"
                + "FROM \n"
                + "    Orders AS o \n"
                + "JOIN \n"
                + "    OrdersDetails AS od ON o.order_id = od.order_id\n"
                + "JOIN \n"
                + "    Customers AS c ON o.customer_id = c.customer_id\n"
                + "GROUP BY \n"
                + "    o.customer_id, c.customer_name, c.customer_phone \n"
                + "ORDER BY \n"
                + "    total_amount DESC; ";
        
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                ReportCustomer report = new ReportCustomer(rs.getInt("customer_id"), 
                        rs.getString("customer_name"), 
                        rs.getString("customer_phone"), 
                        rs.getDouble("total_amount"),
                        rs.getInt("total_orders"));
                list.add(report);
            }
        }catch(SQLException e){
            
        }
        return list;
    }
    
    public List<ReportCustomer> getTop3() {
        List<ReportCustomer> list = new ArrayList<>();
        String sql = "SELECT top 3\n"
                + "    o.customer_id, \n"
                + "    c.customer_name,\n"
                + "	c.customer_phone,\n"
                + "    SUM(Distinct o.order_total_amount) AS total_amount, \n"
                + "    COUNT(DISTINCT od.order_id) AS total_orders \n"
                + "FROM \n"
                + "    Orders AS o \n"
                + "JOIN \n"
                + "    OrdersDetails AS od ON o.order_id = od.order_id\n"
                + "JOIN \n"
                + "    Customers AS c ON o.customer_id = c.customer_id\n"
                + "GROUP BY \n"
                + "    o.customer_id, c.customer_name, c.customer_phone \n"
                + "ORDER BY \n"
                + "    total_amount DESC; ";
        
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                ReportCustomer report = new ReportCustomer(rs.getInt("customer_id"), 
                        rs.getString("customer_name"), 
                        rs.getString("customer_phone"), 
                        rs.getDouble("total_amount"),
                        rs.getInt("total_orders"));
                list.add(report);
            }
        }catch(SQLException e){
            
        }
        return list;
    }
    
    
    public static void main(String[] args) {
        ReportCustomerDAO acc = new ReportCustomerDAO();
        List<ReportCustomer> list = acc.getAll();
        System.out.println(list.get(0).getTotalAmount());
    }
}
