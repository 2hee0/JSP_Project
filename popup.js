

const closePopupButton = document.getElementById("close-popup");
const hourCloseCheckbox = document.getElementById("hour-close");

if (closePopupButton && hourCloseCheckbox) {
    closePopupButton.addEventListener("click", function(event) {
        event.preventDefault(); 
        
        const popupBack = document.querySelector(".popup-back");
        if (popupBack) {
            popupBack.style.display = "none"; 
        }
        
        if (hourCloseCheckbox.checked) {
            const now = new Date();
            const expires = new Date(now.getTime() + 60 * 60 * 1000); 
            document.cookie = "popupClosed=true; expires=" + expires.toUTCString() + "; path=/";
        }
    });
}

window.addEventListener("load", function() {
    const popupClosed = document.cookie.includes("popupClosed=true");
    if (!popupClosed) {
        const popupBack = document.querySelector(".popup-back");
        if (popupBack) {
            popupBack.style.display = "block"; 
        }
    }
});




