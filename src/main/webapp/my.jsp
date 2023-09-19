<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/my.css">
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="./js/my.js"></script>
</head>
<body>
	<c:set var="usernum" value="${requestScope.usernum}" />
	<input type="hidden" id="usernum" value="${sessionScope.user_num}">
	<header class="header">
		<div class="menu-top">
			<nav class="menu2">
				<ul>
					<li><c:choose>
							<c:when test="${empty sessionScope.user}">
								<a href="login.jsp">로그인</a>
							</c:when>
							<c:otherwise>
								<a href="/giggle/LogoutAction.mo">로그아웃</a>
							</c:otherwise>
						</c:choose></li>
					<li><a href="payment.jsp">이용권</a></li>
					<li><a href="eventpage.jsp">이벤트</a></li>
					<li><c:choose>
							<c:when test="${empty sessionScope.user}">
								<a href="login.jsp">게시판</a>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/BoardList.mo">게시판</a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</nav>
		</div>
		<div class="header-main">
			<h1 class="logo">
				<a href="mainpage.jsp"> <img src="./img/Giggle3.png" alt="로고"
					width="200px" height="63px" />
				</a>
			</h1>
			<nav class="menu1">
				<ul>
					<li><a href="mainpage.jsp" class="home">홈</a></li>
					<li class="category-list"><a href="#"> 장르 </a>
						<div class="categorty-list-menu">
							<ul class="ul1">
								<li><a href="category1.jsp" class="category-menu"> <span
										class="category-menu-line">로맨스</span>
								</a></li>
								<li><a href="category2.jsp" class="category-menu"> <span
										class="category-menu-line">공포</span>
								</a></li>
								<li><a href="category3.jsp" class="category-menu"> <span
										class="category-menu-line">액션</span>
								</a></li>
								<li><a href="category4.jsp" class="category-menu"> <span
										class="category-menu-line">코미디</span>
								</a></li>
								<li><a href="category5.jsp" class="category-menu"> <span
										class="category-menu-line">SF</span>
								</a></li>
								<li><a href="category6.jsp" class="category-menu"> <span
										class="category-menu-line">애니메이션</span>
								</a></li>
								<li><a href="category7.jsp" class="category-menu"> <span
										class="category-menu-line">범죄</span>
								</a></li>
							</ul>
						</div></li>
					<li><a href="categoryall.jsp">영화</a></li>
					<li><c:choose>
							<c:when test="${empty sessionScope.user}">
								<a href="login.jsp">MY</a>
							</c:when>
							<c:otherwise>
								<a
									href="${pageContext.request.contextPath}/Myinfo.mo?user_num=${sessionScope.user_num}">MY</a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</nav>
		</div>
		<div class="search-box">
			<form action="search.jsp" class="search-main-box">
				<input type="text" placeholder="제목,인물명을 입력해보세요" class="search" /> <input
					type="image"
					src="https://www.wavve.com/img/icon-search-22.704db5c8.svg"
					class="submitbutton">
			</form>
		</div>
	</header>
	<!--메인 -->
