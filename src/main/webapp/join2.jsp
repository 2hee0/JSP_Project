<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/join2.css">
</head>
<body>
	<div class="body">

		<!-- go top -->
		<div class="go-top" style="display: none;">
			<a href="#"><img src="./img/Giggle3.png"></a>

			<!--// go top -->
			<!-- header -->
		</div>
		<!-- header -->
		<div class="header">
			<!-- header gnb -->
			<div class="header-gnb">
				<h1 class="logo">
					<a href="mainpage.jsp">
						<img id="header-logo" src="./img/Giggle3.png" alt="Wavve">
					</a>
				</h1>
			</div>
			<!--// header gnb -->
		</div>
		<!--// header -->
		<script>(function () {
				var options = {
					logo: '#header-logo'
				};

				MEMBER_COMMON.MEMBER_COMMON_MODULES.ES_LOGIN.view(options);
			}());</script>

		<!--// header -->
		<!-- main -->

		<div class="member">
			<div class="join member-layout" id="g-contents">
				<div class="step-bar"> 
					<span class="gradation-blue" style="width:100%">스텝바</span>
				</div>

				<div class="common-box">
					<h2 class="join-hd">
						<span>이제부터 다 같이</span><br>
						<span>GIGGLE를 즐겨봐요!</span>
					</h2>
					<form action="${pageContext.request.contextPath}/complete.mo" autocomplete="off" id="myFrm" method="post" name="myFrm"
						novalidate="true"><input name="__RequestVerificationToken" type="hidden"
							value="gTDQrFQ4H0eg2DlEDgUaHcPpYFBOtNqrbPRd3o4vUC3JssLWZ2oszcb--md_4sDW9l-6TDjMeeDr2TqwMPDt9DAnDrU1">
						<fieldset>
							<legend>간편 회원가입 입력 폼</legend>
							<ul class="join-input-box">
								<li>
		                           <label for="user_id">
		                              	 아이디
		                              	 <input type="button" value="중복확인" style="color: white; border: none; background-color: none;" onclick="checkId(myFrm.user_id.value);">
		                                 <input type="text" name="user_id" id="user_id"
		                                 placeholder="GIGGLE@example.com" class="input-style01 input-style02"
		                                 maxlength="50" required>
		                           </label>
									<p class="login-error-gray" id="id-error-alert">
									</p>
								</li>
								<li>
									<label for="uer_nick">
										닉네임 <input type="text" name="user_nick" id="user_nick"
											placeholder="사용할 프로필 이름을 특수문자를 제외하고 입력하세요." class="input-style01 input-style02"
											maxlength="12" required>
									</label>
									<p class="login-error-gray" id="id-error-alert">
									</p>
								</li>
								<li>
									<label for="user_pw">
										비밀번호 <input type="password" name="user_pw" id="user_pw"
											placeholder="6~10자 이내로 영문, 숫자를 혼합하여 입력하세요."
											class="input-style01 input-style02" maxlength="10" required>
									</label>
									<!-- <button type="button" class="btn-input" onclick="onPwdChanged(this); return false;">show</button> -->
								</li>
								<li>
									<label for="reuser_pw">
										비밀번호 확인 <input type="password" name="reuser_pw" id="reuser_pw"
											placeholder="비밀번호와 동일한 비밀번호를 입력하세요."
											class="input-style01 input-style02" maxlength="20" required>
									</label>
								</li>
								<li>
									<label for="user_name">
										이름 <input type="text" name="user_name" placeholder="이름을 정자로 입력해주세요"
											id="user-name" class="input-style01 input-style02" maxlength="10"
											required>
									</label>
								</li>
								<li>
									<label for="user_gender">
										성별 <label> 남자 <input type="radio" class="input-style01 input-style02"
												name="user_gender" value="M"> 여자 <input type="radio"
												class="input-style01 input-style02" name="user_gender" value="W"></label>
									</label>
								</li>
								<li>
									<label for="user_birth">
										생년월일 <input type="text" name="user_birth" placeholder="생년월일을 여섯자리로 입력해주세요."
											id="user-birth" class="input-style01 input-style02" maxlength="6"
											required>
									</label>
								</li>
								<li>
									<label for="user_phone">
										휴대폰 번호 <input type="text" name="user_phone" placeholder="휴대폰 번호를 -를 빼고 입력해주세요."
											id="user-phone" class="input-style01 input-style02" maxlength="12"
											required>
									</label>
								</li>
							</ul>
							<ul class="btn-wavve-join" id="sub-join-submit">
								<li><a href="javascript:document.myFrm.submit();" onclick="return onCheckSignIn();">GIIGLE 회원가입</a></li>
							</ul>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="./js/user.js"></script>

</body>
</html>