<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.List"%>
<%@ page import="org.zerock.myapp.domain.ReviewDTO"%>
<%@ page import="java.sql.Timestamp"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
<link href="${path}/resources/css/bootstrap.css" rel="stylesheet"/>

<%@include file="CommonFavicon.jsp"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

<title>게시판 전체목록조회</title>

<style>
* {
	margin: 0 auto;
	padding: 0;
}

#wrapper {
	width: 1024px;
	font-family: D2Coding;
	font-size: 16px;
}

table {
	width: 100%;
	border-collapse: collapse;
	border: 1px ridge green;
	text-align: center;
	margin-top: 15px;
}

th {
	padding: 10px;
	/* color: white; */
	background-color: greenyellow;
	font-size: 18px;
}

td {
	padding: 7px;
}

caption {
	font-size: 24px;
	font-weight: bold;
}

td:nth-of-type(2) {
	width: 40%;
	padding-left: 7px;
	text-align: left;
	font-weight: bold;
}

h1 {
	padding: 20px;
}

tr:hover {
	background-color: bisque;
}

#regBtn {
	width: 150px;
	height: 50px;
	margin-top: 10px;
	border: 3px solid yellow;
	font-size: 17px;
	font-weight: bold;
	color: white;
	background-color: red;
	cursor: pointer;
}

a, a:link, a:visited {
	text-decoration: none;
	color: dodgerblue;
	cursor: pointer;
}

#pagination ul {
	float: right;
	list-style: none;
	text-align: center;
	font-size: 18px;
	font-weight: bold;
}

#pagination ul>li {
	float: left;
	width: 40px;
	height: 30px;
	/* vertical-align: middle; */
	line-height: 30px;
	/* border: 1px solid purple; */
	cursor: pointer;
}

.current {
	border: 2px outset aquamarine;
}

.Prev, .Next {
	width: 70px !important;
	color: white;
	background-color: indigo;
}
</style>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.1/jquery-migrate.min.js"></script>

<script>
	$(function() {

		$('#regBtn').click(function() {
			console.clear();

			let currPage = "${pageMaker.cri.currPage}";
			location = "/board/register?currPage=" + currPage;
		}); // onclick

		$('.pageNum').on('click', function(e) {

			let selectedPageNum = e.currentTarget.textContent;
			console.log(e.currentTarget.textContent);
			location.href = "/board/list?currPage=" + selectedPageNum;

			// console.log('test');
		}); //pageNum

	}); // .jq
</script>
</head>

<body>
	<%@include file="CommonInvoke.jsp"%>

	<div id="wrapper">

		<h3>${result}</h3>

		<button type="button" id="regBtn">글 작성</button>

		<table border="1">
			<caption>여행후기 게시판 리스트</caption>

			<thead>
				<tr>
					<th>게시글번호</th>
					<th>제목</th>
					<th>닉네임</th>
					<th>내용</th>
					<th>조회수</th>
					<th>추천수</th>
					<th>등록일</th>
					<th>수정일</th>
				</tr>
			</thead>

	<tbody>
				<c:forEach var="list" items="${__List__}">
					<tr>
						<td>${list.postno}</td>
						<td><a
							href="/board/get?currPage=${pageMaker.cri.currPage}&postno=${list.postno}">${list.title}</a></td>
						<td>${list.nickname}</td>
						<td>${list.content}</td>
						<td>${list.views}</td>
						<td>${list.likes}</td> 
						<td><fmt:formatDate value="${list.regidate}" pattern="yyyy-MM-dd" /></td>
						<td><fmt:formatDate value="${list.modifydate}" pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</tbody>		


			<tfoot></tfoot>
		</table>

		<p>&nbsp;</p>
		<div id="pagination">
			<ul>
				<c:if test="${pageMaker.prev}">
					<li class="Prev"><a
						href="/board/list?currPage=${pageMaker.startPage - 1 }">Prev</a></li>
				</c:if>

				<c:forEach var="pageNum" begin="${pageMaker.startPage}"
					end="${pageMaker.endPage}">
					<!-- 3항 연산자 currPage가 pageNum과 같다면 current를 주고 :(아니면) 빈문자열반환 -->
					<li
						class="pageNum ${pageMaker.cri.currPage== pageNum? 'current':'' }">${pageNum}</li>
					<!-- <li>${pageNum}</li> -->
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="Next"><a
						href="/board/list?currPage=${pageMaker.endPage +1 }">Next</a></li>
				</c:if>
			</ul>
		</div>

	</div>

</body>
</html>