<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Check Price</title>

        <!-- Thêm thư viện quét mã vạch -->
        <script src="https://unpkg.com/html5-qrcode"></script>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background-color: #f8f9fa;
                min-height: 100vh;
            }
            .main-container {
                padding: 2rem;
                max-width: 1200px;
                margin: 0 auto;
            }
            #reader {
                width: 100%;
                max-width: 600px;
                margin: 0 auto;
            }
            .result-container {
                margin-top: 20px;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 8px;
                background-color: white;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            .product-image {
                max-width: 100%;
                height: auto;
                border-radius: 8px;
            }
            .price-display {
                font-size: 24px;
                font-weight: bold;
                color: #dc3545;
            }
            .stock-display {
                font-size: 18px;
                color: #28a745;
            }
            .barcode-input {
                font-size: 18px;
                padding: 12px;
            }
            .scan-button {
                padding: 15px 30px;
                font-size: 18px;
                margin: 20px 0;
            }
            .page-title {
                text-align: center;
                color: #333;
                margin-bottom: 2rem;
            }
            .error-message {
                background-color: #fff3cd;
                color: #856404;
                border: 1px solid #ffeeba;
                padding: 1rem;
                border-radius: 8px;
                margin: 1rem 0;
                text-align: center;
                font-size: 18px;
                animation: fadeIn 0.5s ease-in;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(-10px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .error-icon {
                color: #dc3545;
                font-size: 24px;
                margin-right: 10px;
            }
            #reader {
                border: 2px solid #ddd;
                border-radius: 8px;
                overflow: hidden;
            }

            #reader video {
                object-fit: cover;
            }

            .scanning-instructions {
                max-width: 600px;
                margin: 0 auto;
            }

            /* Style for successful scan animation */
            @keyframes scanSuccess {
                0% {
                    border-color: #28a745;
                }
                100% {
                    border-color: #ddd;
                }
            }

            .scan-success {
                animation: scanSuccess 0.5s ease-out;
            }
        </style>
    </head>
    <body>
        <div class="main-container">
            <h1 class="page-title">Kiểm tra giá sản phẩm</h1>

            <div class="card">
                <div class="card-body">
                    <!-- Form nhập mã vạch -->
                    <form action="checkPrice" method="GET" class="mb-4">
                        <div class="input-group">
                            <input type="text" name="barcode" class="form-control barcode-input" 
                                   placeholder="Nhập mã vạch sản phẩm" 
                                   value="${searchedBarcode}" <!-- Giữ lại giá trị đã tìm -->
                            <button class="btn btn-primary" type="submit">
                                <i class="fas fa-search"></i> Kiểm tra
                            </button>
                        </div>
                    </form>
                    <!--Hiện lỗi nếu sản phẩm không tìm thấy-->
                    <c:if test="${error != null}">
                        <div class="error-message">
                            <i class="fas fa-exclamation-triangle error-icon"></i>
                            ${error}
                            <c:if test="${searchedBarcode != null}">
                                <div class="mt-2">
                                    Mã vạch tìm kiếm: <strong>${searchedBarcode}</strong>
                                </div>
                            </div>
                        </c:if>
                    </c:if>

                    <!-- Khu vực quét mã vạch -->
                    <div class="text-center">
                        <button class="btn btn-success scan-button" onclick="startScanner()">
                            <i class="fas fa-camera"></i> Quét mã vạch
                        </button>
                        <div class="scanning-instructions mt-3" style="display: none;" id="scanning-instructions">
                            <div class="alert alert-info">
                                <i class="fas fa-info-circle"></i>
                                Hướng camera vào mã vạch sản phẩm. Giữ camera cách mã vạch khoảng 10-15cm và giữ cho ổn định.
                            </div>
                        </div>
                        <div id="reader" class="mt-3" style="display: none;"></div>
                    </div>

                    <!-- Hiển thị kết quả -->
                    <c:if test="${product != null}">
                        <div class="result-container">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="assets/images/product/${product.inventory.product.image}" 
                                         class="product-image" alt="Product Image">
                                </div>
                                <div class="col-md-8">
                                    <h2 class="mb-4">${product.inventory.product.name}</h2>
                                    <p class="mb-3">
                                        <strong>Mã vạch:</strong> 
                                        <span class="badge bg-secondary">${product.inventory.product.barcode}</span>
                                    </p>
                                    <p class="price-display mb-3">
                                        <c:choose>
                                            <c:when test="${product.discount != null}">
                                                Giá bán: <fmt:formatNumber value="${product.discount.priceSell}" pattern="#,##0" />₫
                                            </c:when>
                                            <c:otherwise>
                                                Giá bán: <fmt:formatNumber value="${product.inventory.product.price}" pattern="#,##0" />₫
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                    <p class="stock-display">
                                        <i class="fas fa-box"></i> 
                                        Số lượng còn: ${product.stock}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

        <script>
            let html5QrcodeScanner;

            function startScanner() {
                const reader = document.getElementById('reader');
                const instructions = document.getElementById('scanning-instructions');
                reader.style.display = 'block';
                instructions.style.display = 'block';
                if (!html5QrcodeScanner) {
                    // Configure scanner for barcodes
                    const config = {
                        fps: 10,
                        qrbox: {width: 250, height: 100}, // Make scanning area more rectangular for barcodes
                        formatsToSupport: [
                            Html5QrcodeSupportedFormats.EAN_13,
                            Html5QrcodeSupportedFormats.EAN_8,
                            Html5QrcodeSupportedFormats.CODE_128,
                            Html5QrcodeSupportedFormats.CODE_39,
                            Html5QrcodeSupportedFormats.UPC_A,
                            Html5QrcodeSupportedFormats.UPC_E
                        ]
                    };

                    html5QrcodeScanner = new Html5QrcodeScanner("reader", config);

                    html5QrcodeScanner.render((decodedText) => {
                        // When barcode is scanned, redirect to servlet
                        window.location.href = 'checkPrice?barcode=' + decodedText;
                    }, (error) => {
                        // Handle scan errors silently
                        console.warn(`Code scan error = ${error}`);
                    });
                }
            }
            // Ẩn thông báo lỗi sau 5s
            document.addEventListener('DOMContentLoaded', function () {
                const errorMessage = document.querySelector('.error-message');
                if (errorMessage) {
                    setTimeout(() => {
                        errorMessage.style.opacity = '0';
                        setTimeout(() => {
                            errorMessage.style.display = 'none';
                        }, 500);
                    }, 5000);
                }
            });
            window.addEventListener('beforeunload', function () {
                if (html5QrcodeScanner) {
                    html5QrcodeScanner.clear();
                }
            });
        </script>

        <!-- Font Awesome -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/js/all.min.js" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>