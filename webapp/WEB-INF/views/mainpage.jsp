<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="ko">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Travel Signal - Main Page</title>

    <!-- swiper style -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <!-- style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mainpage.css">
    <!-- fonts awesome -->
    <script src="https://kit.fontawesome.com/1486713bf1.js" crossorigin="anonymous"></script>
    <!-- swiper script -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <!-- script -->
    <script defer src="js/script.js"></script>
  </head>

  <body>
    <!-- header -->
    <header>

      <div class="signup-container">
        <div><a href="/login">로그인</a></div>
        <div><a href="/logout">로그아웃</a></div>
        <div><a href="/register">회원가입</a></div>
      </div>

      <ul class="category">
        <li><a href="main.html" target="_self"><img src="img/travelsignal2.png" alt="여행시그널로고"></a> </li>
        <li><a href="#" target="_self">동행 찾기</a> </li>
        <li><a href="#" target="_self">QnA</a> </li>
        <li><a href="#" target="_self">동행 환승</a> </li>
        <li><a href="#" target="_self">플래너</a> </li>
        <li><a href="/board/register" target="_self">여행후기</a> </li>
        <li>
          <div>
            <input type="text">
            <i class="fab fa-searchengin search-icon"></i>
          </div>
        </li>
      </ul>
    </header>

    <hr class="header-bottom-line">

    <!-- main -->
    <main>
      <section class="wrap">
        <h1>여행 <span>후기</span></h1>

        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="inner">
              <div class="con">
                <!-- 1 -->
                <img src="img/pic1.png">
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="inner">
              <div class="con">
                <!-- 2 -->
                <img src="img/pic2.png">
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="inner">
              <div class="con">
                <!-- 3 -->
                <img src="img/pic3.png">
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="inner">
              <div class="con">
                <!-- 4 -->
                <img src="img/pic4.png">
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="inner">
              <div class="con">
                <!-- 5 -->
                <img src="img/pic5.png">
              </div>
            </div>
          </div>
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

        <div class="swiper-pagination"></div>

        <ul class="auto">
          <li class="btnStart"><i class="fas fa-play"></i></li>
          <li class="btnStop"><i class="fas fa-pause"></i></li>
        </ul>
      </section>

      <hr>

      <section>
        <div class="place">
          <div class="place-menu">
            <div>
              <img src="img/travelsignal2.png" alt="여행시그널로고">
              <strong><a href="#" target="_self">시그널 광장</a></strong>
            </div>

            <button class="plusBtn">
              <i class="fas fa-plus"></i> 더보기</button>
          </div>

          <div class="place-main">
            <div class="main">
              <div class="main-pic">
                <img src="img/pic1.png" alt="건물사진">
              </div>
              <div class="main-title">
                <a href="#" target="_self">
                  <div class="place-location"><strong>경상</strong></div>
                  <div class="place-date">03.15 ~ 03.18</div>
                  <div class="place-state" data-state="1">동행진행중</div>
                </a>
                <p class="content">부산갈싸람?</p>
              </div>
              <div class="main-name">
                <div class="profile-img">
                  <img src="img/pic2.png" alt="profile-image1">
                </div>
                <div class="user-name"><strong>부산고수</strong></div>
              </div>
            </div>
            <div class="main">
              <div class="main-pic">
                <img src="img/pic3.png" alt="">
              </div>
              <div class="main-title">
                <a href="#" target="_self">
                  <div class="place-location"><strong>경상</strong></div>
                  <div class="place-date">03.15 ~ 03.18</div>
                  <div class="place-state" data-state="1">동행진행중</div>
                </a>
                <p class="content">부산갈싸람?</p>
              </div>
              <div class="main-name">
                <div class="profile-img">
                  <img src="img/pic2.png" alt="profile-image1">
                </div>
                <div class="user-name"><strong>을용타</strong></div>
              </div>
            </div>
            <div class="main">
              <div class="main-pic">
                <img src="img/pic5.png" alt="">
              </div>
              <div class="main-title">
                <a href="#" target="_self">
                  <div class="place-location"><strong>경상</strong></div>
                  <div class="place-date">03.15 ~ 03.18</div>
                  <div class="place-state" data-state="1">동행진행중</div>
                </a>
                <p class="content">부산갈싸람?</p>
              </div>
              <div class="main-name">
                <div class="profile-img">
                  <img src="img/pic2.png" alt="profile-image1">
                </div>
                <div class="user-name"><strong>춘수리</strong></div>
              </div>
            </div>
            <div class="main">
              <div class="main-pic">
                <img src="img/pic2.png" alt="">
              </div>
              <div class="main-title">
                <a href="#" target="_self">
                  <div class="place-location"><strong>경상</strong></div>
                  <div class="place-date">03.15 ~ 03.18</div>
                  <div class="place-state" data-state="1">동행진행중</div>
                </a>
                <p class="content">부산갈싸람?</p>
              </div>
              <div class="main-name">
                <div class="profile-img">
                  <img src="img/pic2.png" alt="profile-image1">
                </div>
                <div class="user-name"><strong>훔바훔바</strong></div>
              </div>
            </div>
          </div>
        </div>

        <div class="middle">
          <div class="middle-menu">
            <div>
              <img src="img/travelsignal2.png" alt="여행시그널로고">
              <strong><a href="#" target="_self">Q&A</a></strong>
            </div>

            <button class="plusBtn"><i class="fas fa-plus"></i> 더보기</button>
          </div>
          <div class="middle-content">
            <ul>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
              <li>
                <a href="#" target="_self">
                  <span>Q&A</span>
                  2박 3일 서울 추천코스 알려주세요!
                </a>
              </li>
            </ul>
          </div>
        </div>
      </section>

    </main>

    <!-- footer -->
    <footer>
      <hr>
      <div class="sfoot">
        <div class="afoot">
          <div class="logo">
            <img src="img/travelsignal2.png" alt="여행시그널로고">
          </div>
          <div class="comp">
            <span>주식회사 여행시그널</span>
          </div>
          <div class="priv">
            <a href="#" id="priv" target="_self">개인정보 처리방침</a>
            <a href="#" id="prov" target="_self">이용약관</a>
          </div>
        </div>

        <div class="bfoot">
          <button class="cust" onclick="">
            고객센터
          </button>
          <p id="mail">이메일 문의 : signal@travel.com</p>
        </div>
      </div>
    </footer>

    <script>
      const swiper = new Swiper('.wrap', { // 프레임의 요소명
        // Optional parameters
        // direction: 'vertical', // 스와이프 방향
        loop: true, // 순환여부
        pagination: {
          el: '.swiper-pagination', // 페이지 메뉴 요소명
          type: 'fraction', // 페이지 버튼 대신 슬라이더 번호 출력
          // bullets, fraction, progressbar, custom
        },
        // Navigation arrows
        navigation: {
          nextEl: '.swiper-button-next', // 다음 버튼 요소명
          prevEl: '.swiper-button-prev', // 이전 버튼 요소명
        },

        spaceBetween: 10, // 패널 사이의 간격을 50px 로 설정
        slidesPerView: "auto", // CSS에 지정한 슬라이더의 크기를 반영
        // 한 화면에 들어오는 슬라이더의 크기 지정
        grabCursor: true, // 스와이프 시 마우스 포인터 모양 변경
        centeredSlides: true, // 슬라이더 패널을 항상 가운데로 정렬
        speed: 2400, // 슬라이더 이동 속도 지정
        effect: "coverflow", // 이펙트 효과 지정
        coverflowEffect: {
          rotate: 30, // 회전 각도 지정
          stretch: -100, // 회전 각도 지정
          depth: 300, // 원근감 지정
          modifier: 5, // 중첩 정도 지정
          slideShadows: false, // 슬라이드의 그림자 생성
          // 그림자 제거
        },
        // 자동 재생
        autoplay: {
          delay: 2000,
          // 인터랙션 기능 
          // false 를 주면, 
          disableOnInteraction: true,
        }
      });

      // .btnStart 요소를 찾아서 btnStart 에 저장
      const btnStart = document.querySelector('.btnStart');
      // .btnStop 요소를 찾아서 btnStop 에 저장
      const btnStop = document.querySelector('.btnStop');

      // btnStart 버튼을 클릭하면 자동 스와이프를 시작
      // 더블클릭 이벤트로 변경
      btnStart.addEventListener("click", () => {
        swiper.autoplay.start();
      });

      // btnStop 버튼을 클릭 시 자동 스와이프를 정지
      btnStop.addEventListener("click", () => {
        swiper.autoplay.stop();
      });
    </script>
  </body>

  </html>