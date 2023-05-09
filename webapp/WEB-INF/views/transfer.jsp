<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->

  <!DOCTYPE html>
  <html lang="ko">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Travel Signal - Transfer Page</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/transfer.css">

  </head>

  <body>
  

    <header>
      <jsp:include page="header.jsp" />
    </header>


    <div class="board_wrap">
      <div class="board_title">
        <h2><strong>동행환승</strong></h2>
      </div>

      <div class="board_trans_condition">
        <form action="search.do" method="get">
          
          <div class="board_trans_condition_area">
            <div class="title"><strong>지역 </strong></div>
            <button type="submit" name="area" value="Seoul">서울</button>
            <button type="submit" name="area" value="Gangwon">강원</button>
            <button type="submit" name="area" value="Gyeonggi">경기</button>
            <button type="submit" name="area" value="Chungcheong">충청</button>
            <button type="submit" name="area" value="Gyeongsang">경상</button>
            <button type="submit" name="area" value="Jeolla">전라</button>
            <button type="submit" name="area" value="Jeju">제주</button>
          </div>

          <div class="board_trans_condition_date">
            <div class="title"><strong>날짜 </strong></div>
            <span>출발</span> <input type="date" name="startDate">
            <span>종료</span> <input type="date" name="endDate">
          </div>



          <div class="board_trans_condition_person">
            <div class="title"><strong>인원</strong></div>
            <select name="peopleCount">
              <option value="*">제한없음</option>
              <option value="3">2명</option>
              <option value="2">3명</option>
              <option value="3">4명</option>
              <option value="4">5명</option>
              <option value="5">6명</option>
              <option value="7">7명</option>
              <option value="8">8명</option>
              <option value="9">9명</option>
              <option value="10">10명</option>
            </select>
            <input type="submit" value="검색">
          </div>
        </form>
      </div>

      <div class="board_list_wrap">

        <div class="board_list">
          
          <div class="top">
            <div class="num">번호</div>
            <div class="title">제목</div>
            <div class="writer">글쓴이</div>
            <div class="startDate">출발</div>
            <div class="endDate">해산</div>
            <div class="person">인원</div>
            <div class="status">현황</div>
          </div>

          <div class="board_list_post">
            
            <div>
              <div class="num">1</div>
              <div class="title"><a href="#">우리동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">2</div>
              <div class="title"><a href="#">얘네동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">3</div>
              <div class="title"><a href="#">쟤네동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">4</div>
              <div class="title"><a href="#">다른동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">5</div>
              <div class="title"><a href="#">남의동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">6</div>
              <div class="title"><a href="#">그냥동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">7</div>
              <div class="title"><a href="#">칠번동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">8</div>
              <div class="title"><a href="#">팔번동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

            <div>
              <div class="num">9</div>
              <div class="title"><a href="#">구번동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>
            
            <div>
              <div class="num">10</div>
              <div class="title"><a href="#">십번동행</a></div>
              <div class="writer">강대수</div>
              <div class="startDate">2023-04-15</div>
              <div class="endDate">2023-04-15</div>
              <div class="person">3</div>
              <div class="status"><a href="#">신청가능</a></div>
            </div>

          </div>




        </div>

        <div class="board_page">
          <a href="#" class="bt first">< < </a>
          <a href="#" class="bt prev"> < </a>
          <a href="#" class="num on">1</a>
          <a href="#" class="num">2</a>
          <a href="#" class="num">3</a>
          <a href="#" class="num">4</a>
          <a href="#" class="num">5</a>
          <a href="#" class="bt next">></a>
          <a href="#" class="bt last">> ></a>

        </div>
      </div>
    </div>

    <footer>
      <jsp:include page="footer.jsp" />
    </footer>


  </body>

  </html>