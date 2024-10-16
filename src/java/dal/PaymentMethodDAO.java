package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.PaymentMethod;

/**
 * Data Access Object for PaymentMethod.
 */
public class PaymentMethodDAO extends DBContext {

    /**
     * Retrieves all payment methods from the database.
     * 
     * @return List of PaymentMethod objects.
     */
    public List<PaymentMethod> getAllPaymentMethod() {
        List<PaymentMethod> paymentMethods = new ArrayList<>();
        String sql = "SELECT * FROM PaymentMethod";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                PaymentMethod paymentMethod = new PaymentMethod(
                    rs.getInt("payment_method_id"),
                    rs.getString("payment_method_name"),
                    rs.getString("status")
                );
                paymentMethods.add(paymentMethod);
            }
        } catch (SQLException e) {
            System.out.println("Error fetching payment methods: " + e.getMessage());
        }
        return paymentMethods;
    }

    // Test main method (optional)
    public static void main(String[] args) {
        PaymentMethodDAO dao = new PaymentMethodDAO();
        List<PaymentMethod> list = dao.getAllPaymentMethod();
        if (!list.isEmpty()) {
            System.out.println("First Payment Method: " + list.get(0).getPaymentMethodName());
        } else {
            System.out.println("No payment methods found.");
        }
    }
}
