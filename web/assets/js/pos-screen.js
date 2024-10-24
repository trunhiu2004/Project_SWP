
let cart = JSON.parse(localStorage.getItem('cart')) || [];


function addToOrder(name, image, price) {
    const existingProduct = cart.find(item => item.name === name);

    if (existingProduct) {
        existingProduct.quantity += 1;
    } else {
        const product = {
            name: name,
            image: image,
            price: parseFloat(price),
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
            <img src="assets/images/product/${product.image}" alt="${product.name}">
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
     
    const totalElement = document.querySelector(".total-summary h3 span"); 

    const subtotal = cart.reduce((acc, product) => acc + product.price * product.quantity, 0);
    const discount = 0; 
    
    const total = subtotal;


    subtotalElement.textContent = `$${subtotal.toFixed(2)}`;
   
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
