// Initialize functions when document is ready
$(document).ready(function () {
    console.log('Document ready');
    console.log('jQuery version:', $.fn.jquery);
    console.log('Select2 loaded:', typeof $.fn.select2 !== 'undefined');

    console.log('Customer select element exists:', $('#customerSelect').length > 0);
    console.log('Customer select HTML:', $('#customerSelect')[0]?.outerHTML);

    console.log('Edit button exists:', document.querySelector('.customer_action_btn i.material-icons') !== null);

    initializeOtherSelects();
    initializeFeatures();
});
function initializeCustomerSelect() {
    console.log('Initializing customer select...');

    $('#customerSelect').select2({
        placeholder: 'Chọn khách hàng',
        allowClear: true,
        width: '100%',
        ajax: {
            url: 'load-customers',
            dataType: 'json',
            delay: 250,
            data: function (params) {
                console.log('Search params:', params);
                return {
                    search: params.term || ''
                };
            },
            processResults: function (data) {
                console.log('Received data:', data);
                return {
                    results: $.map(data, function (customer) {
                        return {
                            id: customer.id,
                            text: customer.name + ' - ' + customer.phone + ' (' + customer.type + ')'
                        };
                    })
                };
            },
            cache: false
        },
        minimumInputLength: 0
    }).on('select2:select', function (e) {
        var data = e.params.data;
        console.log('Selected:', data);

        $.ajax({
            url: 'set-customer',
            method: 'GET',
            data: {id: data.id},
            success: function (response) {
                console.log('Set customer response:', response);
            },
            error: function (xhr, status, error) {
                console.error('Error:', error);
            }
        });
    });
}

// Gọi hàm khi document ready
$(document).ready(function () {
    initializeCustomerSelect();
});

// Format customer in dropdown
function formatCustomer(customer) {
    if (!customer.id)
        return customer.text;

    return $('<div class="customer-option">' +
            '<div class="customer-name">' + customer.text + '</div>' +
            '</div>');
}

// Initialize other Select2 elements
function initializeOtherSelects() {
    $('.select2:not(#customerSelect)').select2({
        theme: "classic",
        minimumResultsForSearch: Infinity,
        width: '100%',
        dropdownCssClass: 'select2-dropdown-clean'
    });
}

// Initialize all features
function initializeFeatures() {
    initializeStockBadges();
    initializeTimeUpdate();
    initializeFullscreenButton();
    initializeBarcodeScanner();
    initializeSearchProduct();
    initializeCancelButton();
    initializeCustomerModal();
}

// Cart Management Functions
function addToCart(storeStockId) {
    window.location.href = 'add-to-cart?storeStockId=' + storeStockId;
}

function updateQuantity(storeStockId, action, value = null) {
    let data = new URLSearchParams();
    data.append('storeStockId', storeStockId);
    data.append('action', action);

    if (value !== null) {
        data.append('quantity', value);
    }

    fetch('update-cart', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: data.toString()
    })
            .then(response => {
                if (!response.ok)
                    throw new Error('Network response was not ok');
                return response.json();
            })
            .then(data => {
                if (data.success) {
                    window.location.href = 'PoSHome';
                } else {
                    alert(data.error || 'Error updating cart');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error updating cart');
            });
}

