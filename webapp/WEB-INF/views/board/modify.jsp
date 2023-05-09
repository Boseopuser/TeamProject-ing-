<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${path}/resources/css/bootstrap.css" rel="stylesheet"/>

    <%@include file="CommonFavicon.jsp" %>

    <title>게시물 수정</title>

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
        #submitBtn {
            width: 80px;
            height: 30px;

            border: 0;

            font-size: 15px;
            font-weight: bold;

            color: white;
            background-color: red;
        }
        #removeBtn {
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
            background-color: blue;
        }
        .buttons {
            padding: 20px;
            /* border: 2px solid green; */
            text-align: center;
        }
        #listBtn, #submitBtn, #removeBtn {
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
            
            $('#removeBtn').click(function () {
                // 게시물 삭제요청 : POST /board/remove
                // 전송파라미터: (1) bno (2) currPage (페이징처리를 위한 기준값)

                let formObj = $("form");

                formObj.attr("action", "/board/remove");
                formObj.attr("method", "POST");
                formObj.submit();
            }); // onclick

        }); // .jq

    </script>

</head>

<body>
    <%@include file="CommonInvoke.jsp" %>

    <div id="wrapper">
        <form action="/board/modify" method="POST">
            <input type="hidden" name="currPage" value="${ param.currPage }">
            <input type="hidden" name="postno" value="${ __List__.postno }">
            <input type="hidden" name="content" value="${ __List__.content }">

            <table>
                <tr>
                    <td>글번호</td>
                    <td>${ __List__.postno }</td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td>${ __List__.nickname }</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="title" value="${ __List__.title }" size="60"></td>
                </tr>
                <tr>
                	<td>조회수</td>
                	<td>${ __List__.views }</td>
                </tr>
                <tr>
                	<td>추천수</td>
                	<td>${ __List__.likes }</td>
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
                    <td>내용</td>
                    <td><textarea cols="60" rows="10" name="content">${ __List__.content }</textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="buttons">
                        <button type="submit" id="submitBtn">등록</button>
                        <button type="button" id="removeBtn">삭제</button>
                        <button type="button" id="listBtn">목록</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    
</body>
</html>