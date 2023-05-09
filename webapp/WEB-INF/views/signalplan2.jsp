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


		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
			.plannerlist {
				margin: 50px 0px 20px 140px;
				width: 220px;
				height: 65px;
				display: flex;
				justify-content: center;
				align-items: center;
				background: aliceblue;
				border: 1px solid rgb(167, 208, 245);
				border-radius: 17px;
			}

			.content:hover {
				border: 1px solid #4463e6;
			}

			.datebtn {
				width: 80px;
				height: 100%;
				margin-right: 30px;
				background: white;
				border-radius: 10px;
				border: 1px solid;
			}

			.input-radio:checked+span​ {
				background: blue;
			}

			.plannav {
				width: 130px;
				border-top: 2px solid #dedede;
				border-bottom: 2px solid #dedede;
				background: white;
				position: fixed;
				left: 50%;
				margin-left: -700px;
			}

			.plandate {
				/* margin: 15px 5px; */
				width: 180px;
				height: 45px;
				display: flex;
				justify-content: center;
				align-items: center;
				background: aliceblue;
				border: 1px solid rgb(167, 208, 245);
				border-radius: 17px;
			}

			.planwrite {
				display: flex;
				justify-content: center;
				align-items: center;
				width: 100px;
				height: 42px;
				border: none;
				border-radius: 17px;
				background: #4463e6;
				color: white;
			}

			.plan-container {
				max-width: 600px;
				margin: 0 auto;
			}

			.plan {
				background-color: aliceblue;
				border: 1px solid #9fa4a8;
				border-radius: 10px;
				margin: 20px 0;
				padding: 30px;
				position: relative;
				overflow: hidden;
				transition: 0.3s ease;
				border: 2px outset;
			}

			.plan:hover {
				box-shadow: 0px 3px 6px cadetblue;
			}

			.plan.active {
				background-color: #fff;
				box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1), 0 3px 6px rgba(0, 0, 0, 0.1);
				border: 2px outset;
			}

			.plan.active::before,
			.plan.active::after {
				content: url(img/travelsignal2.png);
				font-size: 7rem;
				position: absolute;
				opacity: 0.06;
				/* top: 20px; */
				left: 0;
				right: 0;
				text-align: center;
				z-index: 0;
				margin: 0 auto;
				padding: 1px;
			}

			/* .plan.active::before {
    color: #3498db;
    top: -10px;
    left: -30px;
    transform: rotateY(180deg);
  } */
			.plan-title {
				margin: 0 35px 0 0;
			}

			.plan-text {
				display: none;
				margin: 25px 0 0;
				word-wrap: break-word;
			}

			.plan.active .plan-text {
				display: block;
			}

			.plan-toggle {
				background-color: transparent;
				border: 2px solid black;
				border-radius: 50%;
				cursor: pointer;
				display: flex;
				align-items: center;
				justify-content: center;
				font-size: 16px;
				padding: 0;
				position: absolute;
				top: 30px;
				right: 30px;
				height: 30px;
				width: 30px;
				border: 1px outset;
			}

			.plan-toggle:focus {
				outline: 0;
			}

			.plan-toggle .fa-times {
				display: none;
			}

			.plan.active .plan-toggle .fa-times {
				color: #fff;
				display: block;
			}

			.plan.active .plan-toggle .fa-chevron-down {
				display: none;
			}

			.plan.active .plan-toggle {
				background-color: #9fa4a8;
			}

			.plan.active .plan-text {
				border-top: 1px solid;
				padding: 15px;
			}
		</style>
	</head>

	<body>

		<%@ include file="header.jsp" %>

			<section id="sec">

				<div class="plannerlist">
					<p>
						여행기간 <br> 2023.05.03~ 2023.05.06
					</p>
				</div>

				<div class="temp" style="width: 900px; height: 40px; margin: auto;">
					<button for="option1" class="datebtn">
						<label for="option1"> <input type="radio" name="option" value="option1" style="display: none;"
								checked> <span>전체일정</span>
						</label>
					</button>

					<button for="option2" class="datebtn" style="border: none;">
						<select name="" id=""
							style="width: 100%; height: 100%; margin-right: 30px; border: 1px solid black; border-radius: 10px; padding: 5px;">

							<option value="">DAY 1</option>
							<option value="">DAY 2</option>
							<option value="">DAY 3</option>
							<option value="">DAY 4</option>
						</select>
						<!-- </div> -->

						<!-- <label for="option2">
                    <input type="radio" name="option" value="option2" style="display: none;">
                    <span>DAY 1</span>
                </label> -->
					</button>
				</div>

				<div class="maincontent"
					style="width: 1112px; min-height: 1000px; margin: auto; position: relative; border-top: 1px solid lightgrey; margin-top: 25px;">
					<div class="plannav">
						<p>DAY 1</p>
						<p>DAY 2</p>
						<p>DAY 3</p>
						<p>DAY 4</p>
					</div>

					<div class="day-plan" style="margin: 20px 0px;">
						<div class="plantop"
							style="margin: 10px auto 10px; display: flex; justify-content: space-between; align-items: center; width: 800px; height: 65px; padding: 5px;">
							<div class="plandate">
								<strong><span>DAY 1</span></strong>
							</div>

							<button class="planwrite" onclick="location.href='#'">
								플래너작성</button>
						</div>

						<div
							style="max-width: 800px; min-height: 300px; border: 1px solid; margin: auto; border-radius: 20px;">
							<div class="plan-container">
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-1"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 01:30</p> &nbsp;:&nbsp;
										<p>경복궁</p>
									</span>

									<!-- <h3 class="plan-title">자주 묻는 질문 1</h3> -->

									<p class="plan-text">대답
										1111111111111111111111111111111111111111111111111111111111111111</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-2"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 02:30</p> &nbsp;:&nbsp;
										<p>창덕궁</p>
									</span>

									<p class="plan-text">대답 2</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-3"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 03:30</p> &nbsp;:&nbsp;
										<p>창경궁</p>
									</span>

									<p class="plan-text">대답 3</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-4"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 04:30</p> &nbsp;:&nbsp;
										<p>덕수궁</p>
									</span>
									<p class="plan-text">대답 4</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
							</div>

						</div>
						<hr style="margin: 50px 0px;">

					</div>


					<!-- ===== -->

					<div class="day-plan" style="margin: 20px 0px;">
						<div class="plantop"
							style="margin: 10px auto 10px; display: flex; justify-content: space-between; align-items: center; width: 800px; height: 65px; padding: 5px;">
							<div class="plandate">
								<strong><span>DAY 1</span></strong>
							</div>

							<button class="planwrite" onclick="location.href='#'">
								플래너작성</button>
						</div>

						<div
							style="max-width: 800px; min-height: 300px; border: 1px solid; margin: auto; border-radius: 20px;">
							<div class="plan-container">
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-1"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 01:30</p> &nbsp;:&nbsp;
										<p>경복궁</p>
									</span>

									<!-- <h3 class="plan-title">자주 묻는 질문 1</h3> -->

									<p class="plan-text">대답
										1111111111111111111111111111111111111111111111111111111111111111</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-2"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 02:30</p> &nbsp;:&nbsp;
										<p>창덕궁</p>
									</span>

									<p class="plan-text">대답 2</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-3"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 03:30</p> &nbsp;:&nbsp;
										<p>창경궁</p>
									</span>

									<p class="plan-text">대답 3</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
								<div class="plan">
									<span style="display: flex; align-items: center;"> <i class="fas fa-4"
											style="width: 30px; height: 30px; display: flex; justify-content: center; align-items: center; border-radius: 20px; margin-right: 10px; background: #4463e6; color: #fff;"></i>
										<p>오후 04:30</p> &nbsp;:&nbsp;
										<p>덕수궁</p>
									</span>
									<p class="plan-text">대답 4</p>

									<button class="plan-modify"
										style="position: absolute; top: 30px; right: 140px; width: 60px; height: 30px; background: #4463e6; color: #fff; border: none; border-radius: 25px; cursor: pointer;">
										수정</button>

									<button class="plan-delete"
										style="position: absolute; top: 30px; right: 75px; width: 60px; height: 30px; background: #fff; color: black; border: 1px solid #9fa4a8; border-radius: 25px; cursor: pointer;">
										삭제</button>

									<button class="plan-toggle">
										<i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
									</button>
								</div>
							</div>

						</div>
						<hr style="margin: 40px 0px;">

					</div>

					<!-- ============== -->






				</div>



			</section>



			<%@ include file="footer.jsp" %>
	</body>

	</html>