
document.getElementById('share').addEventListener('click', function () {
    openPopup();
});

function openPopup() {
    const popup = document.getElementById('popup');
    popup.style.display = 'block';
}


function closePopup() {
    const popup = document.getElementById('popup');
    popup.style.display = 'none';
}


document.getElementById('info_copy').addEventListener('click', function () {
    const siteURL = window.location.href;
    copyToClipboard(siteURL);
});


function copyToClipboard(text) {
    const tempInput = document.createElement('input');
    tempInput.value = text;
    document.body.appendChild(tempInput);
    tempInput.select();
    document.execCommand('copy');
    document.body.removeChild(tempInput);
    alert('주소가 복사되었습니다.');
}