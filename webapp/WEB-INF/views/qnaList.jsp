<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QnA List</title>

	<link rel="stylesheet" href="../../resources/css/css.css">
</head>

<body>
    <%@include file="header.jsp" %>
    
    <!-- QnA 글 목록 -->
    <div class="board_wrap">
        <div class="board_title">
            <strong>QnA</strong>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">등록일</div>
                    <div class="count">조회수</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="qnaView">2박3일 서울코스 추천해주세요!</a></div>
                    <div class="writer">hyeonna</div>
                    <div class="date">2023.04.11</div>
                    <div class="count">13</div>
                </div>
                <div>
                    <div class="num">2</div>
                    <div class="title"><a href="qnaView">2박3일 서울코스 추천해주세요!</a></div>
                    <div class="writer">hyeonna</div>
                    <div class="date">2023.04.11</div>
                    <div class="count">45</div>
                </div>
                <div>
                    <div class="num">3</div>
                    <div class="title"><a href="qnaView">2박3일 서울코스 추천해주세요!</a></div>
                    <div class="writer">hyeonna</div>
                    <div class="date">2023.04.11</div>
                    <div class="count">77</div>
                </div>
                <div>
                    <div class="num">4</div>
                    <div class="title"><a href="qnaView">2박3일 서울코스 추천해주세요!</a></div>
                    <div class="writer">hyeonna</div>
                    <div class="date">2023.04.11</div>
                    <div class="count">2</div>
                </div>
                <div>
                    <div class="num">5</div>
                    <div class="title"><a href="qnaView">2박3일 서울코스 추천해주세요!</a></div>
                    <div class="writer">hyeonna</div>
                    <div class="date">2023.04.11</div>
                    <div class="count">19</div>
                </div>
            </div>
            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <!-- num on : 현재페이지 -->
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
            
            <!-- bt : button -->
            <div class="bt_wrap"> 
                <!-- <a href="write" class="on">등록</a> -->
                <button type="submit" onclick="location.href='qnaWrite';">등록</button>
            </div>
        </div>
    </div>
    
    <%@include file="footer.jsp" %>

</body>

</html>