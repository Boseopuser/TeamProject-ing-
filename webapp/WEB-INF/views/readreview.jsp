<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>후기 상세 페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/readreview.css">
    <script src="https://kit.fontawesome.com/e6512126dd.js" crossorigin="anonymous"></script>
</head>

<body>
    <main class="container">
        <h1>여행후기 상세페이지</h1>
        <hr>
        <section class="head">

            <div class="user-info">
                    <a href="#" class="profile-img">
                        <img src="img/profile.jpg" alt="프로필사진" />
                    </a>
                    <a href="#" class="nickname">닉네임입니다</a>
                <p class="date">2023.02.01 14:00</p>
            </div>

            <button class="likebtn">
                <i class="fa-regular fa-heart"></i> 좋아요
            </button>
            <span class="morebtn">
                <a href="#">
                    <i class="fa-solid fa-bars"></i>
                </a>
            </span>
        </section>
        <section class="title" >
            <p> 대충 제주도 다녀온 후기 ( 3박 4일 ) </p>
        </section>

        <hr>
        <section class="photo-wrap">
            <div class="photo">
                <img src="img/pic1.png" alt="사진">
            </div>
        </section>
        <section class="content">
            <div class="hashtag-required">#서울</div>
            <div class="hashtag-optional">#맛집추천</div>
            <br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam tenetur accusamus delectus, possimus
                libero inventore. Excepturi optio quidem fugiat quae reiciendis facilis quis. Laboriosam aut
                incidunt eius amet possimus quae, blanditiis saepe quasi quo, dolorem, soluta tempore? Sint, ex
                omnis!
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint doloremque quaerat facere debitis
                pariatur non obcaecati ipsam, laudantium quae, neque quod quos fuga quisquam labore inventore architecto
                temporibus necessitatibus voluptatem.
            </p>
        </section>

    </main>
</body>

</html>