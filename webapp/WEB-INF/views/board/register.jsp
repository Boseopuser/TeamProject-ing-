<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%@include file="CommonFavicon.jsp" %>

    <title>게시물 등록</title>

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
        #listBtn, #submitBtn {
            cursor: pointer;
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.1/jquery-migrate.min.js"></script>

    <script>

        $(function () {
            
            $('#listBtn').click(function () {
                // 게시판목록으로 이동 : GET /board/list
                location.href = "/board/list?currPage=${param.currPage}";
            }); // onclick

        }); // .jq

    </script>

</head>

<body>
    <%@include file="CommonInvoke.jsp" %>

    <div id="wrapper">
        <form action="/board/register" method="POST">
            
            <table>
                <tr>
                    <td>*닉네임</td>
                    <td><input type="text" name="nickname" required></td>
                </tr>
                <tr>
                    <td>*제목</td>
                    <td><input type="text" name="title" size="60" required></td>
                </tr>
                <tr>
                    <td>*내용</td>
                    <td><textarea cols="60" rows="10" name="content" required></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="buttons">
                        <button type="submit" id="submitBtn">등록</button>
                        <button type="button" id="listBtn">목록</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    
</body>
</html>