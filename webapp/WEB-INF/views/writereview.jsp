<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰기 페이지</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/writereview.css">
    <script src="js/writereview.js"></script>
</head>


<body>
    
    <div class="container">
        <h1> 여행후기 작성 </h1>
        <form action="#" method="post" enctype="multipart/form-data">
            <div id="imagePreview" class="preview-container"></div>


            <label for="imageUpload" class="file-upload-btn">
                <i class="fas fa-cloud-upload-alt"></i> 사진 올리기 (최대 5장까지 가능)
            </label>
            <input id="imageUpload" type="file" accept=".jpg, .jpeg, .png" multiple />

            <div class="tag-box">
                <div class="areatag-box">
                    <label for="where">어디로 여행했나요?</label>
                    <input type="text" placeholder="장소를 입력해주세요" class="areatag" maxlength="10" name="areatag" style="height:22px;" required>
                    <span>(*필수입력란*)</span>
                </div>
                <div class="customtag-box">
                    <label for="custom" class="plustag">추가 태그</label>
                    <input type="text" placeholder="#1 태그입력란" maxlength="10" class="customtag" name="customtag1"  style="height:22px;">
                    <input type="text" placeholder="#2 태그입력란" maxlength="10" class="customtag" name="customtag2"  style="height:22px;">
                    <span>(선택입력란)</span>
                </div>
            </div>

            <div class="content-wrap">
                    <input type="text" name="title" placeholder=" 제목을 입력하세요 " maxlength="30" class="title" required>
                <textarea class="content" name="content" cols="50" rows="100" placeholder="내용을 입력하세요"></textarea>
            </div>

            <div class="submit_button">
                <button type="submit" name="submit" class="submitbtn"> 작성 완료 </button>
            </div>    

            <!-- <button id="refreshBtn">새로고침</button> -->
        </form>
    </div>

</body>

</html>