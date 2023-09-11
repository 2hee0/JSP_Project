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
</head>
<body>
	 <!--상단바-->
  <header class="header">
    <div class="menu-top">
      <nav class="menu2">
        <ul>
            <li>
                <c:choose>
                    <c:when test="${empty sessionScope.user}"><a href="login.jsp">로그인</a></c:when>
                    <c:otherwise><a href="/giggle/LogoutAction.mo">로그아웃</a></c:otherwise>
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
                                <a href="Category1.jsp" class="category-menu">
                                    <span class="category-menu-line">로맨스</span>
                                </a>
                            </li>
                            <li>
                                <a href="Category2.jsp" class="category-menu">
                                    <span class="category-menu-line">공포</span>
                                </a>
                            </li>
                            <li>
                                <a href="Category3.jsp" class="category-menu">
                                    <span class="category-menu-line">액션</span>
                                </a>
                            </li>
                            <li>
                                <a href="Category4.jsp" class="category-menu">
                                    <span class="category-menu-line">코미디</span>
                                </a>
                            </li>
                            <li>
                                <a href="Category5.jsp" class="category-menu">
                                    <span class="category-menu-line">SF</span>
                                </a>
                            </li>
                            <li>
                                <a href="Category6.jsp" class="category-menu">
                                    <span class="category-menu-line">애니메이션</span>
                                </a>
                            </li>
                            <li>
                              <a href="Category7.jsp" class="category-menu">
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
                    <a href="my.jsp">MY</a>
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
                          <img src="img/인사이드아웃_스틸컷.jpg" class="poster-thumb">
                      </picture>
                  <div class="play-area">
                    <p class="moviename"><h1>영화제목</h1></p>
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
                              <input type="checkbox" id="favorite">관심</button>
                              <label for="favorite"><img src=""></label>
                              <button type="button" id="share">공유</button>
                        <!---->
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
        <div class="thumb-box">
          <div class="picture-area">
            <picture><source srcset="" type="image/webp">
              <!--영화 미니 포스터-->
              <img src="img/인사이드아웃_포스터.jpg" alt="" class="thumb-img">
            </picture>
          </div>
        </div>
        <div class="detail-info-box"><em class="preview-subtitle">
          영화 제목
        </em>
          <p class="detail-dsc">
            "영화 상세정보 줄거리 ~~~~~~
          </p>
          <table class="detail-info-table">
            <colgroup>
              <col style="width: 76px;">
              <col style="width: auto;">
            </colgroup>
            <tr>
              <th scope="row">
                개요
              </th>
              <td>
                국가 , 개봉일자
              </td>
            </tr>
            <tr>
              <th scope="row">
                장르
              </th>
              <td>
                <a href="" class="genre">
                #장르1
                </a>,
                <a href="" class="genre">
                  #장르2
                </a>
                <!---->
              </td>
            </tr>
            <tr>
              <th scope="row">
                출연
              </th>
              <td>
                <a href="" class="genre">
                  배우1
                </a>, <a href="" class="genre">
                  배우2
                </a>, <a href="" class="genre">
                  배우3
                </a>, <a href="" class="genre">
                  배우4
                </a>
              </td>
          </tr>
          <tr>
          <th scope="row">
            감독
          </th>
        <td>
            <a href="javascript:void(0)" class="genre">
            감독
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
        <img src="img/everyicon.png" width="50" height="50"  :alt="전체이용가">
          </span>
        </td>
      </tr>
      </table>
      </div>
  </body>
