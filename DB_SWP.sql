USE [master]
GO

/*******************************************************************************
   Drop database if it exists
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'[SWP_PROJECT]')
BEGIN
	ALTER DATABASE [SWP_PROJECT] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [SWP_PROJECT] SET ONLINE;
	DROP DATABASE [SWP_PROJECT];
END

GO

CREATE DATABASE [SWP_PROJECT]
GO

USE [SWP_PROJECT]
GO

/*******************************************************************************
	Drop tables if exists
*******************************************************************************/
DECLARE @sql nvarchar(MAX) 
SET @sql = N'' 

SELECT @sql = @sql + N'ALTER TABLE ' + QUOTENAME(KCU1.TABLE_SCHEMA) 
    + N'.' + QUOTENAME(KCU1.TABLE_NAME) 
    + N' DROP CONSTRAINT ' -- + QUOTENAME(rc.CONSTRAINT_SCHEMA)  + N'.'  -- not in MS-SQL
    + QUOTENAME(rc.CONSTRAINT_NAME) + N'; ' + CHAR(13) + CHAR(10) 
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS RC 

INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU1 
    ON KCU1.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG  
    AND KCU1.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
    AND KCU1.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 

EXECUTE(@sql) 

GO
DECLARE @sql2 NVARCHAR(max)=''

SELECT @sql2 += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

Exec Sp_executesql @sql2 
GO 

-- Bảng Roles (Vai trò)
CREATE TABLE Roles (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name NVARCHAR(50)
)

-- Bảng AccountStatus (Trạng thái tài khoản)
CREATE TABLE AccountStatus (
    status_id INT PRIMARY KEY IDENTITY(1,1),
    status_name NVARCHAR(MAX)
)

-- Bảng Accounts (Tài khoản)
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY IDENTITY(1,1),
    email NVARCHAR(255),
    password NVARCHAR(255),
    role_id INT,
    status_id INT,
    FOREIGN KEY (role_id) REFERENCES Roles(role_id),
    FOREIGN KEY (status_id) REFERENCES AccountStatus(status_id)
)

-- Bảng Employees (Nhân viên)
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    employee_name NVARCHAR(255),
    employee_phone NVARCHAR(15),
    employee_address NVARCHAR(255),
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
)

-- Bảng CustomerTypes (Loại khách hàng)
CREATE TABLE CustomerTypes (
    customer_type_id INT PRIMARY KEY IDENTITY(1,1),
    type_name NVARCHAR(255)
)

-- Bảng EmployeeAttendance (Chấm công nhân viên)
CREATE TABLE EmployeeAttendance (
    attendance_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    login_time DATETIME NOT NULL,
    logout_time DATETIME NULL,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) ON DELETE CASCADE
)

-- Bảng Customers (Khách hàng)
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    customer_name NVARCHAR(255),
    customer_phone NVARCHAR(15),
    point INT,
    customer_type_id INT,
    FOREIGN KEY (customer_type_id) REFERENCES CustomerTypes(customer_type_id)
)

-- Bảng Coupons (Phiếu giảm giá)
CREATE TABLE Coupons (
    coupon_id INT PRIMARY KEY IDENTITY(1,1),
    coupon_code NVARCHAR(50),
    discount_amount DECIMAL(10,2),
    coupon_start_date DATE,
    coupon_end_date DATE,
    coupon_status NVARCHAR(50)
)

-- Bảng CustomerCoupon (Phiếu giảm giá của khách hàng)
CREATE TABLE CustomerCoupon (
    customer_coupon_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    coupon_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (coupon_id) REFERENCES Coupons(coupon_id)
)

-- Bảng Product_Categories (Danh mục sản phẩm)
CREATE TABLE Product_Categories (
    category_id INT PRIMARY KEY IDENTITY(1,1),
    category_name NVARCHAR(255)
)

-- Bảng Weight_unit (Đơn vị trọng lượng)
CREATE TABLE Weight_unit (
    weight_unit_id INT PRIMARY KEY IDENTITY(1,1),
    unit_name NVARCHAR(50)
)

