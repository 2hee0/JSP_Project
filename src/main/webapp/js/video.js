document.getElementById("loginbutton").addEventListener("click", function () {
  	
  	var buttonText = this.textContent.trim();

   	if (buttonText === "로그인") {
        window.location.href = "login.jsp"; 
    }
 
    else if (buttonText === "재생 ▶︎") {
        document.getElementById("videoPopup").style.display = "block";
    }
});

document.getElementById("closevideo_Popup").addEventListener("click", function () {
    document.getElementById("videoPopup").style.display = "none";
});