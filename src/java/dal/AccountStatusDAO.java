/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.AccountStatus;
import model.Accounts;

/**
 *
 * @author frien
 */
public class AccountStatusDAO extends DBContext{
    public List<AccountStatus> getAllAccountStatus() {
        List<AccountStatus> lstAcc = new ArrayList<>();
        try {
            String sql = "select * from AccountStatus";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                lstAcc.add(
                        new AccountStatus(rs.getInt(1),
                                rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return lstAcc;
    }
    
//    public static void main(String[] args) {
//        AccountStatusDAO a = new AccountStatusDAO();
//        for (AccountStatus arg : a.getAllAccount()) {
//            System.out.println(arg);
//        }
//    }
}
