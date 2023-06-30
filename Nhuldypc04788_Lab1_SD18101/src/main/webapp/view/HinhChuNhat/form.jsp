<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>FPT Polytechnic</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>

        div class="card text-dark mb-3">
        <div class=" card-header bg-info text-center">Thông Tin Hình Chữ Nhật</div>
        <div class="card-body">
            <div class="mb-3">
                <label for="rong" class="form-label">Chiều Rộng</label>
                <input name="rong" id="rong" class="form-control" type="number" required>
            </div>
            <div class="mb-3">
                <label for="dai" class="form-label">Chiều Dài</label>
                <input name="dai" id="dai" class="form-control" type="number" required>
            </div>

        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-outline-secondary"> Tính </button>
        </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    </body>

    </html>