<footer class="footer">
  <div class="footer-box">
      <div class="footer-box-inner">
          <h2 class="gongi">
              <a href="board.html">공지사항</a>
          </h2>
          <button type="button" class="footer-arrow-left">
              <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAlBJREFUaAXtVktrGlEUzvioYqELpRCyiIss7CK7/gJdNMEEQjdSunATfNEEugi0BPoDmkV3iY/4qGIKFUIXDdJmY6kEAv0FdhNw405oScWq0Xx3IQyDEqLn5AFnNvfOnbnf+b7vnHNnZmbkEgfEAXFAHBAHxAFxQBwQB+6iA8lk8i01LxM14FV4iURiZzAYPL/qves+t1x3w6Tvg7yGTOxhfGq3259NijNunzbuAeV6qVQyN5vNj8CcdzqdK4FA4JwSX2GxZwQiHkDEZ8Sy22y2JYhoU4tQeKwZQSk5UEpfEOevpmkvI5FIl0OEwmRr9mKx+Kjf73+DkAbK6QWnCCWEJSP5fN7VarW+IwunELCJcaCCcV7kGcnlcrMQUQX542g0unETIpRBpELS6bS73W6fgHweIrY5M2DEJhMCEYvdbrdqMpk+QMR7YyDuezIhvV5vGWSr6IldbtKj8MmEWK3WTyipBfyCpHBSkeGOIj1qjfTUKhQKD9HoRwjU8Hg8Qa/X2xsVlGONVIgiWC6XbfV6/RBZuXC73QG/3/+fg7gRk1yIClCpVCy1Wu0AU5fD4VgLBoP/jIGp71mEKJKqT9Av+5g+wUnmxyHwh5q8Ho+tKdH4/Vgsto7xF0T9yGazj/WBqedsQoZE8U15DSFfO53Oz0wmMzdcpx7ZSstIFGW2hbVXZrPZFwqFzozPp72/MSGKaDwej6DU3qFnfOFw+Pe05PX72UtLHww9k0SZvVG/9/r1eztPpVKr95a8EBcHxAFxQBwQB8QBcUAcEAdu3YFLPjOyQF+dJGYAAAAASUVORK5CYII="
                  alt="이전목록">
          </button>
          <button type="button" class="footer-arrow-right">
              <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MTU2RTc3QzVDNUU2MTFFNzhGNzQ4QUM1NTY5RjA2NDMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MTU2RTc3QzZDNUU2MTFFNzhGNzQ4QUM1NTY5RjA2NDMiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxNTZFNzdDM0M1RTYxMUU3OEY3NDhBQzU1NjlGMDY0MyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoxNTZFNzdDNEM1RTYxMUU3OEY3NDhBQzU1NjlGMDY0MyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PvXeOssAAAH+SURBVHja7Jm/SwJhGMe9y0uwMJCCajAiyKU/oDGnQlwkkCDQIEKFhraioaWphpaI9PxFYg7SEtERDRmJU/9AjrY06VSHeZfX9wZBGsLhunz1eeB4Hz249/nc932f53k5TtM0Sz8Yb+kTIxACIRACIRACIRACGQQQURT3OI6zdHv1LAi6aX8sFjtmXhGbzbYMmCXAnGPkzALhjD6P6MulUCiM1uv1W/x8dTqdG4FA4OsXBXt3syPwd10ZuOMAugLYMJOKtC0ejwt4fh6uA//7w+GwzJQibUPgCpbWGoJ9a7Vad7lczsGkIh1vnYM6pxgX7Xb7cigUqjGlSAecFolEtjHey7JcymQyk0xXdsDsA+ai0WiUk8nkDNMtCmCOeJ4/URSlBJgFpnstJIEzDCVVVVeYBcHm5lH1RSyxOUEQ8kxlrbYVi0VrpVLJwp1C9vIFg8EPo+Y3DUSSJFu1Wi3g/pDL5Vr1er2fRqZfU0Cy2ewI0u413Jrb7V73eDyq0XXkz0FQCMdQ1SW4L8hYW7jfYq5FSafTEwj0EcE/R6PRzZ8QTNSRVCo13Ww2nwByAyV2mDyzJxKJWRS8ss4DJQ6YPFgBYh574gHPPQREvIu6Ysi8VqPfjN6uI7hdQFyaXWkNvURR9P3H/Bx9QyQQAiEQAiEQAiEQAiGQgQH5FmAAnG5iNuw7AaQAAAAASUVORK5CYII="
                  alt="다음목록">
          </button>
          <div class="gongi-list-line">
              <ul class="gongi-list" style="transform: translate3d(0px,0px,0px); transition-duration: 0ms;">
                  <li class="gongili" data-swiper-slide-index="2">
                      <a href="#" title="공지사항" class="gongia" data-notice-index="2">공지사항1</a>
                  </li>
                  <li class="gongili" data-swiper-slide-index="2">
                      <a href="#" title="공지사항" class="gongia" data-notice-index="2">공지사항2</a>
                  </li>
                  <li class="gongili" data-swiper-slide-index="2">
                      <a href="#" title="공지사항" class="gongia" data-notice-index="2">공지사항3</a>
                  </li>
                  <li class="gongili" data-swiper-slide-index="2">
                      <a href="#" title="공지사항" class="gongia" data-notice-index="2">공지사항4</a>
                  </li>
                  <li class="gongili" data-swiper-slide-index="2">
                      <a href="#" title="공지사항" class="gongia" data-notice-index="2">공지사항5</a>
                  </li>
              </ul>
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
                  <a href="#">OTT사이트</a>
              </li>
              <li>
                  <a href="#">ㅎㅎㅎㅎㅎㅎ</a>
              </li>
              <li>
                  <a href="#">조원소개</a>
              </li>
              <li>
                  <a href="#">기타등등</a>
              </li>
          </ul>
      </div>
      <div class="footer-info-area">
          <span>적고싶은거 있으면 적어보기</span>
      </div>
      <div class="button-top">
          <a href="#">
              <button type="button">
                  <span class="ally-hidden">
                      페이지 맨 위로 이동
                  </span>
              </button>
          </a>
      </div>
  </div>
</footer>
<script type="text/javascript" src="./js/info_popup.js"></script> 
<script type="text/javascript" src="./js/video.js"></script>   
</body>
</html>