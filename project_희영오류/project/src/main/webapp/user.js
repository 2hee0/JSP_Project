function onCheckSignIn(){
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
	
	// 닉네임 "" 체크, alert(), focus()
	if (user_nick.value == "") {
		alert("닉네임을 입력해주세요.");
		user_nick.focus();
		return false;
	}
	
	// 비밀번호 "" 체크, alert(), focus()
	if (user_pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		user_pw.focus();
		return false;
	}
	
	// 비밀번호 == 비밀번호 확인
    if(user_pw.value != reuser_pw.value){
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
	
	// 성별 "" 체크, alert(), focus()
	if (user_gender.value == "") {
		alert("핸드폰 번호을 입력해주세요.");
		user_gender.focus();
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
	
	frm.submit();
};