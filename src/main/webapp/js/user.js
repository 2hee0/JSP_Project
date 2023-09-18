function onCheckSignIn() {
	let frm = document.myFrm;
	let user_id = frm.user_id;
	let user_nick = frm.user_nick;
	let user_pw = frm.user_pw;
	let reuser_pw = frm.reuser_pw;
	let user_name = frm.user_name;
	let user_gender = frm.user_gender;
	let user_birth = frm.user_birth;
	let user_phone = frm.user_phone;

	// 아이디 "" 체크, alert(), focus()
	if (user_id.value == "") {
		alert("아이디를 입력해주세요.");
		user_id.focus();
		return false;
	}

	// 아이디 이메일 형식 체크
	let pattern1 = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

	if (!pattern1.test(user_id.value)) {
		alert("아이디는 이메일 형식으로 입력하여야 합니다.");
		user_id.focus();
		return false;
	}

	// 닉네임 "" 체크, alert(), focus()
	if (user_nick.value == "") {
		alert("닉네임을 입력해주세요.");
		user_nick.focus();
		return false;
	}

	// 닉네임 형식 체크
	let pattern2 = /^[가-힣a-zA-Z0-9]+$/;

	if (!pattern2.test(user_nick.value)) {
		alert("닉네임은 특수문자를 제외하고 입력해주세요.");
		user_nick.focus();
		return false;
	}

	// 비밀번호 "" 체크, alert(), focus()
	if (user_pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		user_pw.focus();
		return false;
	}

	// 비밀번호 문자 길이 (6 ~ 10자 이내) + 영문, 숫자 조합
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

	// 비밀번호 == 비밀번호 확인
	if (user_pw.value != reuser_pw.value) {
		alert("비밀번호를 다시 확인하세요.");
		reuser_pw.focus();
		return false;
	}

	// 이름 "" 체크, alert(), focus()
	if (user_name.value == "") {
		alert("이름을 입력해주세요.");
		user_name.focus();
		return false;
	}

	// 이름에 특수문자를 입력했을 경우
	if (!pattern2.test(user_name.value)) {
		alert("이름은 정자로 입력해주세요.");
		user_name.focus();
		return false;
	}

	// 성별 "" 체크, alert(), focus()
	if (user_gender.value == "") {
		alert("성별을 선택해주세요.");
		return false;
	}

	// 생일 "" 체크, alert(), focus()
	if (user_birth.value == "") {
		alert("생년월일을 입력해주세요.");
		user_birth.focus();
		return false;
	}

	// 휴대폰 번호 "" 체크, alert(), focus()
	if (user_phone.value == "") {
		alert("핸드폰 번호를 입력해주세요.");
		user_phone.focus();
		return false;
	}

	// 휴대폰 번호 양식 체크 (하이픈 불가)
	let pattern3 = /^(01[0-9])[0-9]{7,8}$/;

	if (!pattern3.test(user_phone.value)) {
		alert("핸드폰 번호는 하이픈을 제외하고 입력해주세요.");
		user_phone.focus();
		return false;
	}


	frm.submit();
}

// 아이디 중복 체크
function checkId(user_id) {
	// alert(userid);
	if (user_id == "") {
		alert("아이디를 입력해주세요");
		return false;
	} else {
		// ajax 통신
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "idcheck.jsp?user_id=" + user_id, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == XMLHttpRequest.DONE &&
				xhr.status == 200) {

				if (xhr.responseText.trim() == "ok") {
					// ok
					// document.getElementById("text").innerHTML = "사용할 수 있는 아이디 입니다.";
					alert('사용할 수 있는 아이디입니다.');

				} else {
					// not-ok
					// document.getElementById("text").innerHTML = "사용할 수 없는 아이디 입니다.";
					alert('이미 존재하는 아이디입니다.');
				}
			}
		}


	}
}

