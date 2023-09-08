<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/noticeboard.css">
</head>
<body>
	<div class="header-gnb">
        <h1 class="logo">
            <a href="mainpage.jsp">
                <img id="header-logo" src="./img/Giggle3.png" alt="Wavve">
            </a>
        </h1>
    </div>
    <table class="table-board">
        <tr>
            <th class="row">
                <span class="es-dot"></span>
                닉네임
                <input type="text" class="isSecurity" name="name" id="name" readonly>
            </th>
        </tr>
        <tr>
            <th class="row">
                <span class="es-dot"></span>
                제목
                <input type="text" class="isSecurity1" name="title" id="title" placeholder="제목을 입력하세요">
            </th>
        </tr>
        <tr>
            <th class="row">
                <span class="es-dot"></span>
                내용
                <div>
                    <textarea type="" class="isSecurity2" name="content" id="content" placeholder="본문 내용"></textarea>
                </div>
            </th>
        </tr>
    </table>
    <div class="btn-wrap">
        <ul>
            <li>
                <a href="board.jsp" class="qa-cancel">취소</a>
            </li>
            <li>
                <input type="submit" class="qa-submit" value="등록">
            </li>
        </ul>
    </div>
</body>
</html>