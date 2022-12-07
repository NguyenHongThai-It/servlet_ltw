<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/15/2022
  Time: 7:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <!-- FONT AWESOME -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- FONT - roboto-->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Roboto:wght@300;400;700&display=swap"
            rel="stylesheet"
    />
    <!-- BOOTSTRAP -->

    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
    ></script>
    <!-- SLICK CAROUSEL -->

    <!-- CUSTOM -->
    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>
    <link rel="stylesheet" href="./asset/scss/base/_header.css"/>
    <link rel="stylesheet" href="./asset/scss/base/_footer.css"/>
</head>

<body>
<div class="app">
    <!-- Header -->
    <jsp:include page="include/common/header.jsp"></jsp:include>
    <jsp:include page="include/common/nav.jsp"></jsp:include>

    <!-- Main -->
    <div
            class="main pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <div
                class="container  mx-auto d-flex align-items-center justify-content-center"
        >
            <div>
                <div class="px-3 text-center" style="width: 50rem">
                    <img
                            src="./asset/img/not-found/404.svg"
                            alt=""
                            style=""
                            class="w-100 h-100"
                    />
                </div>
                <p class="fs-1 fw-semibold text-center">
                    404 - Trang không tồn tại
                </p>
                <div class="text-center">
                    <a
                            href="./home.html"
                            class="fs-4 bg-red_main border-0 d-inline-block text-white_1 fw-semibold px-3 rounded-4 mx-auto"
                            style="height: 4rem; line-height: 4rem"
                    >
                        Quay về trang chủ
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="include/common/footer.jsp"></jsp:include>
</div>
</body>

<!-- CUSTOM -->
<script src="./asset/js/common.js"></script>
</html>
