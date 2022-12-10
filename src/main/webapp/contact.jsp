<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <!-- Icon -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- BOOTSTRAP -->

    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
    ></script>
    <!-- FONT - roboto-->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Roboto:wght@300;400;700&display=swap"
            rel="stylesheet"
    />

    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>

    <link rel="stylesheet" href="./asset/scss/css/contact.css"/>

    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_contact-responsive.css"
    />

</head>

<body>
<div class="app">
    <!-- Header -->
    <c:import url="include/common/header.jsp">
    </c:import>
    <%--    Slider--%>
    <c:import url="include/common/nav.jsp">
    </c:import>

    <!-- Contaienr -->
    <div
            class="main bg-leather pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Beadcrumb -->
        <c:import url="include/common/breadcrumb.jsp"></c:import>

        <div class="container">
            <div class="d-flex row">
                <%--list categories--%>
                <c:import url="include/common/categories.jsp"></c:import>
                <div class="wrap-right col-md-9 col-12 mt-4">
                    <div class="main-box py-3 px-5 bg-light_1">
                        <h1 class="main-__heading">Liên hệ</h1>

                        <div
                                class="main-post d-flex align-items-center gap-4 text-gray_5"
                        >
                            <div class="main-post_day">
                                <i class="fa-solid fa-calendar-days me-1"></i>
                                05/10/21
                            </div>
                            <div class="main-post_views">
                                <i class="fa-solid fa-eye me-1"></i>
                                1141 luợt xem
                            </div>
                            <div class="main-post_author">
                                <i class="fa-regular fa-user me-1"></i>
                                NguyenHongThaiAdmin
                            </div>
                        </div>
                        <div class="main-content">
                            <div class="main-content-hotline text-center">
                                <img
                                        src="./asset/img/contact/hotline.jpg"
                                        alt=""
                                        class="main-content__hotline w-75"
                                />
                            </div>
                            <h3 class="main-content__name text-red_bold fw-bold">
                                HỒNG SÂM HÀN QUỐC K-GIN
                            </h3>
                            <p class="fw-bold">Tại TPHCM:</p>
                            <p>Showroom 1: Số 51 Võ Thị Sáu, F6, Quận 3, TP.HCM</p>
                            <p class="fw-bold">Tại Hà Nội:</p>
                            <p>Showroom 1: 21 Tây Sơn – Đống Đa – Hà Nội</p>
                            <p>
                                Showroom 2: 577 Nguyễn Trãi – Thanh Xuân – Hà Nội ( Đối diện
                                Pico Trung Văn)
                            </p>
                            <p>Showroom 3: 121A – Phố Huế – Hai Bà Trưng – Hà Nội</p>
                            <p>Showroom 4: 149 Cầu Giấy – Hà Nội</p>
                            <p>
                                <strong> Điện thoại: </strong> 19004625 (Zalo,sms:
                                0936.319.818)
                            </p>
                        </div>
                    </div>

                    <jsp:include page="include/common/best-sell.jsp"></jsp:include>

                    <%--  other news--%>
                    <c:import url="include/common/other-news.jsp"></c:import>

                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <!-- Footer -->
    <c:import url="include/common/footer.jsp">
        <c:param name="aaa" value="contact"></c:param>
    </c:import>
    <c:import url="include/common/modal.jsp"></c:import>
</div>
</body>

<script src="./asset/js/common.js"></script>
</html>
