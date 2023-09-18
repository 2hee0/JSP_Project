
	function submit_check(){
		let id = document.getElementById("user_id");
		let pw = document.getElementById("user_pw");
		
		if( id.value == ""){
			$("#idAlert").html('<div class="loginAlert">아이디를 입력하세요.</div')
			id.focus();
			return false;
		}else if(!id.value == "") {
            $("#idAlert").empty();
        }
        
        
        if (pw.value == ""){
			$("#pwAlert").html('<div class="loginAlert">비밀번호를 입력하세요.</div')
	        pw.focus();
	        return false;
		} else if (!pw.value == "") {
            $("#pwAlert").empty();
        }
        
		
	}
	