-- Bảng Suppliers (Nhà cung cấp)
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY IDENTITY(1,1),
    supplier_name NVARCHAR(255),
    supplier_address NVARCHAR(255),
    supplier_phone NVARCHAR(15),
    supplier_email NVARCHAR(255),
    supplier_contact_person NVARCHAR(255),
    image NVARCHAR(255)
)

-- Bảng Products (Sản phẩm)
CREATE TABLE Products (
    product_id INT PRIMARY KEY IDENTITY(1,1),
    category_id INT,
    barcode NVARCHAR(255),
    product_name NVARCHAR(255),
    product_price INT,
    weight_unit_id INT,
    supplier_id INT,
    product_image NVARCHAR(255),
    manufacture_date DATE,
    expiration_date DATE,
    batch INT,
    FOREIGN KEY (category_id) REFERENCES Product_Categories(category_id),
    FOREIGN KEY (weight_unit_id) REFERENCES Weight_unit(weight_unit_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
)

-- Bảng DiscountProduct (Sản phẩm giảm giá)
CREATE TABLE DiscountProduct (
    discount_product_id INT PRIMARY KEY IDENTITY(1,1),
    product_id INT NOT NULL,
    price_sell DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
)

-- Bảng Inventory (Kho hàng)
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY IDENTITY(1,1),
    product_id INT,
    current_stock INT,
    inventory_status NVARCHAR(50),
    last_restock_date DATETIME,
    alert NVARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
)

-- Bảng StoreStock (Tồn kho cửa hàng)
CREATE TABLE StoreStock (
    store_stock_id INT PRIMARY KEY IDENTITY(1,1),
    inventory_id INT,
    quantity_in_stock INT,
    last_stock_check_date DATE,
    discount_product_id INT,
    alert NVARCHAR(255),
    FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id),
    FOREIGN KEY (discount_product_id) REFERENCES DiscountProduct(discount_product_id)
)

-- Bảng Orders (Đơn hàng)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    order_date DATETIME,
    order_total_amount DECIMAL(10,2),
    order_status NVARCHAR(50),
    customer_coupon_id INT,
    employee_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (customer_coupon_id) REFERENCES CustomerCoupon(customer_coupon_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
)

