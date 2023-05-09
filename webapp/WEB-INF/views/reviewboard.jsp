<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 여행 후기 게시판 </title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reviewboard.css">
    <script src="https://kit.fontawesome.com/e6512126dd.js" crossorigin="anonymous"></script>
</head>

<body>
    <main class="container">
        <h1>여행후기 게시판</h1>

        <div class="prompt-box">
            <div class="prompt-message">
                여행시그널 유저라면 누구나 작성 가능한 후기게시판입니다.
                <br>
                국내여행이면 어디든! 여행후기를 작성해주세요~
            </div>
            <button type="button" class="write-btn">후기 작성</button>
        </div>

        <section class="boardlist">
            <ul>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="post-wrap">
                        <div class="profile">
                            <a href="#" class="profile-img">
                                <img src="${pageContext.request.contextPath}/resources/img/profile.jpg" alt="프로필사진" />
                            </a>
                            <a href="#" class="nickname">닉네임입니다</a>
                            <span class="like"><i class="fa-regular fa-heart"></i> 20</span>
                            <span class="view"><i class="fa-solid fa-eye"></i> 110</span>
                        </div>
                        <div class="post">
                            <a href="#" class="post">
                                <img src="${pageContext.request.contextPath}/resources/img/사진영역.png" alt="사진1" class="postimg">
                            </a>
                        </div>
                    </div>
                </li>  
            </ul>
        </section>

        <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
        </div>



    </main>
</body>

</html>