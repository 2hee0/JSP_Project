<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/eventpage.css">
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<header class="header">
   <div class="menu-top">
          <nav class="menu2">
            <ul>
                <li>
                    <c:choose>
                    	<c:when test="${empty sessionScope.user}"><a href="login.jsp">로그인</a></c:when>
                    	<c:otherwise>
								<a href="#" onclick="return logout()">로그아웃</a>
						</c:otherwise>
                  	</c:choose>
                </li>
                <li>
                    <a href="payment.jsp">이용권</a>
                </li>
                <li>
                    <a href="eventpage.jsp">이벤트</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/BoardList.mo">게시판</a>
                </li>
            </ul>
          </nav>
        </div>
    <div class="header-main">
        <h1 class="logo">
            <a href="mainpage.jsp">
                <img src="./img/Giggle3.png" alt="로고" width="200px" height="63px" />
            </a>
        </h1>
        <nav class="menu1">
            <ul>
                <li>
                    <a href="mainpage.jsp" class="home">홈</a>
                </li>
                <li class="category-list">
                    <a href="#">
                        장르
                    </a>
                    <div class="categorty-list-menu">
                        <ul class="ul1">
                            <li>
                                <a href="category1.jsp" class="category-menu">
                                    <span class="category-menu-line">로맨스</span>
                                </a>
                            </li>
                            <li>
                                <a href="category2.jsp" class="category-menu">
                                    <span class="category-menu-line">공포</span>
                                </a>
                            </li>
                            <li>
                                <a href="category3.jsp" class="category-menu">
                                    <span class="category-menu-line">액션</span>
                                </a>
                            </li>
                            <li>
                                <a href="category4.jsp" class="category-menu">
                                    <span class="category-menu-line">코미디</span>
                                </a>
                            </li>
                            <li>
                                <a href="category5.jsp" class="category-menu">
                                    <span class="category-menu-line">SF</span>
                                </a>
                            </li>
                            <li>
                                <a href="category6.jsp" class="category-menu">
                                    <span class="category-menu-line">애니메이션</span>
                                </a>
                            </li>
                            <li>
                                <a href="category7.jsp" class="category-menu">
                                    <span class="category-menu-line">범죄</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="categoryall.jsp">영화</a>
                </li>
                <li>
						<c:choose>
			            	<c:when test="${empty sessionScope.user}"><a href="login.jsp">MY</a></c:when>
			            	<c:otherwise><a href="my.jsp">MY</a></c:otherwise>
			            </c:choose> 
			        </li>
            </ul>
        </nav>
    </div>
     <div class="search-box">
            <form action="search.jsp" class="search-main-box">
                <input type="text" placeholder="제목,인물명을 입력해보세요" class="search" />
                <input type="image" src="https://www.wavve.com/img/icon-search-22.704db5c8.svg" class="submitbutton">
            </form>
        </div>
</header>
<body>
    <!--상단 로고-->
    <div class="head-banner">
        <div class="head-logo">
            <img src="img/giftbox.png" alt="선물 상자 이미지">
            <h2 tabindex="0" clas="event-top-text">Giggle의 다양한 이벤트를 만나보세요.</h2>
        </div>
    </div>
    <!--메뉴 선택바-->
    <div class="select-bar">
        <div class="bars">
            <div class="inner-wrap">
                <ul>    
                    <li class="event">
                        <a href="#" to="/customer/event_list">진행중 이벤트</a>
                    </li>
                    <li class="event-end">    
                        <a href="#" to="/customer/event_board_list"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--이벤트 메인 페이지-->
    <div class="event-body">
        <div class="event-wrap">
            <div class="event-list">
                <ul class="event-banner">
                    <li>
                        <a href="event1.jsp">
                            <!--이벤트 썸네일-->
                            <div class="event-img">
                                <div class="img-area">
                                    <picture>
                                        <source srcset="./img/event2.png" type="image/png">
                                        <img src="./img/event2.png" alt="[영화 제목] 프로모션">
                                    </picture>
                                </div>
                            </div>
                            <span class="img-text">
                                <strong class="event-title">
                                    <곡성> 론칭 프로모션
                                </strong>
                                <span class="event-tr">
                                    <strongc class="event-th">기간</strongc>
                                    <span class="event-td">2023-09-11 ~ 2023-09-30</span>
                                </span>
                                <span class="event-tr">
                                    <strong class="event-th">경품</strong>
                                    <span class="event-td">감성 캠핑 랜턴 조명 1종(색상랜덤)</span>
                                </span>
                            </span>
                            
                        </a>
                    </li>
                    <!--이벤트 썸네일 2-->
                    <li>
                        <a href="event2.jsp">
                            <div class="event-img">
                                <div class="img-area">
                                    <picture>
                                        <source srcset="./img/event3.png" type="image/png">
                                        <img src="./img/event3.png" alt="[영화 제목] 프로모션">
                                    </picture>
                                </div>
                            </div>
                            <span class="img-text">
                                <strong class="event-title">
                                    [방학때 뭐하지?] 웨이브와 함께 세계여행!
                                </strong>
                                <span class="event-tr">
                                    <strongc class="event-th">기간</strongc>
                                    <span class="event-td">2023-09-13 ~ 2023-09-30</span>
                                </span>
                                <span class="event-tr">
                                    <strong class="event-th">경품</strong>
                                    <span class="event-td">맥북 에어(색상랜덤)</span>
                                </span>
                            </span>
                           
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
     <!--페이지 번호-->
    <div class="page-num">
        <a href="#" class="on">1</a>
    </div>
</body>
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
                    <li>
                        <a href="#">4조</a>
                    </li>
                    <li>
                        <a href="#">Giggle</a>
                    </li>
                    <li>
                        <a href="#">ㅎㅎㅎㅎㅎㅎ</a>
                    </li>
                    <li>
                        <a href="#">김호년 &nbsp 이희영 &nbsp 송화준 &nbsp 이현지 &nbsp 이동현 &nbsp 김현욱</a>
                    </li>
                    <li>
                        <a href="https://kiccampus.co.kr/index.jsp">[프로젝트 중심] 자바 개발 & 빅데이터 분석 전문가 양성과정</a>
                    </li>
                </ul>
            </div>
            <div class="footer-info-area">
                <span>콘텐츠기글 프로젝트 리더 김호년</span> 
                <span>콘텐츠기글 시스템 아키텍트 이희영</span> 
                <span>콘텐츠기글 소프트웨어 엔지니어 송화준</span> 
                <span>콘텐츠기글 데이터베이스 엔지니어 이현지</span>  
                <span>콘텐츠기글 시니어 엔지니어 이동현</span> 
                <span>콘텐츠기글 비즈니스 분석가 김현욱</span>  
                <span>고객센터 9292-5959 (평일 09:00~18:00 / 점심시간 12:00~13:00 / 주말 및 공휴일 휴무)</span>  
                <span>사업자등록번호 111-11-11111 서울특별시 강남구 역삼동 819-10 세경빌딩3층  : helpdesk@giggle.com</span> 
				<span>Copyright© 콘텐츠기글(주) All rights reserved.</span>
            </div>
        </div>
    </footer>
    <script type="text/javascript" src="./js/up.js"></script>
</body>
</html>