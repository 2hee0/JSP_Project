
function openPopup(productName, month, price) {
    const popup = document.getElementById('popup');
    const popupProductName = document.querySelector('.popup-product-name');
    const popupProductInfo = document.querySelector('.popup-product-info');

    popupProductName.textContent = productName;
    popupProductInfo.textContent = `기간: ${month},  가격: ${price}`;

    popup.style.display = 'block';
}

function closePopup() {
    const popup = document.getElementById('popup');
    popup.style.display = 'none';
}

