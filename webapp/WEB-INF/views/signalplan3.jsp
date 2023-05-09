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

			#sec {
				width: 1200px;
				height: 1000px;
				border: 1px solid;
			}

			fieldset {
				width: 700px;
				margin: auto;
			}

			form {
				margin: auto;
				/* padding: 15px 0px 40px 0px; */
			}

			input,
			textarea {
				margin-top: 10px;
			}

			input[type=time] {
				border: none;
				color: #2a2c2d;
				font-size: 14px;
				font-family: helvetica;
				width: 190px;
				height: 45px;
			}

			input[type=time]::-webkit-datetime-edit-fields-wrapper {
				display: flex;
			}

			input[type=time]::-webkit-datetime-edit-text {
				padding: 19px 4px;
			}

			input[type=time]::-webkit-datetime-edit-hour-field {
				background-color: #f2f4f5;
				border-radius: 15%;
				padding: 19px 13px;
			}

			input[type=time]::-webkit-datetime-edit-minute-field {
				background-color: #f2f4f5;
				border-radius: 15%;
				padding: 19px 13px;
			}

			input[type=time]::-webkit-datetime-edit-ampm-field {
				background-color: #7155d3;
				border-radius: 15%;
				color: #fff;
				padding: 19px 13px;
			}

			input[type=time]::-webkit-clear-button {
				display: none;
			}

			input[type=time]::-webkit-inner-spin-button {
				display: none;
			}

			#cancel {
				width: 60px;
				height: 27px;
				background: white;
				border-radius: 3px;
				border: 1px solid black;
				cursor: pointer;
			}

			#make {
				width: 60px;
				height: 27px;
				background: #4463e6;
				border-radius: 3px;
				border: 1px solid blue;
				color: white;
				cursor: pointer;
				margin-right: 15px;
			}

			.submit-button {
				margin-bottom: 20px;
				text-align: center;
			}
		</style>

	</head>

	<body>

		<%@ include file="header.jsp" %>

			<section id="sec">



				<fieldset>
					<div id="create-planner-page" style="width: 615px; margin: 20px auto;">
						<h3>상세계획</h3>

						<form action="#" method="post">
							<div class="datetime" style="margin-top: 20px;">
								<p>시간 설정</p>
								<input type="time" name="time" value="00:00" required>
							</div>

							<div style="margin-top: 20px;">
								<div style="display: flex; justify-content: space-between;">
									<p style="align-self: center;">여행지</p>
									<button type="button" class="place-search"
										style="width: 80px; height: 30px; background: aliceblue; border: 1px solid rgb(109, 182, 247); border-radius: 10px; cursor: pointer;">여행지검색</button>
								</div>
								<input type="text" name="place" style="width: 610px; height: 35px; font-size: 15px;"
									required>
							</div>

							<div class="detailplan" style="margin: 20px 0px 10px 0px;">
								<p>상세계획</p>
								<textarea name="detailplan" cols="70" rows="12" style="font-size: 17px;"></textarea>
							</div>

							<div class="submit-button">
								<input type="submit" id="make" value="만들기"> <input type="button" id="cancel" value="취소">
							</div>
						</form>
					</div>

					<script>
						function onSubmit() {
							alert('hello')
						}

						// function getPlace() {
						//     var value = sessionStorage.getItem("info");
						//     document.getElementsByName("place")[0].value = value;
						// }

						window.onload = function () {
							var value = sessionStorage.getItem("info");
							document.getElementsByName("place")[0].value = value;
						};

						$(document)
							.ready(
								function () {
									$('.place-search')
										.click(
											function () {
												location.href = 'http://127.0.0.1:5500/HTML/css/Testfile/PLANNERMAIN4.html'
											})
								})
					</script>
				</fieldset>


			</section>


			<%@ include file="footer.jsp" %>
	</body>

	</html>