<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>QnA View</title>
        
        <link rel="stylesheet" href="../../resources/css/css.css">
    </head>

    <body>
    	<%@include file="header.jsp" %>
    	
        <!-- QnA 글 보기 -->
        <div class="board_wrap">
            <div class="board_title">
                <strong>QnA</strong>
            </div>
            <div class="board_view_wrap">
                <div class="board_view">
                    <div class="title">
                        2박3일 서울코스 추천해주세요!
                    </div>
                    <div class="info">
                        <dl>
                            <dt>번호</dt>
                            <dd>1</dd>
                        </dl>
                        <dl>
                            <dt>작성자</dt>
                            <dd>hyeonna</dd>
                        </dl>
                        <dl>
                            <dt>등록일</dt>
                            <dd>2023.04.11</dd>
                        </dl>
                        <dl>
                            <dt>조회수</dt>
                            <dd>13</dd>
                        </dl>
                    </div>
                    <div class="content">
                        서울로 여행가요. 코스 추천 부탁드려요
                    </div>
                </div>

                <!-- Q&A 댓글 목록 -->
                <div class="reply_wrap">
                    <div class="reply_title">댓글</div>
                        <div class="reply_list">
                            <div>
                                <div class="nickname">서울이좋아</div>
                                <div class="date">(2023-04-18)</div>
                                <div class="reply_bt_wrap" id="Clickbt">
                                    <!-- <a href="#" class="modify">수정</a> -->
                                    <!-- <a href="#">삭제</a> -->
                                    <!-- <a href="#">신고</a> -->
                                    <button type="submit" onclick="location.href='#';">신고</button>
                                </div>
                                <div class="content">남산타워 가보셨나요?</div>
                            </div>
                            <div>
                                <div class="nickname">서잘알</div>
                                <div class="date">(2023-04-18)</div>
                                <div class="reply_bt_wrap" id="Clickbt">
                                    <!-- <a href="#" class="modify">수정</a> -->
                                    <!-- <a href="#">삭제</a> -->
                                    <button type="submit" onclick="location.href='#';">신고</button>
                                </div>
                                <div class="content">홍대가보세요</div>
                            </div>
                            <div>
                                <div class="nickname">hyeonna</div>
                                <div class="date">(2023-04-18)</div>
                                <div class="reply_bt_wrap" id="Clickbt">
                                    <button type="submit" onclick="location.href='replyEdit';">수정</button>
                                    <button type="submit" onclick="location.href='#';">삭제</button>
                                    <!-- <a href="replyEdit" class="modify">수정</a> -->
                                    <!-- <a href="#">삭제</a> -->
                                    <!-- <a href="#">신고</a> -->
                                </div>
                                <div class="content">댓글 달아주셔서 감사합니다!</div>
                            </div>
                        </div>

                        <!-- 댓글 작성 -->
                        <div class="reply_write">
                            <div>
                                <div class="nickname">hyeonna</div>
                                <div class="content">
                                <textarea placeholder="내용을 작성해주세요."></textarea>
                                </div>
                                <div class="writeButton">
                                    <button type="submit" onclick="location.href='#';">등록</button>
                                    <!-- <a href="#">등록</a> -->
                                </div>
                            </div>
                        </div>
                </div>

                <!-- bt : button -->
                <div class="bt_wrap">
                    <button type="submit" onclick="location.href='qnaList';">목록</button> 
                    <button type="submit" onclick="location.href='qnaEdit';">수정</button> 
                    <!-- <a href="list" class="on">목록</a>
                    <a href="edit">수정</a> -->
                </div>
            </div>
        </div>
    
    	<%@include file="footer.jsp" %>
    	
    </body>
    
    </html>