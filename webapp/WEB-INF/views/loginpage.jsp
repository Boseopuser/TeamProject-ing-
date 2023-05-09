<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>Travel Signal - Login Page</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/loginpage.css">
  <!-- fonts awesome -->
  <script src="https://kit.fontawesome.com/1486713bf1.js" crossorigin="anonymous"></script>
</head>
<body>

  <main>
    <form action="/login" method="post">
      <fieldset>
        <legend><h3>로그인</h3></legend>
        <div class="user-area">
          <label for="userid">
            <i class="fas fa-user"></i>
          </label>
          <input id="userid" name="ID" type="text" autocomplete="none" placeholder="로그인">
        </div>
        <div class="user-area">
          <label for="userpw">
            <i class="fas fa-lock"></i>
          </label>
          <input id="userpw" name="password" type="password" placeholder="비밀번호">
        </div>
        <a href="#">비밀번호를 잊었습니까?</a>
        <button type="submit">Login</button>  
      </fieldset>
    </form>
    
    <div class="message">
  		${msg}
	</div>
  
    <div id="hr-line">
      <div class="hr-line"></div>
      <div class="hr-txt">또는</div>
      <div class="hr-line"></div>
    </div>
  
    <div class="sns-signin">
      <button id="google-signin">
        <img src="img/google.png" alt="구글 로고">
      </button>
      <button id="naver-signin">
        <img src="img/naver.png" alt="네이버 로고">
      </button>
      <button id="kakao-signin">
        <img src="img/kakao.png" alt="카카오 로고">
      </button>
    </div>
  </main>
</body>
</html>