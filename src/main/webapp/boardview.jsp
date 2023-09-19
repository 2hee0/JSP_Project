<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/boardview.css">
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<c:set var="board" value="${requestScope.board}" />
	<c:set var="boardView" value="${requestScope.boardView}" />
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
					<li>
						<c:choose>
			                  <c:when test="${empty sessionScope.user}"><a href="login.jsp">MY</a></c:when>
			                  <c:otherwise><a href="${pageContext.request.contextPath}/Myinfo.mo?user_num=${sessionScope.user_num}">MY</a></c:otherwise>
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
	<main class="main">
		<div class="page-top">
			<hgroup class="page-top-inner-wrap">
				<h1 tabindex="0" class="page-title">게시판</h1>
			</hgroup>
		</div>
		<form action="${pageContext.request.contextPath}/boardDelete.mo?boardnum=${boardView.boardnum}" name="DeleteForm" method="post">
		<div class="cs-table-a">
			<table class="cs-table">
				<colgroup>
					<col style="width: 139px;">
					<col style="width: 962px;">
					<col style="width: 139px;">
				</colgroup>
				<thead>
					<tr>
						<th>닉네임</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
		
				<tbody>
					<tr>
						<td>
							<p class="noti-nick">${boardView.user_nick}</p>
						</td>
						<td>
							<p class="noti-title">${boardView.boardtitle}</p>
						</td>
						<td>
							<p class="noti-date">${boardView.boarddate}</p>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="noti-detail">
				<textarea class="contenttext" name="content" id="content" readonly>${boardView.boardcontent}</textarea>
			</div>
			<div class="btn-list">
				<c:choose>
   					 <c:when test="${sessionScope.user_nick != boardView.user_nick}">
    				</c:when>
   					 <c:otherwise>
        				<button type="submit" class="change">삭제</button>
    				</c:otherwise>
				</c:choose>
			</div>
			<div class="list-btn">
				<a href="${pageContext.request.contextPath}/BoardList.mo"> <img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAqCAYAAADFw8lbAAAAAXNSR0IArs4c6QAABGRJREFUWAnNmT9ME1Ecx7mjZSgMENGkNQya4EpIcJMN0GhAYjcZ1DgcJkyUQBcZcAFCmUjkBhEHjAuGYvBPYcNNjHHVRBONbeKfwAAdKFC/3+u742qP9nrS417y7r17997v97nf+3Pv/U6q+s+gqqp/a2vrvCzLwf39/RDEMTIkq6urkwcHB6n6+voviqJkcsXOrpKTZjMzM6e2t7cvS5J0He27EH9ls9kU7pPIMzKEUBZCWRD504iruF+qq6t7MzAw8IcVygllgU5MTNBaY4hhKF0HRBxWiw8NDf0upnRqaqoRlu1B7EWbdtRdRBwdGRnRX6pYc+2ZLVBacGdnJwK4frRSGxoaHqAr0yWlW1TAUAlsbm7exyMF0LO1tbUxOxYuCRqLxVr29vZeAHK1pqZmdHBw8IeF/rKLpqenz+7u7rJ3Ovx+f08kEvlYTEhRUHT1DTRW8ea3hoeHXxYT5PTZ+Pj4NcifR3sFQ+H5UXKOBAXkHVhxDkIuQsDGUQKOoxy91opeew1ZUeh6bCXTElRY8qHP52tDl3y3anjcZYBtymQy32CYsJVl5X8VckyiTAXkFbcgyUBd7D3qFgwsNkIeKGc33moZXX4bDT8YtVzKcIhRNxnIYlabB8olCA/XotHoirmSm3mhe02wGKoNUC7meJt+LkHG0xPKkIEsZNIRDFAUjCGqx7VO6gqcpIJBFUyaCA1UjIcwvzhOBFeijWAJ62NVA+UGA6Zed/pZrAQoWchENsr38YJlgbugOPN2w8LCQtZuXXO9vr4+y7XbXEfPY+u4BNhe3D+VuZ9Epou7IL2CV1KALoOlk4wSFtcLWLdWsCw0ewXQzIGZ/wn33TL2iFwCbO8LzULcyKPrUzw9yMgEMUZTbih1ogNsSR5xfADlQl+2Rd2YTOLFyBYyL/hOXti1Nj6aFtq4aykrlLPMlCW4sDLn0HuZ45PjtPC5N0o4NHnsxoSStTHgDaxCChgySN+AJBwIP0HdXOrYaxbjxmTiMRsz/jMcGGdk4cFIoICfUU8FwZQgo/6t5zf1Jigf2SV1YzKBicZ7RiZteQoEAgnkL9E5wEIvBLJgfLbTBUQeDVR4KhaFB8MLnFWCZVH3opgXfB5BFHowTppUMCjgMI5FBihOgEmYela4WU6UlQxkIZMOYoCygA4rJB10s+gV3E4nJyevArJTsBjq80A5HuiwQsV57APbjFouZbA3bsVMfwLnR7c+NnXVeaAshOOBXjUFDd6hYZNesdIpdQn/kyIY8lQWgPIpfT/4tN5Fww2+ZV6LCtyw9+h3gmg6ySw9epagZIGbcQ7JPcAmKjlmhexXGG50jll68shT8kQIi7bQF4S6a5515PJNGOgE8LxrPIeauwpf0BjuwohvEZfs/mzgBoPfbnRx5X425DAPr7RwOp3ugmI6B5jyrwg/GNyEa4s08jyLcUPOXziNSBO4j7vy+wbKCgL3s3C7nOOxm2CIPDrQ+6KBc2MOuK9iO1nQ3m7BXyxZH4vsix6+AAAAAElFTkSuQmCC">
					<span>목록</span>
				</a>
			</div>
			</form>
		</div>
		<div class="btn-float-box">
			<div class="button-top">
				<a href="#">
					<button type="button">
						<span class="ally-hidden"> 페이지 맨 위로 이동 </span>
					</button>
				</a>
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