-- Bảng OrdersDetails (Chi tiết đơn hàng)
CREATE TABLE OrdersDetails (
    order_detail_id INT PRIMARY KEY IDENTITY(1,1),
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price INT,
    total_price INT,
    store_stock_id INT,
    order_id INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (store_stock_id) REFERENCES StoreStock(store_stock_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
)

-- Bảng ShiftManagers (Quản lý ca)
CREATE TABLE ShiftManagers (
    shift_manager_id INT PRIMARY KEY IDENTITY(1,1),
    shift_start_time DATETIME,
    shift_end_time DATETIME,
    cash_start DECIMAL(10,2),
    cash_end DECIMAL(10,2),
    total_revenue DECIMAL(10,2),
    total_hours DECIMAL(10,2),
    notes NVARCHAR(255),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
)

-- Bảng PaymentMethod (Phương thức thanh toán)
CREATE TABLE PaymentMethod (
    payment_method_id INT PRIMARY KEY IDENTITY(1,1),
    payment_method_name NVARCHAR(50),
    status NVARCHAR(50)
)

-- Bảng Promotion (Khuyến mãi)
CREATE TABLE Promotion (
    promotion_id INT PRIMARY KEY IDENTITY(1,1),
    promotion_name NVARCHAR(255) NOT NULL,
    description NVARCHAR(MAX),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    discount_value DECIMAL(10,2),
    status NVARCHAR(50)
)

-- Bảng Invoices (Hóa đơn)
CREATE TABLE Invoices (
    invoice_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT NOT NULL,
    invoice_date DATETIME,
    invoice_total_amount DECIMAL(10,2),
    invoice_status NVARCHAR(50),
    shift_manager_id INT NOT NULL,
    employee_id INT,
    payment_method_id INT NOT NULL,
    promotion_id INT,
    customer_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (shift_manager_id) REFERENCES ShiftManagers(shift_manager_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (payment_method_id) REFERENCES PaymentMethod(payment_method_id),
    FOREIGN KEY (promotion_id) REFERENCES Promotion(promotion_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)
-- Bảng EmailSettings (Cài đặt email)
CREATE TABLE EmailSettings (
    email_setting_id INT PRIMARY KEY IDENTITY(1,1),
    smtp_server NVARCHAR(255) NOT NULL,
    smtp_port INT NOT NULL,
    auth_password NVARCHAR(255),
    from_email NVARCHAR(255) NOT NULL UNIQUE
)

-- Bảng EmailTemplates (Mẫu email)
CREATE TABLE EmailTemplates (
    template_id INT PRIMARY KEY IDENTITY(1,1),
    template_name NVARCHAR(255) NOT NULL UNIQUE,
    subject NVARCHAR(255) NOT NULL,
    content NVARCHAR(MAX) NOT NULL,
    variables NVARCHAR(MAX),
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE()
)

-- Bảng Mailog (Lịch sử gửi mail)
CREATE TABLE Mailog (
    mailog_id INT PRIMARY KEY IDENTITY(1,1),
    recipient_email NVARCHAR(255) NOT NULL,
    mail_subject NVARCHAR(255),
    mail_content NVARCHAR(MAX),
    mail_sent_date DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50), -- 'SUCCESS', 'FAILED'
    error_message NVARCHAR(MAX), -- Lưu lỗi nếu gửi thất bại
    template_id INT, -- Optional, link to EmailTemplates if used
    FOREIGN KEY (template_id) REFERENCES EmailTemplates(template_id)
)


-- Bảng HistoryPrice (Lịch sử giá)
CREATE TABLE HistoryPrice (
    history_id INT PRIMARY KEY IDENTITY(1,1),
    product_id INT,
    price DECIMAL(10,2),
    price_before DECIMAL(10,2),
    updated_at DATETIME,
    status NVARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
)

-- Bảng InventoryDetails (Chi tiết kho)
CREATE TABLE InventoryDetails (
    inventory_detail_id INT PRIMARY KEY IDENTITY(1,1),
    inventory_id INT,
    quantity INT,
    date DATE,
    status NVARCHAR(255),
    FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
)

-- Bảng ReportInventoryDetails (Chi tiết báo cáo kho)
CREATE TABLE ReportInventoryDetails (
    report_inventory_detail_id INT PRIMARY KEY IDENTITY(1,1),
    product_id INT,
    reported_quantity INT,
    report_date DATETIME,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
)

-- Bảng ReportInventory (Báo cáo kho)
CREATE TABLE ReportInventory (
    report_inventory_id INT PRIMARY KEY IDENTITY(1,1),
    report_date DATETIME,
    total_quantity_reported INT,
    report_inventory_detail_id INT,
    FOREIGN KEY (report_inventory_detail_id) REFERENCES ReportInventoryDetails(report_inventory_detail_id)
)

-- Bảng ReportRevenueDetails (Chi tiết báo cáo doanh thu)
CREATE TABLE ReportRevenueDetails (
    report_revenue_detail_id INT PRIMARY KEY IDENTITY(1,1),
    revenue_amount DECIMAL(10,2),
    report_date DATETIME,
    invoice_id INT,
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id)
)

-- Bảng ReportRevenue (Báo cáo doanh thu)
CREATE TABLE ReportRevenue (
    report_revenue_id INT PRIMARY KEY IDENTITY(1,1),
    report_date DATETIME,
    report_revenue_detail_id INT,
    total_revenue DECIMAL(10,2),
    FOREIGN KEY (report_revenue_detail_id) REFERENCES ReportRevenueDetails(report_revenue_detail_id)
)

-- Bảng ShopDetails (Thông tin cửa hàng)
CREATE TABLE ShopDetails (
    shop_id INT PRIMARY KEY IDENTITY(1,1),
    shop_name NVARCHAR(255),
    shop_address NVARCHAR(255),
    shop_phone NVARCHAR(15),
    shop_email NVARCHAR(255),
    shop_opening_hours NVARCHAR(100),
    shop_logo NVARCHAR(255)
)



-- INSERT DATA

-- Thêm dữ liệu cho bảng Roles
INSERT INTO Roles (role_name) VALUES 
('Admin'),
('Staff');
GO

-- Thêm dữ liệu cho bảng AccountStatus
INSERT INTO AccountStatus (status_name) VALUES 
('Active'),
('Inactive');
GO

-- Thêm dữ liệu cho bảng Accounts
INSERT INTO Accounts (email, password, role_id, status_id) VALUES 
('ankhanh7080@gmail.com', '$2a$10$Nt9bdnHxoQ8ffbSpGGOMduYLskDPIDOo9cs.qWS9G4rlxhQUQy2Pi', 1, 1);
GO

-- Thêm dữ liệu cho bảng CustomerTypes
INSERT INTO CustomerTypes (type_name) VALUES 
(N'Đồng'), 
(N'Bạc'), 
(N'Vàng'); 
GO

-- Thêm dữ liệu cho bảng Customers
INSERT INTO Customers (customer_name, customer_phone, point, customer_type_id) VALUES 
(N'Khách lẻ', '0123456789', 0, 1),
(N'Phan Thanh Vinh', '0831524866', 100, 1),
(N'Dương Tiến Ðức', '0821160443', 500, 1),
(N'Trần Quang Triều', '0837474489', 1000, 2),
(N'Đặng Gia Hòa', '0932778129', 2000, 3),
(N'Võ Ðức Thắng', '0395153411', 2500, 3),
(N'Trần Thiện Luân', '0382481650', 800, 2),
(N'Bùi Phú Thịnh', '0886801877', 250, 1),
(N'Lê Trung Thành', '0383116603', 300, 3);
GO

 
-- Bảng Employees (Không Add)

-- Thêm dữ liệu cho bảng Product_Categories
INSERT INTO Product_Categories (category_name) VALUES 
(N'Thực phẩm tươi'),
(N'Thực phẩm khô'),
(N'Thực phẩm chế biến sẵn'),
(N'Đồ uống'),
(N'Gia vị'),
(N'Bánh kẹo'),
(N'Đồ dùng gia đình'),
(N'Sản phẩm làm đẹp'),
(N'Sản phẩm chăm sóc sức khỏe'),
(N'Sản phẩm từ sữa'),
(N'Đồ ăn nhanh'),
(N'Thức ăn cho thú cưng'),
(N'Thực phẩm hữu cơ'),
(N'Rau củ quả'),
(N'Thực phẩm đông lạnh');
GO

-- Thêm dữ liệu cho bảng Weight_unit
INSERT INTO Weight_unit (unit_name) VALUES 
(N'Gói'),
(N'Thùng'),
(N'Hộp'),
(N'Lốc'),
(N'Lon'),
(N'Chai'),
(N'Túi'),
(N'Kg'),
(N'Gram'),
(N'Lít'),
(N'Bịch to'),
(N'Chiếc');
GO

-- Thêm dữ liệu cho bảng Suppliers
INSERT INTO Suppliers (supplier_name, supplier_address, supplier_phone, supplier_email, supplier_contact_person, image) VALUES 
(N'Công ty TNHH Coca-Cola', N'485 Xa lộ Hà Nội - Phường Linh Trung - Quận Thủ Đức - TP. Hồ Chí Minh', N'02838961000', N'anhthan@coca-cola.com', N'Thân Trọng Nam Anh', N'cocacola_logo.png'),
(N'Công ty PepsiCo Việt Nam', N'Cao Ốc Sheraton, Số 88, Đường Đồng Khởi, Q. 1, TP. Hồ Chí Minh', N'02838219437', N'nguyenthimy.phuong@suntorypepsico.vn', N'Nguyễn Thị Mỹ Phương', N'pepsi_logo.png'),
(N'Công ty Acecook Việt Nam', N'Lô số II-3, Đường số 11, Nhóm CN II, Khu Công nghiệp Tân Bình, Phường Tây Thạnh, Quận Tân Phú, TP. Hồ Chí Minh', N'02838154064', N'info@acecookvietnam.com', N'Acecook Viet Nam', N'acecook_logo.png'),
(N'Công ty Gạo Việt', N'170 I, Nơ Trang Long, Phường 12, Quận Bình Thạnh, TP Hồ Chí Minh', N'02838433095', N'dovanhoa@gentraco.com.vn', N'Đỗ Văn Hoà', N'gao_viet_logo.png'),
(N'Công ty Rau Xanh', N'2 P.Phạm Ngọc Thạch, Kim Liên, Đống Đa, Hà Nội', N'02435741425', N'info@rauxanh.vn', N'Phan Kim Long', N'rau_xanh_logo.png'),
(N'Công ty Thực Phẩm 3 Cô Gái', N'Lô 5-4 Đường M14, KCN Tân Bình mở rộng, P. Bình Hưng Hòa, Quận Bình Tân, TP. Hồ Chí Minh', N'02862960000', N'thaicorp@tcivn.com', N'THAICORP', N'thuc_pham_3_co_gai_logo.png'),
(N'Công ty Mondelez Kinh Đô', N'138 – 142 Hai Bà Trưng, P. Đa Kao, Q. 1, TP. Hồ Chí Minh', N'0838270838', N'customercare.MKD@mdlz.com', N'Trần Anh Tú', N'mondelez_kinh_do_logo.png'),
(N'Công ty Bia Heineken', N'Tầng 18 và 19, tòa nhà Vietcombank, số 5 Công trường Mê Linh, Phường Bến Nghé, Quận 1, Thành Phố Hồ Chí Minh', N'19001845', N'contactvn@heineken.com', N'Công ty TNHH Nhà Máy Bia HEINEKEN Việt Nam', N'heineken_logo.png'),
(N'Công ty Vinamilk', N'Tầng 11, Tháp B, Tòa nhà Handi Resco, 521 Kim Mã, Phường Ngọc Khánh, Quận Ba Đình, TP. Hà Nội', N'02437246019', N'vinamilk@vinamilk.com.vn', N'Trần Văn Tính', N'vinamilk_logo.png'),
(N'Công ty Unilever Việt Nam', N'Số 156 Nguyễn Lương Bằng, Phường Tân Phú, Quận 7, TP. Hồ Chí Minh', N'02854135686', N'Nguyen-Lan.Huong@Unilever.com', N'Nguyễn Lan Hương', N'unilever_logo.png');
GO



-- Thêm dữ liệu cho bảng Products
INSERT INTO Products (category_id, barcode, product_name, product_price, weight_unit_id, supplier_id, product_image, manufacture_date, expiration_date, batch) VALUES 
(4, N'8930012345700', N'Nước ngọt Coca-Cola', 10000, 6, 1, N'coca.png', '2024-01-01', '2024-10-19', 1),
(1, N'8930012345717', N'Nước cam ép Twister', 15000, 7, 2, N'twister.png', '2023-12-01', '2024-11-09', 1),
(1, N'8930012345724', N'Trà xanh 0 độ', 12000, 6, 1, N'0do.png', '2024-02-01', '2025-02-01', 1),
(2, N'8930012345731', N'Mì gói Hảo Hảo', 4000, 6, 3, N'haohao.png', '2024-03-01', '2025-03-01', 1),
(1, N'8930012345748', N'Gạo tám thơm', 18000, 7, 4, N'gaotamthom.png', '2023-11-15', '2024-11-15', 1),
(1, N'8930012345755', N'Rau cải xanh tươi', 20000, 1, 5, N'raucai.png', '2023-09-10', '2024-09-10', 1),
(3, N'8930012345762', N'Cá hộp 3 Cô Gái', 25000, 3, 6, N'cahop.png', '2023-10-20', '2024-10-20', 1),
(10, N'8930012345779', N'Sữa tươi Vinamilk', 12000, 1, 9, N'suatuoi.png', '2024-04-05', '2025-04-05', 1),
(6, N'8930012345786', N'Bánh Oreo', 15000, 1, 8, N'oreo.png', '2024-06-01', '2025-06-01', 1),
(1, N'8930012345793', N'Bia Heineken', 18000, 1, 8, N'heineken.png', '2023-08-15', '2024-08-15', 1),
(4, N'8930012345809', N'C2', 2000, 1, 7, N'c2_logo.png', '2023-08-15', '2024-08-20', 1);
GO

-- Thêm dữ liệu cho bảng PaymentMethod
INSERT INTO PaymentMethod (payment_method_name, status) VALUES 
(N'Tiền mặt', N'Active'),
(N'Chuyển khoản', N'Active');
GO

-- Thêm dữ liệu cho bảng Promotion
INSERT INTO Promotion (promotion_name, description, start_date, end_date, discount_value, status) VALUES 
(N'Khuyến Mãi Tết Nguyên Đán', N'Giảm giá đặc biệt mừng năm mới', '2024-01-01', '2024-01-31', 15.00, N'Active'),
(N'Khuyến Mãi Mùa Hè', N'Giảm giá cho các sản phẩm mùa hè', '2024-06-01', '2024-08-31', 10.00, N'Inactive'),
(N'Giảm Giá Cuối Năm', N'Khuyến mãi cho mùa lễ hội cuối năm', '2024-12-01', '2024-12-31', 25.00, N'Inactive'),
(N'Ngày Hội Siêu Khuyến Mãi', N'Giảm giá mạnh cho các mặt hàng chọn lọc', '2024-09-01', '2024-09-10', 30.00, N'Active'),
(N'Khuyến Mãi Học Sinh Sinh Viên', N'Giảm giá cho tất cả sản phẩm dành cho học sinh sinh viên', '2024-08-15', '2024-11-15', 20.00, N'Active');
GO


-- Thêm dữ liệu cho bảng Coupons
INSERT INTO Coupons (coupon_code, discount_amount, coupon_start_date, coupon_end_date, coupon_status) VALUES 
(N'CHAO_MUNG10', 10.00, '2024-01-01', '2024-12-31', N'Active'),
(N'MUA_HE20', 20.00, '2024-06-01', '2024-08-31', N'Inactive'),
(N'GIAM_GIA30', 30.00, '2024-12-01', '2024-12-31', N'Inactive'),
(N'TET_NGUYEN_DAN15', 15.00, '2024-01-10', '2024-01-25', N'Active'),
(N'HSSV_DISCOUNT25', 25.00, '2024-08-15', '2024-11-30', N'Active');
GO

-- Bảng CustomerCoupon (Không Add)

-- Thêm dữ liệu cho bảng EmailSettings
INSERT INTO EmailSettings (smtp_server, smtp_port, auth_password, from_email) VALUES 
('smtp.gmail.com', 587, 'xdzsbhzrwmhakzvw', 'friendzone112004@gmail.com');
GO

-- Thêm dữ liệu cho bảng EmailTemplates
INSERT INTO EmailTemplates (template_name, subject, content, variables)
VALUES 
    (N'Password Reset Template', N'Yêu cầu đặt lại mật khẩu', 
     N'<html>  <head>  <meta charset="UTF-8">  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      <style>          body {              font-family: Arial, sans-serif;              line-height: 1.6;              color: #333;          }          .container {              width: 100%;              max-width: 600px;              margin: 0 auto;              padding: 20px;          }          .button {              display: inline-block;              padding: 10px 20px;              background-color: #007bff;              color: #ffffff;              text-decoration: none;              border-radius: 5px;          }      </style>  </head>  <body>      <div class="container">          <h2>Xin chào {{email}},</h2>                    <p>Chúng tôi đã nhận được yêu cầu đặt lại mật khẩu cho tài khoản của bạn. Nếu bạn không thực hiện yêu cầu này, vui lòng bỏ qua email này.</p>                    <p>Để đặt lại mật khẩu của bạn, vui lòng nhấp vào nút bên dưới:</p>                    <p>              <a href="{{reset_link}}" class="button">Đặt lại mật khẩu</a>          </p>                    <p>Hoặc, bạn có thể sao chép và dán liên kết sau vào trình duyệt của mình:</p>                    <p>{{reset_link}}</p>                    <p>Nếu bạn gặp bất kỳ vấn đề nào, vui lòng liên hệ với bộ phận hỗ trợ của chúng tôi.</p>                    <p>Trân trọng,<br>Đội ngũ hỗ trợ của chúng tôi</p>      </div>  </body>  </html>', 
     N'email, reset_link'),

    (N'Register Confirmation Template', N'Xác nhận đăng kí tài khoản', 
     N'<html>  <head>  <meta charset="UTF-8">  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      <style>          body {              font-family: Arial, sans-serif;              line-height: 1.6;              color: #333;          }          .container {              width: 100%;              max-width: 600px;              margin: 0 auto;              padding: 20px;          }          .button {              display: inline-block;              padding: 10px 20px;              background-color: #4CAF50;              color: #ffffff;              text-decoration: none;              border-radius: 5px;          }      </style>  </head>  <body>      <div class="container">          <h2>Xác nhận đăng ký tài khoản</h2>                    <p>Xin chào {{email}},</p>                    <p>Cảm ơn bạn đã đăng ký tài khoản trên hệ thống của chúng tôi. Để hoàn tất quá trình đăng ký, vui lòng xác nhận địa chỉ email của bạn bằng cách nhấp vào nút bên dưới:</p>                    <p>              <a href="{{link}}" class="button">Xác nhận email</a>          </p>                    <p>Hoặc, bạn có thể sao chép và dán liên kết sau vào trình duyệt của mình:</p>                    <p>{{link}}</p>                    <p>Nếu bạn không thực hiện đăng ký này, vui lòng bỏ qua email này.</p>                    <p>Trân trọng,<br>Đội ngũ hỗ trợ của chúng tôi</p>      </div>  </body>  </html>  ', 
     N'email, link')
GO
-- Thêm dữ liệu cho bảng ShopDetails
INSERT INTO ShopDetails (shop_name, shop_address, shop_phone, shop_email, shop_opening_hours, shop_logo) VALUES 
(N'Siêu thị FPT', N'FPT University, Hà Nội', N'02412345678', N'contact@fptmart.vn', N'8:00 AM - 10:00 PM', N'shoplogo.png');
GO

-- Bảng Orders (Không Add)

-- Bảng OrderDetails (Không Add)

-- Bảng OrderDetails (Không Add) 

-- Thêm dữ liệu cho bảng Inventory
INSERT INTO Inventory (product_id, current_stock, inventory_status, last_restock_date, alert) VALUES 
(1, 100, N'Còn hàng', '2024-10-15 10:00:00.000', N'Không'),
(2, 150, N'Còn hàng', '2024-10-14 12:00:00.000', N'Không'),
(3, 40, N'Sắp hết hàng', '2024-10-15 09:00:00.000', N'Cảnh báo'),
(4, 9, N'Sắp hết hàng', '2024-11-01 10:12:39.277', N'Cảnh báo'),
(5, 0, N'Hết hàng', '2024-10-15 21:26:36.000', N'Cảnh báo'),
(6, 50, N'Còn hàng', '2024-10-10 06:00:00.000', N'Không'),
(7, 20, N'Còn hàng', '2024-10-15 13:30:00.000', N'Không'),
(8, 10, N'Sắp hết hàng', '2024-10-16 09:13:00.373', N'Cảnh báo'),
(9, 30, N'Còn hàng', '2024-10-17 13:00:00.000', N'Không'),
(10, 100, N'Còn hàng', '2024-10-15 17:00:00.000', N'Không'),
(11, 80, N'Còn hàng', '2024-10-15 18:42:57.503', N'Không');
GO

-- Bảng InventoryDetails (Không Add)

-- Bảng HistoryPrice (Không Add)


-- Bảng Mailog (Không Add)

-- Bảng ReportInventoryDetails (Không Add)


-- Bảng ReportInventory (Không Add)


-- Bảng ReportRevenueDetails (Không Add)

-- Bảng ReportRevenue (Không Add)

-- Thêm dữ liệu cho bảng StoreStock
INSERT INTO StoreStock (inventory_id, quantity_in_stock, last_stock_check_date, discount_product_id, alert) VALUES 
(1, 46, '2024-10-16', NULL, N'Không'),  
(2, 125, '2024-10-16', NULL, N'Không'), 
(3, 34, '2024-10-16', NULL, N'Cảnh báo'), 
(4, 1, '2024-11-01', NULL, N'Cảnh báo'), 
(5, 0, '2024-10-15', NULL, N'Cảnh báo'), 
(6, 50, '2024-10-16', NULL, N'Không'), 
(7, 20, '2024-10-16', NULL, N'Không'), 
(8, 10, '2024-10-16', NULL, N'Cảnh báo'), 
(9, 30, '2024-10-16', NULL, N'Không'), 
(10, 100, '2024-10-16', NULL, N'Không'), 
(11, 80, '2024-10-16', NULL, N'Không'); 
GO

-- TRIGGER:

CREATE OR ALTER TRIGGER [dbo].[trg_CreateShiftOnAttendance]
ON [dbo].[EmployeeAttendance]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @employee_id INT;
    DECLARE @login_time DATETIME;
    DECLARE @logout_time DATETIME;

    -- Lấy chi tiết bản ghi chấm công mới được thêm hoặc cập nhật
    SELECT @employee_id = employee_id,
           @login_time = login_time,
           @logout_time = logout_time
    FROM inserted;

    IF @logout_time IS NULL
    BEGIN
        -- Thêm một bản ghi ca mới khi nhân viên đăng nhập
        INSERT INTO [dbo].[ShiftManagers] (shift_start_time, employee_id)
        VALUES (@login_time, @employee_id);
    END
    ELSE
    BEGIN
        -- Cập nhật bản ghi ca hiện có với thời gian đăng xuất và tính số giờ dưới dạng thập phân
        UPDATE [dbo].[ShiftManagers]
        SET shift_end_time = @logout_time,
            total_hours = CAST(DATEDIFF(MINUTE, shift_start_time, @logout_time) AS DECIMAL(10, 2)) / 60.0
        WHERE employee_id = @employee_id
          AND shift_end_time IS NULL;  -- Đảm bảo chỉ cập nhật ca đang mở
    END
END;

GO

CREATE OR ALTER TRIGGER [dbo].[trg_CalculateTotalRevenueOnShiftEnd]
ON [dbo].[ShiftManagers]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @employee_id INT;
    DECLARE @shift_start_time DATETIME;
    DECLARE @shift_end_time DATETIME;
    DECLARE @total_revenue DECIMAL(10, 2);

    -- Lấy các giá trị của ca làm việc mới được cập nhật
    SELECT @employee_id = employee_id,
           @shift_start_time = shift_start_time,
           @shift_end_time = shift_end_time
    FROM inserted;

    -- Kiểm tra nếu thời gian kết thúc ca đã được cập nhật
    IF @shift_end_time IS NOT NULL
    BEGIN
        -- Tính tổng `order_total_amount` cho các đơn hàng đã hoàn thành trong ca làm
        SELECT @total_revenue = SUM(order_total_amount)
        FROM [dbo].[Orders]
        WHERE employee_id = @employee_id
          AND order_status = 'COMPLETED'
          AND order_date >= @shift_start_time
          AND order_date <= @shift_end_time;

        -- Cập nhật `total_revenue` cho ca làm hiện tại
        UPDATE [dbo].[ShiftManagers]
        SET total_revenue = ISNULL(@total_revenue, 0)
        WHERE employee_id = @employee_id
          AND shift_start_time = @shift_start_time
          AND shift_end_time = @shift_end_time;
    END
END;

GO