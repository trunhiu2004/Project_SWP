
let cart = JSON.parse(localStorage.getItem('cart')) || [];


function addToOrder(productName, productImage, productPrice) {
    const existingProduct = cart.find(item => item.name === productName);

    if (existingProduct) {
        existingProduct.quantity += 1;
    } else {
        const product = {
            name: productName,
            image: productImage,
            price: parseFloat(productPrice),
            quantity: 1
        };
        cart.push(product);
    }


    localStorage.setItem('cart', JSON.stringify(cart));
    updateOrderList();
}


function updateOrderList() {
    const orderList = document.querySelector(".order-list");
    orderList.innerHTML = "";

    cart.forEach((product, index) => {
        const listItem = document.createElement("li");
        listItem.innerHTML = `
            <img src="assets/images/imageProducts/${product.image}" alt="${product.name}">
            <span>${product.name} - $${product.price}</span>
            <div class="quantity-controls">
                <button onclick="decreaseQuantity(${index})">-</button>
                <span>${product.quantity}</span>
                <button onclick="increaseQuantity(${index})">+</button>
            </div>
            <button class="delete-btn" onclick="deleteProduct(${index})">Delete</button>
        `;
        orderList.appendChild(listItem);
    });

    updateTotalSummary();
}


function updateTotalSummary() {
    const subtotalElement = document.querySelector(".total-summary p span"); 
    const taxElement = document.querySelector(".total-summary p:nth-of-type(3) span"); 
    const totalElement = document.querySelector(".total-summary h3 span"); 

    const subtotal = cart.reduce((acc, product) => acc + product.price * product.quantity, 0);
    const discount = 0; 
    const tax = subtotal * 0.1;
    const total = subtotal - discount + tax;


    subtotalElement.textContent = `$${subtotal.toFixed(2)}`;
    taxElement.textContent = `$${tax.toFixed(2)}`;
    totalElement.textContent = `$${total.toFixed(2)}`;
}

function increaseQuantity(index) {
    cart[index].quantity += 1;
    localStorage.setItem('cart', JSON.stringify(cart));
    updateOrderList();
}


function decreaseQuantity(index) {
    if (cart[index].quantity > 1) {
        cart[index].quantity -= 1;
    } else {
        deleteProduct(index); 
    }
    localStorage.setItem('cart', JSON.stringify(cart));
    updateOrderList();
}


function deleteProduct(index) {
    cart.splice(index, 1);
    localStorage.setItem('cart', JSON.stringify(cart));
    updateOrderList();
}


window.onload = function() {
    const storedCart = localStorage.getItem('cart');
    if (storedCart) {
        cart = JSON.parse(storedCart);
        updateOrderList();
    }
};