<body>
	<main>
		<div>
			<div>
				<section class="">
					<section class="top-padding" section-info="[object Object]"
						thumbnail-info="[object Object]" multisection-index="0">
						<div class="mypooq-top-wrap">
							<div class="my-ticket-info">
								<div class="wrap">
									<div class="my-ticket-info-l">
										<div class="profile-image-wrap">
											<!--프로필 이미지-->
											<img src="img/profile.png" alt="프로필이미지">
										</div>
										<div class="profile-text-wrap">
											<span class="profile-inner-wrap"> <span
												class="profile-name"> <c:choose>
														<c:when test="${empty sessionScope.user}">${user.user_nick}</c:when>
														<c:otherwise>${usernum.user_nick}</c:otherwise>
													</c:choose>
											</span> <span class="profile-title"> 님 </span> <!---->
											</span>
											<div class="profile-link">
												<div class="promotion-text">
													<span style="color: rgb(165, 165, 165);"> Giggle의
														다양한 컨텐츠를 즐겨보세요! </span>
												</div>
												<a href="payment.jsp"> 이용권 구매하기 </a>
											</div>
										</div>
									</div>
									<div class="my-ticket-info-r">
										<div class="profile-metadata-wrap">
											<div class="profile-metadata">
												<!---->
												<ul class="profile-metadata-list">
													<li><a> <span> 관심있는 영화 : </span> <span
															class="value"> &nbsp; 0 </span>
													</a> <a> <span> 사용중인 이용권 : </span> <span class="value">&nbsp;${usernum.membership_type}
														</span>
													</a> <a> <span> 사용 기간 : ${usernum.membership_signup}</span>
															<span class="value">&nbsp; ~
																${usernum.membership_expire}</span>
													</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</section>
				<section class="user">
					<div class="user-info">
						<div class="title">
							<h1 tabindex="0" class="title-area">
								<span class="label"> 회원 정보 변경</span>
							</h1>
						</div>
						<!-- 액션 폼 실행하면 이동하는 홈페이지 주소 -->
						<form id="myform" action="${pageContext.request.contextPath}/Updatemyinfo.mo?user_num=${sessionScope.user_num}" 
						method="post" name="myform" novalidate="true">
							<div class="user_box">
								<div class="user-form">
									<div>
										<h3>닉네임</h3>
									</div>
									<div class="user-input-nick">
										<div class="nickchange">
											<textarea class="nick-text" id="nick" name="user_nick" >${usernum.user_nick}</textarea>
										</div>
										<input type="button" class="multinick" value="중복확인"
											onclick="checkNick(myform.user_nick.value);">
									</div>
									<p class="except">*특수문자 제외</p>
									<div class="user-input">
										<div>
											<h3>이름</h3>
										</div>
										<div>
											<textarea readonly id="name">${usernum.user_name}</textarea>
										</div>
									</div>
									<div class="user-input">
										<div>
											<h3>아이디</h3>
										</div>
										<div>
											<textarea readonly id="id">${usernum.user_id}</textarea>
										</div>
									</div>
									<div class="user-input">
										<div>
											<h3>비밀번호</h3>
										</div>
										<div>
											<input type="password" id="pw" name="user_pw" 
												placeholder="비밀번호를 입력하세요">
										</div>
										<div>
											<input type="password" id="repw" name="reuser_pw" 
												placeholder="비밀번호 확인">
										</div>
										<div class="user-input">
											<div>
												<h3>성별</h3>
											</div>
											<div class="gendertp">
												<label> <input type="radio" class="gender"
													id="gender" value="남자" onclick="return(false);"
													<c:if test="${usernum.user_gender eq '남자'}">checked</c:if>>남자
												</label> <label> <input type="radio" class="gender"
													id="gender" value="여자" onclick="return(false);"
													<c:if test="${usernum.user_gender eq '여자'}">checked</c:if>>여자
												</label>
											</div>
										</div>
										<div class="user-input">
											<div>
												<h3>생년월일</h3>
											</div>
											<div>
												<textarea readonly id="birth">${usernum.user_birth}</textarea>
											</div>
										</div>
										<div class="user-input">
											<div>
												<h3>휴대폰 번호</h3>
											</div>
											<div>
												<textarea readonly id="phone">${usernum.user_phone}</textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="change">
									<button type="button" onclick="mypage();">변경</button>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
			<section class="fav">
				<section>
					<div id="multisection_index_2" class="multi portrait-cell"
						style="background-color: rgb(27, 27, 27);">
						<div class="title">
							<h1 tabindex="0" class="title-area">
								<span class="label"> 관심 영화 </span>
							</h1>
						</div>
						<div>
							<div tabindex="0" class="no-data">
								<p>
									<img src="img/nodata.png"> <span> 관심있는 영화가 없어요 </span>
								</p>
							</div>
						</div>
					</div>

				</section>
			</section>
	</main>
	<footer class="footer">
		<div class="footer-box">
			<div>
				<div class="footer-notice">
					<div class="container">
						<div class="footer-title">
							<span>공지사항</span>
						</div>
						<div class="swiper">
							<ul class="swiper-wrapper">
								<li class="swiper-slide"><a
									href="${pageContext.request.contextPath}/BoardList.mo">
										[작업공지] 9월 23일 Giggle 서비스 정기점검 </a></li>
								<li class="swiper-slide"><a
									href="${pageContext.request.contextPath}/BoardList.mo">
										[점검안내] 9월 21일 게시판 페이지 오류 </a></li>
								<li class="swiper-slide"><a
									href="${pageContext.request.contextPath}/BoardList.mo">
										[업데이트] 9월 3주 프로그램 리스트 </a></li>
							</ul>
							<div class="footer-button">
								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-menu">
			<div class="footer-info">
				<ul>
					<li><a href="#">4조</a></li>
					<li><a href="#">Giggle</a></li>
					<li><a href="#">ㅎㅎㅎㅎㅎㅎ</a></li>
					<li><a href="#">김호년 &nbsp 이희영 &nbsp 송화준 &nbsp 이현지 &nbsp
							이동현 &nbsp 김현욱</a></li>
					<li><a href="https://kiccampus.co.kr/index.jsp">[프로젝트 중심]
							자바 개발 & 빅데이터 분석 전문가 양성과정</a></li>
				</ul>
			</div>
			<div class="footer-info-area">
				<span>콘텐츠기글 프로젝트 리더 김호년</span> <span>콘텐츠기글 시스템 아키텍트 이희영</span> <span>콘텐츠기글
					소프트웨어 엔지니어 송화준</span> <span>콘텐츠기글 데이터베이스 엔지니어 이현지</span> <span>콘텐츠기글
					시니어 엔지니어 이동현</span> <span>콘텐츠기글 비즈니스 분석가 김현욱</span> <span>고객센터
					9292-5959 (평일 09:00~18:00 / 점심시간 12:00~13:00 / 주말 및 공휴일 휴무)</span> <span>사업자등록번호
					111-11-11111 서울특별시 강남구 역삼동 819-10 세경빌딩3층 : helpdesk@giggle.com</span> <span>Copyright©
					콘텐츠기글(주) All rights reserved.</span>
			</div>
		</div>
	</footer>
</body>
<script type="text/javascript" src="./js/up.js"></script>
</html>