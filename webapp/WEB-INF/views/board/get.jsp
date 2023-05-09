<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${path}/resources/css/bootstrap.css" rel="stylesheet"/>

    <%@include file="CommonFavicon.jsp" %>

    <title>게시물 상세조회</title>
  
    <style>
        #wrapper {
            width: 1024px;

            margin: 0 auto;

            font-family: D2Coding;
            font-size: 16px;
        }
        table {
            width: 60%;

            font-weight: bold;
        }
        textarea {
            font-size: 15px;
        }
        #modifyBtn {
            width: 80px;
            height: 30px;

            border: 0;

            font-size: 15px;
            font-weight: bold;

            color: white;
            background-color: green;
        }
        #listBtn {
            width: 80px;
            height: 30px;

            border: 0;

            font-size: 15px;
            font-weight: bold;

            color: white;
            background-color: blueviolet;
        }
        .buttons {
            padding: 20px;
            /* border: 2px solid green; */
            text-align: center;
        }
        #listBtn, #modifyBtn {
            cursor: pointer;
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.1/jquery-migrate.min.js"></script>

    <script>

        $(function () {
            
            $('#listBtn').click(function () {
                // 게시판목록으로 이동 : GET /board/list
                location.href = "/board/list?currPage=${ param.currPage }";
            }); // onclick
            
            $('#modifyBtn').click(function () {
                // 게시물 수정화면으로 이동 : GET /board/modify
                location.href = "/board/modify?currPage=${ param.currPage }&postno=${ __List__.postno }";
            }); // onclick

        }); // .jq

    </script>

</head>

<body>
    <%@include file="CommonInvoke.jsp" %>

    <div id="wrapper">
    
	<section id="container">
				<form role="form" method="post">
        <table>
            <tr>
                <td>글번호</td>
                <td>${ __List__.postno }</td>
            </tr>
          
            <tr>
                <td>제목</td>
                <td>${ __List__.title }</td>
            </tr>
            
            <tr>
                <td>닉네임</td>
                <td>${ __List__.nickname }</td>
            </tr>
            
            <tr>
                <td>내용</td>
                <td><textarea cols="60" rows="10" readonly>${ __List__.content }</textarea></td>
            </tr>
            
            <tr>
                <td>최초등록일시</td>
                <td>${ __List__.regidate }</td>
            </tr>
             
              
            <tr>
                <td>최종수정일시</td>
                <td>${ __List__.modifydate }</td>
            </tr>
            
            
            <tr>
                <td colspan="2" class="buttons">
                    <button type="button" id="modifyBtn">수정</button>
                    <button type="button" id="listBtn">목록</button>
                </td>
            </tr>
        </table>
        </form>
       </section>
    </div>
    
</body>
</html>