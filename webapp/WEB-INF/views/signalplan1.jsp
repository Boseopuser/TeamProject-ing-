<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>여행시그널</title>

        <!-- fonts awesome -->
        <script src="https://kit.fontawesome.com/7235c72187.js" crossorigin="anonymous"></script>

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                width: 1200px;
                margin: auto;
            }

            header {
                border-bottom: 1px solid rgb(208, 207, 207);
            }

            a {
                text-decoration: none;
                color: black;
            }

            /* #sec {
                width: 1200px;
                height: 1000px;
                border: 1px solid;
            } */
            .topmain {
                width: 1112px;
                height: 130px;
                display: flex;
                justify-content: space-between;
                align-items: end;
                margin: auto;
                padding: 20px 12px;
            }

            .plannerlist {
                /* margin: 50px 0px 20px 50px; */
                width: 220px;
                height: 65px;
                display: flex;
                justify-content: center;
                align-items: center;
                background: aliceblue;
                border: 1px solid rgb(167, 208, 245);
                border-radius: 17px;
            }

            .plannerlist-make {
                /* margin: 50px 0px 20px 50px; */
                width: 140px;
                height: 50px;
                display: flex;
                justify-content: center;
                align-items: center;
                background: #4463e6;
                color: white;
                border: none;
                border-radius: 17px;
            }

            .plannerlist-make>a {
                color: white;
                font-weight: lighter;
            }

            .content {
                display: block;
                float: left;
                width: 350px;
                height: 380px;
                border: 1px solid #dfdfdf;
                margin: 20px 10px 20px 10px;
            }

            .content:hover {
                border: 1px solid #4463e6;
            }
        </style>
    </head>

    <body>

        <%@ include file="header.jsp" %>

            <section id="sec">

                <div class="topmain">
                    <div class="plannerlist">
                        <h3>플래너 리스트</h3>
                    </div>

                    <button class="plannerlist-make">
                        <a href="">플래너 만들기</a>
                    </button>
                </div>

                <div class="maincontent"
                    style="border: 1px solid gainsboro; width: 1112px; min-height: 700px; margin: 0px auto 40px; border-radius: 20px;">

                    <a href="#" class="content">
                        <div class="title"
                            style="background: ghostwhite; width: 100%; height: 150px; border-bottom: 1px solid #dfdfdf; padding: 20px 20px; display: flex; flex-direction: column; justify-content: center; ">
                            <div>
                                <p>동행그룹명 : 재균님의 동행</p><br>
                            </div>

                            <div style="display: flex; justify-content: space-between;">
                                <div>
                                    <p>여행기간</p><br>
                                    <p>2023.03.25 ~ 2023.03.29</p>
                                </div>
                                <div style="
                            justify-content: center;
                            display: flex;
                            align-items: center;
                        ">
                                    <button style="width: 90px; height: 50px; font-size: 14px;
                                color: white;
                                /* display: flex; */
                                background: #4463e6;
                                border: none;
                                border-radius: 30px;
                                cursor: pointer;">플래너보기</button>
                                </div>
                            </div>
                        </div>

                        <div style="width: 348px; height: 230px; padding: 15px;">
                            <ul style="max-height: 180px; overflow: hidden;">
                                <h4 style="margin: 10px;">DAY 1</h4>
                                <li style="list-style: inside; margin: 10px;">KH 교육원</li>
                                <li style="list-style: inside; margin: 10px;">KH 교육원</li>
                                <li style="list-style: inside; margin: 10px;">KH 교육원</li>
                                <li style="list-style: inside; margin: 10px;">KH 교육원</li>
                                <li style="list-style: inside; margin: 10px;">KH 교육원</li>
                            </ul>
                        </div>
                    </a>

                    <a href="#" class="content">

                    </a>

                    <a href="#" class="content">

                    </a>
                    <a href="#" class="content">

                    </a>
                    <!-- float 마지막은 clear:both -->
                    <div class="clear" style="clear: both;"></div>



                </div>



            </section>


            <%@ include file="footer.jsp" %>
    </body>

    </html>