<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1 고객게시판</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f8f9fa;
    }

    #title {
        margin-bottom: 20px;
    }

    .container {
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 30px;
    }

    h2.text-center {
        font-weight: bold;
        margin-bottom: 30px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    input.form-control,
    textarea.form-control {
        border: 1px solid #ced4da;
    }

    input.form-control:focus,
    textarea.form-control:focus {
        border-color: #80bdff;
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
    }

    .form-control-file {
        padding-top: 5px;
    }

    button.btn.btn-primary {
        font-weight: bold;
    }

    button.btn.btn-primary:hover {
        background-color: #007bff;
    }
</style>

</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">1:1 고객게시판</h2>

        <br>
        
        <form action="process.jsp" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">문의 제목</label>
                <input type="text" class="form-control" id="title" name="title" required placeholder="제목을 입력해주세요.">
            </div>
            <div class="form-group">
                <label for="content">문의 내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" required placeholder="내용을 입력해주세요."></textarea>
            </div>
            <div class="form-group">
                <label for="file">첨부파일:</label>
                <input type="file" class="form-control-file border" id="file" name="file">
            </div>
            <button type="submit" class="btn btn-primary">제출</button>
        </form>
    </div>
</body>
</html>
