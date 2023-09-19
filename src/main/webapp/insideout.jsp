<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/movieinfo.css" type="text/css">
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<c:set var="director_index" value="${requestScope.director_index}" />
	 <!--상단바-->
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
			                  <c:otherwise><a href="${pageContext.request.contextPath}/Myinfo.mo?user_num=${sessionScope.user_num}">MY</a></c:otherwise>
			           </c:choose>
                </li>
            </ul>
        </nav>
    </div>
    <div class="search-box">
        <div class="search-main-box">
            <input type="text" placeholder="제목,인물명을 입력해보세요" class="search" />
            <input type="image" src="https://www.wavve.com/img/icon-search-22.704db5c8.svg" class="submitbutton">
        </div>
    </div>
</header>
<!--상단바 끝-->
      <div>
        
        <div id="player-area">
        <div class="detail_page">
          <div id="poster-box">
                <section class="player-contents">
                  <div class="poster-box">
                    <div class="picture-area">
                      <picture>
                          <source srcset="moviethumb.webp" type="css/webp">
                          <!--포스터썸네일-->
                          <img src="img/16-b.png" class="poster-thumb">
                      </picture>
                  <div class="play-area">
                    <p class="moviename"><h1> ${director_index.content_title }</h1></p> 
                      <!--로그인버튼 박스-->
                    <div id="essential-box">
                      <div>
                          <button type="button" id="loginbutton" >
                          <c:choose>
                            <c:when test="${empty sessionScope.user}">
                                로그인
                            </c:when>
                            <c:otherwise>
                                재생 ▶︎
                            </c:otherwise>
                          </c:choose>
                          </button>
	                          <c:choose>
				                  	<c:when test="${empty sessionScope.user}">
				                  	<a href="#" onclick="return login()">
				                  		<input type="checkbox" id="favorite">관심
				                  		<label for=""><img src=""></label>
				                  		<button type="button" id="share">공유</button>
				                  	</a>
				                  </c:when>
				                  <c:otherwise>
				                  	<input type="checkbox" id="favorite">관심
				                  	<label for="favorite"><img src=""></label>
				                  	<button type="button" id="share">공유</button>
				                  </c:otherwise>
				           	</c:choose>
                      </div>
                    </div>
                   </div>
                  </div>
              </div>
            </div>
      </section>
     <!-- 동영상 -->
	<!-- <div id="videoModal" class="modal" style="display: none;">
    	<div class="modal-content">
        	<span class="close" onclick="closeVideoModal()">&times;</span>
        	<video id="videoPlayer" controls width="1280" height="720">
            	<source src="video/insideout.mp4" type="video/mp4">
            	Your browser does not support the video tag.
       		</video>
    	</div>
	</div>-->
	<div id="videoPopup" class="popup" style="display: none;">
        <div class="popup-video-content">
            <video controls id="videoPlayer" style="width: 100%; height: 100%;">
                <source src="https://rr3---sn-oguelnzz.c.drive.google.com/videoplayback?expire=1694414196&ei=RIv-ZKfWFsHU-LYPxOqd4Ao&ip=220.117.144.29&cp=QVROVkVfU1FXR1hPOkkwN2xGWV81b05iSmRqX0FYY3FIU19ZeDBQU09VLTZlU3ludzNDaG1wTDc&id=706d40149028b4d1&itag=22&source=webdrive&requiressl=yes&mh=NI&mm=32&mn=sn-oguelnzz&ms=su&mv=m&mvi=3&pl=18&ttl=transient&susc=dr&driveid=1PIHXEoLwFxKLuws7sve3oifTq4mpgTVA&app=explorer&mime=video/mp4&vprv=1&prv=1&dur=147.214&lmt=1694157660226737&mt=1694402929&subapp=DRIVE_WEB_FILE_VIEWER&txp=0001224&sparams=expire,ei,ip,cp,id,itag,source,requiressl,ttl,susc,driveid,app,mime,vprv,prv,dur,lmt&sig=AOq0QJ8wRAIgC8SwjJI5qdOioM5zo3JalzTW8pAgIhZgC9jGHXPP4DMCIF6hgkX_y8EG2wN9TNvkq0XMY_8pCWXfyh_GlD5LaHeV&lsparams=mh,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgVT6IC75aTtpnwwHlfMPHpAQJwKFuHGuXMOHAoO92BKMCIQDh2dhd3cy2oK7jOUVleqEDrncirOqVoG0XEJzJld98Cg==&cpn=LJvCzKjUaJlOrXA5&c=WEB_EMBEDDED_PLAYER&cver=1.20230904.00.00">
          	</video>
          	<span class="close-button" id="closevideo_Popup">닫기</span>
        </div>
    </div>
      <!--팝업-->
        <div id="popup" class="popup" style="display: none;">
          <div class="popup-content">
              <span class="close-button" onclick="closePopup()">닫기</span>
              <h2>공유</h2>
              <div class="sns-box">
              <li><a href="https://twitter.com/i/flow/login?redirect_after_login=%2Fintent%2Ftweet%3Ftext%3D%5Bwavve%5D%2520%25EA%25B5%25AD%25EB%25AF%25BC%25EC%2582%25AC%25ED%2598%2595%25ED%2588%25AC%25ED%2591%259C%250a1%2520%25ED%259A%258C%2520%25EA%25B5%25AD%25EB%25AF%25BC%25EC%2582%25AC%25ED%2598%2595%25ED%2588%25AC%25ED%2591%259C%25EB%25A5%25BC%2520%25EC%258B%259C%25EC%259E%2591%25ED%2595%2598%25EA%25B2%25A0%25EC%258A%25B5%25EB%258B%2588%25EB%258B%25A4%250a%26url%3Dhttps%253A%252F%252Fwww.wavve.com%252Fplayer%252Fvod%253Fprogramid%253DS01_P466239300"><div class="sns-img">
                <img src="img/twitter_logo.png" alt="twitter">
              </div><strong>트위터</strong></a></li>
              <li><a href="https://accounts.kakao.com/login/?continue=https%3A%2F%2Fcs.kakao.com%2Fhelps%3Fservice%3D52%26category%3D166%26locale%3Dko#login"><div class="sns-img">
                <img src="img/kakao_logo.png" alt="kakao">
              </div><strong>카카오</strong></a></li>
              <li><a href="https://access.line.me/oauth2/v2.1/login?returnUri=%2Foauth2%2Fv2.1%2Fauthorize%2Fconsent%3Fresponse_type%3Dcode%26client_id%3D1397264795%26redirect_uri%3Dhttps%253A%252F%252Fcreator.line.me%252Fsignup%252Fline_callback%26state%3Dd8THUP6RdZkaAJOObdxXm2h7SKkM0RzV%26scope%3Dprofile&loginChannelId=1397264795&loginState=7E1AKOokHzMCMbhRhyzZOr#/"><div class="sns-img">
                <img src="img/line_logo.png" alt="line">
              </div><strong>라인</strong></a></li>
              </div>
              <button type="button" id="info_copy">링크 복사하기</button>
            </div>
        </div>
      <!--팝업 끝-->
        <div class="player-bottom-contents">
          <div class="player-nav">
            <ul>
             <li>
              <button class="on">
                상세정보
              </button>
              </li>
           </ul>
    </div>
    <!---->
    <div class="detail-view-content-area">
      <!---->
      <div class="detail-view-box">
        <div class="thumb-img-box">
          <div class="picture-area-in">
            <picture><source srcset="" type="image/webp">
              <!--영화 미니 포스터-->
              <img src="img/16-p.png" alt="" class="thumb-img">
            </picture>
          </div>
        </div>
        <div class="detail-info-box"><em class="preview-subtitle">
          ${director_index.content_title }
        </em>
          <p class="detail-dsc">
            ${director_index.content_info }
          </p>
          <table class="detail-info-table">
            <colgroup>
              <col style="width: 76px;">
              <col style="width: auto;">
            </colgroup>
            <tr>
              <th scope="row">
                개봉일
              </th>
              <td>
                ${director_index.content_released }
                </a>
              </td>
            </tr>
			<tr>
			  <th scope="row">
                국가
              </th>
              <td>
                ${director_index.country_type } 
              </td>
            </tr>
            <tr>
              <th scope="row">
                장르
              </th>
              <td>
                <a href="" class="genre">
                ${director_index.category_type }
                </a>
              </td>
            </tr>
            <tr>
              <th scope="row">
                출연
              </th>
              <td>
                <a href="" class="genre">
                  ${director_index.ACTOR_NAME1 }, ${director_index.ACTOR_NAME2 }, ${director_index.ACTOR_NAME3 }
                </a>
              </td>
          </tr>
          <tr>
          <th scope="row">
            감독
          </th>
        <td>
            <a href="javascript:void(0)" class="genre">
           	${director_index.director_name}
          </a>
          <!---->
            </td>
          </tr>
      <tr>
    <th scope="row">
      등급
      </th>
        <td>
          <span>
        <!--등급 아이콘-->
        <img src="img/ALL.png" width="50" height="50" :alt="전체이용가">
          </span>
        </td>
      </tr>
      </table>
      </div>
        </div>
      </div>
      </div>
      </div>
      </div>
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
<script type="text/javascript" src="./js/info_popup.js"></script> 
<script type="text/javascript" src="./js/video.js"></script>
<script type="text/javascript" src="./js/up.js"></script>
<script type="text/javascript" src="./js/favorite.js"></script>
</body>
</html>