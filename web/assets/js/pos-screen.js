// Hàm thêm sản phẩm vào giỏ hàng
function addToOrder(productName, productImage, productPrice) {
    // Lấy danh sách order hiện tại
    const orderList = document.querySelector('.order-list');

    // Tạo phần tử li mới để chứa sản phẩm
    const newOrderItem = document.createElement('li');
    newOrderItem.innerHTML = `
        <img src="assets/images/imageProducts/${productImage}" alt="${productName}">
        <div class="order-details">
            <h3>${productName}</h3>
            <div class="price">$${parseFloat(productPrice).toFixed(2)}</div>
            <div class="quantity-control">
                <button class="quantity-btn">-</button>
                <span>1</span>
                <button class="quantity-btn">+</button>
            </div>
        </div>
        <button class="remove-btn" onclick="removeProduct(this)">
            <i class="fas fa-trash"></i>
        </button>
    `;

    // Thêm sản phẩm mới vào danh sách
    orderList.appendChild(newOrderItem);

    // Cập nhật tổng tiền sau khi thêm sản phẩm
    updateTotal();

    // Gắn sự kiện click cho các nút tăng/giảm số lượng
    setupQuantityButtons();
}

// Hàm cập nhật tổng tiền
function updateTotal() {
    const orderItems = document.querySelectorAll('.order-list li');
    let subtotal = 0;

    orderItems.forEach(item => {
        const priceText = item.querySelector('.price').innerText;
        const price = parseFloat(priceText.replace('$', ''));
        const quantity = parseInt(item.querySelector('.quantity-control span').innerText);
        subtotal += price * quantity;
    });

    // Cập nhật subtotal
    document.querySelector('.total-summary p span').innerText = `$${subtotal.toFixed(2)}`;

    // Cập nhật tổng (thêm logic giảm giá và thuế nếu có)
    const discount = 5.00;
    const tax = 2.25;
    const total = subtotal - discount + tax;

    document.querySelector('.total-summary h3 span').innerText = `$${total.toFixed(2)}`;
}

// Hàm cài đặt sự kiện cho nút số lượng
function setupQuantityButtons() {
    document.querySelectorAll('.quantity-btn').forEach(button => {
        button.addEventListener('click', function () {
            const quantitySpan = this.parentElement.querySelector('span');
            let currentQuantity = parseInt(quantitySpan.innerText);

            if (this.innerText === '+') {
                currentQuantity++;
            } else if (this.innerText === '-' && currentQuantity > 1) {
                currentQuantity--;
            }
            quantitySpan.innerText = currentQuantity;

            // Cập nhật tổng tiền khi thay đổi số lượng
            updateTotal();
        });
    });
}

// Hàm xóa sản phẩm khỏi giỏ hàng
function removeProduct(button) {
    const productItem = button.parentElement;
    productItem.remove();
    updateTotal();
}
