function mypage() {
	let myform = document.myform;
	let user_nick = document.getElementById('nick').value;;
	let user_pw = myform.user_pw;
	let reuser_pw = myform.reuser_pw;


	if (user_nick.value == "") {
		alert("닉네임을 입력해주세요.");
		user_nick.focus();
		return false;
	}

	let pattern2 = /^[가-힣a-zA-Z0-9]+$/;

	if (!pattern2.test(user_nick.value)) {
		alert("닉네임은 특수문자를 제외하고 입력해주세요.");
		user_nick.focus();
		return false;
	}

	if (user_pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		user_pw.focus();
		return false;
	}

	if (user_pw.value.length >= 6) {
		if (!pattern2.test(user_pw.value)) {
			alert("비밀번호에는 특수문자를 포함할 수 없습니다. 다시 입력해주세요.");
			user_pw.focus();
			return false;
		}
	} else {
		alert("비밀번호는 6자 이상, 10자 이하로 입력해주세요");
		user_pw.focus();
		return false;
	}

	if (user_pw.value != reuser_pw.value) {
		alert("비밀번호를 다시 확인하세요.");
		reuser_pw.focus();
		return false;
	}
	 document.getElementById("myform").submit();
}

function checkNick(user_nick) {
	if (user_nick == "") {
		alert("닉네임을 입력해주세요");
		return false;
	} else {
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "nickcheck.jsp?user_nick=" + user_nick, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				if (xhr.responseText.trim() == "ok") {
					alert('사용할 수 있는 닉네임입니다.');
				} else {
					alert('사용중인 닉네임입니다.');
				}
			}
		}
	}
}

