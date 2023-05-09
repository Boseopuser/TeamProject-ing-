<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>QnA Write</title>
        
        <link rel="stylesheet" href="../../resources/css/css.css">
    </head>

    <body>
    	<%@include file="header.jsp" %>
    	
        <div class="board_wrap">
            <div class="board_title">
                <strong>QnA</strong>
            </div>
            <div class="board_write_wrap">
                <div class="board_write">
                    <div class="title">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" placeholder="제목 입력"></dd>
                        </dl>
                    </div>
                    <div class="info">
                        <dl>
                            <dt>작성자</dt>
                            <dd><input type="text" placeholder="작성자 입력"></dd>
                        </dl>
                    </div>
                    <div class="content">
                        <textarea placeholder="내용을 작성해주세요."></textarea>
                    </div>
                </div>
                
              <!-- bt : button -->
              <div class="bt_wrap"> 
                <button type="submit" onclick="location.href='qnaView';">등록</button> 
                <button type="submit" onclick="location.href='qnaList';">취소</button> 
                <!-- <a href="view" class="on">등록</a>
                <a href="list">취소</a> -->
              </div>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
        
    </body>

    </html>