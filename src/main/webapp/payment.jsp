
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/mainpage.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<header class="header">
		<div class="menu-top">
			<nav class="menu2">
				<ul>
					<li>
						<c:choose>
							<c:when test="${empty sessionScope.user}">
								<a href="login.jsp">로그인</a>
							</c:when>
							<c:otherwise>
								<a href="#" onclick="return logout()">로그아웃</a>
							</c:otherwise>
						</c:choose>
					</li>
					<li><a href="payment.jsp">이용권</a></li>
					<li><a href="eventpage.jsp">이벤트</a></li>
					<li>
						<a href="${pageContext.request.contextPath}/BoardList.mo">게시판</a>
					</li>
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
	<main class="main">
		<div class="page-top">
			<hgroup class="page-top-inner-wrap">
				<h1 tabindex="0" class="page-title">이용권</h1>
			</hgroup>
		</div>
		<div class="ticket-wrap">
			<div class="ticket-body">
				<div>
					<a href="login.html">
						<div class="panel voucher-panel active"
							style="background-color: rgb(52, 104, 242);">
							<!-- <button type="button" aria-hidden="true" class="panel-trigger">CRM 배너 여닫기</button> -->
							<div class="panel-content">
								<a href="#" target="_self"> <img src="img/payment.png"
									alt="rollpage"></a>
							</div>
						</div>
					</a>
					<div aria-hidden="true" class="ticket-event-desc">
						<section>
							<table class="voucher-table">
								<caption>GIGGLE 이용권 표</caption>
								<colgroup>
									<col style="width: 230px;">
									<col>
									<col>
									<col>
								</colgroup>
								<thead>
									<tr>
										<th><span class="a11y-hidden">이용권 상품 목록</span></th>
										<th scope="col">
											<div class="button-container">
												<h2 class="product-name">Premium</h2>
												<button type="button" id="pk_1489" class="btn"
													onclick="openPopup1('Premium', '1개월', '￦13,900')">
													<span class="month"><span>1개월</span></span> <span
														class="price"><span>￦13,900</span></span>
												</button>
												<button type="button" id="pk_2847" class="btn"
													onclick="openPopup2('Premium', '12개월', '￦11,583')">
													<span class="month"><span>12개월</span><span
														class="discount">16%</span></span> <span class="price"><span>￦139,000</span>
														<span class="summary">(월 ￦11,583)</span> </span>

												</button>
											</div>
										</th>
										<th scope="col">
											<div class="button-container">
												<h2 class="product-name">Standard</h2>
												<button type="button" id="pk_1488" class="btn"
													onclick="openPopup3('Standard', '1개월', '￦10,900')">
													<span class="month"><span>1개월</span></span> <span
														class="price"><span>￦10,900</span></span>
												</button>
												<button type="button" id="pk_2846" class="btn"
													onclick="openPopup4('Standard', '12개월', '￦9,083')">
													<span class="month"><span>12개월</span><span
														class="discount">16%</span></span> <span class="price"><span>￦109,000</span>
														<span class="summary">(월 ￦9,083)</span> </span>

												</button>
											</div>
										</th>
									</tr>
								</thead>
								<div id="popup" class="popup" style="display: none;">
									<div class="popup-content-1">
										<p class="closepop">
											<button id="closePopup" class="close-button"
												onclick="closePopup()">닫기</button>
										</p>
										<h2 class="popup-product-name"></h2>
										<p class="popup-product-info"></p>
										<br>
										<hr>
										<br>
										<p>결제수단 선택</p>
										<br>
										<hr>
										<br> <label for="cardPayment">카드</label> <input
											type="radio" id="cardPayment" name="paymentMethod"
											value="card" onclick="showCardOptions()"> <label
											for="phonePayment">휴대폰</label> <input type="radio"
											id="phonePayment" name="paymentMethod" value="phone"
											onclick="showPhoneOptions()"> <label
											for="bankPayment">계좌이체</label> <input type="radio"
											id="bankPayment" name="paymentMethod" value="bank"
											onclick="showBankOptions()">
										<div id="cardOptions" style="display: none;">
											<label>카드 선택:</label> <select id="cardType">
												<option value="국민카드">국민카드</option>
												<option value="신한카드">신한카드</option>
												<option value="우리카드">우리카드</option>
												<option value="삼성카드">삼성카드</option>
												<option value="현대카드">현대카드</option>
												<option value="농협카드">농협카드</option>
											</select> <br> <label>카드 번호:</label> <input type="text"
												id="accountNumber">
										</div>
										<div id="phoneOptions" style="display: none;">
											<label>휴대폰 선택:</label> <select id="phoneType">
												<option value="skt">SKT</option>
												<option value="kt">KT</option>
												<option value="lg">LG</option>
												<option value="알뜰폰">알뜰폰</option>
											</select> <br> <label>휴대폰 번호:</label> <input type="text"
												id="phoneNumber">
										</div>
										<div id="bankOptions" style="display: none;">
											<label>은행 선택:</label> <select id="bankName">
												<option value="국민은행">국민은행</option>
												<option value="신한은행">신한은행</option>
												<option value="우리은행">우리은행</option>
												<option value="하나은행">하나은행</option>
												<option value="기업은행">기업은행</option>
											</select> <br> <label>계좌 번호:</label> <input type="text"
												id="accountNumber">
										</div>
										<br> <br>
										<hr>
										<br>
										<form
											action="${pageContext.request.contextPath}/UpdateMember1.mo?user_num=${sessionScope.user_num}"
											method="post">
											<button type="submit" id="pay1" onclick="return closePopup()"
												style="display: none">결제</button>
										</form>
										<form
											action="${pageContext.request.contextPath}/UpdateMember2.mo?user_num=${sessionScope.user_num}"
											method="post">
											<button type="submit" id="pay2" onclick="return closePopup()"
												style="display: none">결제</button>
										</form>
										<form
											action="${pageContext.request.contextPath}/UpdateMember3.mo?user_num=${sessionScope.user_num}"
											method="post">
											<button type="submit" id="pay3" onclick="return closePopup()"
												style="display: none">결제</button>
										</form>
										<form
											action="${pageContext.request.contextPath}/UpdateMember4.mo?user_num=${sessionScope.user_num}"
											method="post">
											<button type="submit" id="pay4" onclick="return closePopup()"
												style="display: none">결제</button>
										</form>
									</div>

								</div>
								<tbody>
									<tr>
										<th scope="row">모바일+태블릿+PC</th>
										<td><span class="icon-check">가능</span></td>
										<td><span class="icon-check">가능</span></td>
									</tr>
									<tr>
										<th scope="row">TV</th>
										<td><span class="icon-check">가능</span></td>
										<td><span class="icon-check">가능</span></td>
									</tr>
									<tr>
										<th scope="row">화질</th>
										<td><span class="">최고화질</span></td>
										<td><span class="">FHD화질</span></td>
									</tr>

									<tr>
										<th scope="row">영화 무제한 시청</th>
										<td><span class="icon-check">가능</span></td>
										<td><span class="icon-check">가능</span></td>

									</tr>
									<tr>
										<th scope="row">콘텐츠 찜 무제한</th>
										<td><span class="icon-check">가능</span></td>
										<td><span class="icon-check">가능</span></td>
									</tr>
								</tbody>
							</table>
						</section>
					</div>
					<div class="bt-noti">
						<p class="bt-noti-tit">서비스 이용 주의사항</p>
						<p class="dot-text">
							<span>GIGGLE 서비스는 국내 및 해외 서비스 대상 국가에서 이용하실 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>이용권 및 개별 구매 영화는 국내에서 결제 가능하고, 결제 후 해외 서비스 대상국가에서
								모바일/태블릿 앱으로 (ios/Android) 7일간 시청할 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>일부 콘텐츠는 콘텐츠 제공사의 요청으로 해외 서비스 대상 국가에서도 이용이 불가합니다.</span>
						</p>
						<p class="dot-text">
							<span>해외 서비스 대상 국가에서는 다운로드를 제공하지 않습니다.</span>
						</p>
						<p class="dot-text">
							<span>해외 서비스 대상 국가 : 싱가폴, 인도네시아, 말레이시아, 필리핀, 베트남, 라오스, 태국</span>
						</p>
						<p class="dot-text">
							<span>해외 서비스 대상 국가가 아닌 국가에서는 서비스 이용이 불가합니다.</span>
						</p>
						<p class="dot-text">
							<span>프리미엄 이용권은 동시에 4명, 스텐다드 이용권은 2명이 동시에 시청할 수 있습니다. 베이직
								이용권은 1명만 시청할 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>일부 콘텐츠는 콘텐츠 제공사의 요청으로 LIVE 및 VOD 서비스를 제공하지 않을 수
								있습니다.</span>
						</p>
						<p class="dot-text">
							<span>일부 콘텐츠는 콘텐츠 제공사의 요청으로 FHD 화질을 제공하지 않을 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>콘텐츠에 따라 다운로드를 제공하지 않을 수 있으며, 이용권에 따라 다운로드 횟수가 제한됩니다.</span>
						</p>
						<p class="dot-text">
							<span>TV 기기에서는 다운로드가 불가합니다.</span>
						</p>
						<p class="dot-text">
							<span>프리미엄 이용권은 일부 콘텐츠를 최고화질(4K UHD, Dolby, HDR)로 시청할 수
								있습니다. 최고화질은 이용하는 기기의 사양, 네트워크 환경 등에 따라 변경될 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>이용 기기 중 TV 는 GIGGLE 설치가 되어 있거나 앱스토어에서 설치가 가능한 스마트TV
								및 Android TV 기기이며, TV에서는 일부 채널은 LIVE 서비스를 제공하지 않습니다. 
					</div>
					<div class="bt-noti">
						<p class="bt-noti-tit">서비스 이용 권장사양</p>
						<p class="dot-text">
							<span>PC : Windows 10 이상, MacOS 10.12 이상.
								Chrome/Edge/Safari 등 HTML 5 지원 브라우저 최신 버전,<br>스마트폰 :
								Android 11 버전 이상, iOS 15 버전 이상의 국내 출시 모델,<br>태블릿 : Android
								11 버전 이상, iOS 15 버전 이상의 국내 출시 모델,<br>TV : 삼성 스마트TV Tizen
								3.0 이상의 모델 / LG 스마트TV webOS 3.5 이상의 모델
							</span>
						</p>
					</div>
					<div class="bt-noti">
						<p class="bt-noti-tit">이용권 구매 주의사항</p>
						<p class="dot-text">
							<span>모든 이용권은 부가세(VAT) 포함 가격입니다.</span>
						</p>
						<p class="dot-text">
							<span>이용권 가격은 변경될 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>자동결제는 1개월 주기로 매월 구매한 날과 동일한 날짜에 결제됩니다. 해당월에 동일한 날짜가
								없으면 말일에 결제됩니다.</span>
						</p>
						<p class="dot-text">
							<span>결제 당일을 제외한 이용기간 중 언제든지 자동결제를 해지하실 수 있습니다. 해지하면 더 이상
								추가 결제되지 않으며, 다음 결제 예정일까지 서비스를 계속 이용할 수 있습니다. <a href="My.html"
								class="noti-more">구매내역 바로가기</a>
							</span>
						</p>
						<p class="dot-text">
							<span>제휴 이용권은 할인한 가격이므로 추가 혜택(페이백, 기타 할인 등)을 제공하지 않습니다.</span>
						</p>
						<p class="dot-text">
							<span>통신사, 신용카드 정보 변경 및 잔액부족 시에는 결제실패로 자동결제가 해지될 수 있습니다.</span>
						</p>
						<p class="dot-text">
							<span>고객센터를 통한 자동결제해지 신청은 본인만 가능합니다.</span>
						</p>
						<p class="dot-text">
							<span>GIGGLE 상품은 구매 후 7일 이내에 결제 취소 요청이 가능하나, 이 기간 내에 상품에
								해당하는 콘텐츠의 제공을 개시하는 등의 사유가 있을 경우 환불에 제한이 있을 수 있습니다.<br>
								<p class="dot-text">
									<span>12개월 이용권의 경우, 장기 이용에 대한 할인 혜택이 적용된 금액이므로 중도 해지 시에는
										1개월 이용권 기준의 할인 미적용 정상가 기준으로 일할 계산하여 환불 금액이 정산되오니 유의 부탁드립니다.</span>
								</p>
								<p class="dot-text">
									<span>12개월 이용권 할인 프로모션 기간에 할인 상품 구매 시 첫 해에만 추가 할인 금액으로
										결제되고, 12개월 후에는 기존 금액 (16% 할인)으로 연 1회 정기 결제됩니다.</span>
								</p>
							</span>
					</div>
				</div>
			</div>
		</div>
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
	<script type="text/javascript" src="./js/payment_popup.js"></script>
	<script type="text/javascript" src="./js/payment_process.js"></script>
	<script type="text/javascript" src="./js/up.js"></script>
</body>
</html>