package controller;

import dal.PaymentMethodDAO;
import dal.ProductsDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.CartItem;
import model.Products;
import model.PaymentMethod;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class HomePos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy danh sách sản phẩm từ database
        ProductsDAO productDAO = new ProductsDAO();
        List<Products> productList = productDAO.getAllProduct();

        // Lấy danh sách phương thức thanh toán từ database
        PaymentMethodDAO paymentDAO = new PaymentMethodDAO();
        List<PaymentMethod> paymentMethods = paymentDAO.getAllPaymentMethod();

        // Gửi dữ liệu sản phẩm và phương thức thanh toán tới JSP
        request.setAttribute("paymentMethods", paymentMethods);
        request.setAttribute("product", productList);

        // Chuyển tiếp đến trang pos-screen.jsp
        request.getRequestDispatcher("pos-screen.jsp").forward(request, response);
    }

    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if ("addToCart".equals(action)) {
//            // Lấy thông tin sản phẩm từ request
//            String name = request.getParameter("name");
//            float price = Float.parseFloat(request.getParameter("price"));
//            String image = request.getParameter("image");
//
//            // Tạo đối tượng sản phẩm mới
//            Products newProduct = new Products();
//            newProduct.setName(name);
//            newProduct.setPrice(price);
//            newProduct.setImage(image);
//
//            // Lấy giỏ hàng từ session
//            HttpSession session = request.getSession();
//            List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
//
//            if (cart == null) {
//                cart = new ArrayList<>();
//            }
//
//            // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
//            boolean productExists = false;
//            for (CartItem item : cart) {
//                if (item.getProduct().getName().equals(newProduct.getName())) {
//                    item.setQuantity(item.getQuantity() + 1); // Tăng số lượng sản phẩm
//                    productExists = true;
//                    break;
//                }
//            }
//
//            // Nếu sản phẩm chưa tồn tại trong giỏ hàng, thêm vào giỏ
//            if (!productExists) {
//                cart.add(new CartItem(newProduct, 1));
//            }
//
//            // Lưu giỏ hàng vào session
//            session.setAttribute("cart", cart);
//
//            // Điều hướng lại trang chính để cập nhật giỏ hàng
//            response.sendRedirect("HomePos");
//
//        }
//    }

    
    public String getServletInfo() {
        return "Servlet quản lý giỏ hàng và sản phẩm";
    }
}