function removeFromCart(storeStockId) {
    if (confirm('Are you sure you want to remove this item?')) {
        const id = parseInt(storeStockId);
        if (isNaN(id)) {
            alert('Invalid item ID');
            return;
        }

        fetch('remove-from-cart?storeStockId=' + id)
                .then(response => {
                    if (response.ok) {
                        window.location.href = 'PoSHome';
                    } else {
                        alert('Error removing item from cart');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Error removing item from cart');
                });
    }
}

// Barcode and Search Functions
function searchProductByBarcode(barcode) {
    if (!barcode)
        return;

    fetch('search-product?barcode=' + encodeURIComponent(barcode))
            .then(response => response.json())
            .then(data => {
                if (data.error) {
                    alert(data.error);
                    return;
                }

                if (data.storeStockId) {
                    addToCart(data.storeStockId);
                } else {
                    alert('Không tìm thấy sản phẩm');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Lỗi khi tìm kiếm sản phẩm');
            });
}

// Utility Functions
function initializeTimeUpdate() {
    function updateTime() {
        const now = new Date();
        const options = {
            weekday: 'long',
            year: 'numeric',
            month: 'long',
            day: 'numeric',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit'
        };
        document.getElementById('current_time').textContent = now.toLocaleDateString('en-US', options);
    }

    setInterval(updateTime, 1000);
    updateTime();
}

function initializeFullscreenButton() {
    $('.fullscreen-btn').click(function () {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen();
            $(this).find('.iconify').attr('data-icon', 'majesticons:close-line');
        } else {
            document.exitFullscreen();
            $(this).find('.iconify').attr('data-icon', 'majesticons:open-line');
        }
    });
}

function initializeBarcodeScanner() {
    const barcodeInput = document.querySelector('input[placeholder="Scan barcode"]');
    if (barcodeInput) {
        barcodeInput.focus();
        barcodeInput.addEventListener('keypress', function (e) {
            if (e.key === 'Enter') {
                e.preventDefault();
                if (this.value.trim()) {
                    searchProductByBarcode(this.value.trim());
                    this.value = '';
                }
            }
        });
    }
}

function initializeSearchProduct() {
    const searchInput = document.querySelector('input[placeholder="Search by name, code, category"]');
    if (searchInput) {
        searchInput.addEventListener('input', function (e) {
            const searchText = e.target.value.toLowerCase();
            document.querySelectorAll('.product-card').forEach(product => {
                const name = product.querySelector('.product-name').textContent.toLowerCase();
                product.style.display = name.includes(searchText) ? '' : 'none';
            });
        });
    }
}

function initializeStockBadges() {
    document.querySelectorAll('.stock-badge').forEach(badge => {
        const stock = parseInt(badge.textContent);
        if (stock < 10) {
            badge.setAttribute('data-stock', 'low');
        }
    });
}

function initializeCancelButton() {
    const cancelButton = document.querySelector('.bg__red');
    if (cancelButton) {
        cancelButton.addEventListener('click', function () {
            if (confirm('Bạn có chắc muốn xóa toàn bộ giỏ hàng?')) {
                fetch('clear-cart', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    }
                })
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                window.location.reload();
                            } else {
                                alert('Có lỗi xảy ra khi xóa giỏ hàng');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert('Có lỗi xảy ra khi xóa giỏ hàng');
                        });
            }
        });
    }
}
function openEditCustomerModal() {
    console.log('Opening modal...');
    const modal = document.getElementById('editCustomerModal');
    const selectedCustomer = $('#customerSelect').select2('data')[0];

    console.log('Selected customer:', selectedCustomer);

    if (!selectedCustomer || !selectedCustomer.id) {
        alert('Vui lòng chọn khách hàng trước');
        return;
    }

    fetch('edit-customer?id=' + selectedCustomer.id)
            .then(response => {
                console.log('Response:', response);
                return response.json();
            })
            .then(customer => {
                console.log('Customer data:', customer);
                document.getElementById('customerId').value = customer.customerId;
                document.getElementById('customerName').value = customer.customerName;
                document.getElementById('customerPhone').value = customer.customerPhone;
                document.getElementById('customerType').value = customer.customerType.customerTypeId;
                modal.style.display = 'block';
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Có lỗi xảy ra khi lấy thông tin khách hàng');
            });
}


function closeEditCustomerModal() {
    const modal = document.getElementById('editCustomerModal');
    modal.style.display = 'none';
}

function saveCustomerChanges() {
    const formData = new FormData(document.getElementById('editCustomerForm'));

    fetch('edit-customer', {
        method: 'POST',
        body: new URLSearchParams(formData)
    })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Cập nhật thông tin khách hàng thành công');
                    closeEditCustomerModal();
                    // Refresh customer select
                    $('#customerSelect').val(null).trigger('change');
                    loadCustomers(); // Thêm hàm này nếu bạn cần refresh danh sách khách hàng
                } else {
                    alert('Có lỗi xảy ra khi cập nhật thông tin khách hàng');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Có lỗi xảy ra khi cập nhật thông tin khách hàng');
            });
}
function loadCustomers() {
    $('#customerSelect').select2('destroy'); // Hủy select2 hiện tại
    initializeCustomerSelect(); // Khởi tạo lại select2
}

function initializeCustomerModal() {
    // Edit button click - sử dụng ID thay vì class
    const editButton = document.getElementById('editCustomerBtn');
    if (editButton) {
        editButton.addEventListener('click', openEditCustomerModal);
        console.log('Edit button initialized');
    } else {
        console.error('Edit button not found');
    }

    // Modal close button
    const closeButton = document.querySelector('#editCustomerModal .close');
    if (closeButton) {
        closeButton.addEventListener('click', closeEditCustomerModal);
        console.log('Close button initialized');
    }

    // Modal cancel button
    const cancelButton = document.querySelector('#editCustomerModal .btn-cancel');
    if (cancelButton) {
        cancelButton.addEventListener('click', closeEditCustomerModal);
        console.log('Cancel button initialized');
    }

    // Modal save button
    const saveButton = document.querySelector('#editCustomerModal .btn-save');
    if (saveButton) {
        saveButton.addEventListener('click', saveCustomerChanges);
        console.log('Save button initialized');
    }

    // Close modal when clicking outside
    window.addEventListener('click', function(event) {
        const modal = document.getElementById('editCustomerModal');
        if (event.target === modal) {
            closeEditCustomerModal();
        }
    });
}