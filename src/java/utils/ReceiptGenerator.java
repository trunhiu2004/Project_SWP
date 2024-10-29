/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.List;
import model.CartItem;

/**
 *
 * @author ankha
 */
public class ReceiptGenerator {
    
    public String generateReceipt(int orderId, List<CartItem> items, double totalAmount, 
            double receivedAmount, double changeAmount) {
        StringBuilder receipt = new StringBuilder();
        
        receipt.append("<div class='receipt'>");
        receipt.append("<h2>HÓA ĐƠN BÁN HÀNG</h2>");
        receipt.append("<p>Số hóa đơn: ").append(orderId).append("</p>");
        receipt.append("<p>Ngày: ").append(new java.util.Date()).append("</p>");
        
        // Thông tin sản phẩm
        receipt.append("<table class='receipt-items'>");
        receipt.append("<tr><th>Sản phẩm</th><th>SL</th><th>Đơn giá</th><th>Thành tiền</th></tr>");
        
        for (CartItem item : items) {
            receipt.append("<tr>");
            receipt.append("<td>").append(item.getProduct().getName()).append("</td>");
            receipt.append("<td>").append(item.getQuantity()).append("</td>");
            receipt.append("<td>").append(String.format("%,.0f", item.getPrice())).append("</td>");
            receipt.append("<td>").append(String.format("%,.0f", item.getSubTotal())).append("</td>");
            receipt.append("</tr>");
        }
        
        receipt.append("</table>");
        
        // Thông tin thanh toán
        receipt.append("<div class='receipt-summary'>");
        receipt.append("<p>Tổng tiền: ").append(String.format("%,.0f", totalAmount)).append(" VNĐ</p>");
        receipt.append("<p>Tiền khách đưa: ").append(String.format("%,.0f", receivedAmount)).append(" VNĐ</p>");
        receipt.append("<p>Tiền thối: ").append(String.format("%,.0f", changeAmount)).append(" VNĐ</p>");
        receipt.append("</div>");
        
        // Thông tin footer
        receipt.append("<div class='receipt-footer'>");
        receipt.append("<p>Cảm ơn quý khách đã mua hàng!</p>");
        receipt.append("<p>Hẹn gặp lại!</p>");
        receipt.append("</div>");
        
        receipt.append("</div>");
        
        return receipt.toString();
    }
}