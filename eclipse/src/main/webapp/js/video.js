


// 팝업 열기
document.getElementById("loginbutton").addEventListener("click", function () {
    // 버튼의 현재 텍스트를 가져옴
    var buttonText = this.textContent.trim();

    // 버튼 텍스트가 "로그인"이면 로그인 페이지로 이동
    if (buttonText === "로그인") {
        window.location.href = "login.jsp"; // 로그인 페이지 URL로 변경
    }
    // 버튼 텍스트가 "재생 ▶︎"이면 동영상 팝업 열기
    else if (buttonText === "재생 ▶︎") {
        document.getElementById("videoPopup").style.display = "block";
    }
});

// 팝업 닫기
document.getElementById("closePopup").addEventListener("click", function () {
    document.getElementById("videoPopup").style.display = "none";
});