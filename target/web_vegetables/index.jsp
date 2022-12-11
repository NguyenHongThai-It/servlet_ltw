<%@ page import="Entities.User" %>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Trang chủ</title>
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

    <!-- JQUERY -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- SLICK CAROUSEL -->
    <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />

    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"
            integrity="sha512-HGOnQO9+SP1V92SrtZfjqxxtLmVzqZpjFFekvzZVWoiASSQgSr4cw9Kqd2+l8Llp4Gm0G8GIFJ4ddwZilcdb8A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    ></script>
    <!-- CUSTOM -->
    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>

    <link rel="stylesheet" href="./asset/scss/css/home.css"/>
    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_home-responsive.css"
    />
</head>

<body>

<div class="app">
    <!-- Header -->
    <c:import url="include/common/header.jsp"></c:import>

    <!-- Main -->
    <div
            class="main pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Slider -->
        <section class="navigate mt-3 mt-md-0" id="navigate">
            <c:import url="include/common/nav.jsp">
            </c:import>


            <c:import url="include/home/slider.jsp"></c:import>
        </section>

        <div class="container pt-5">
            <!-- Service -->
            <section id="payment-method">
                <div class="row p-4 ps-5 bg-light border rounded-3">
                    <c:forEach var="service" items="${listService}">


                    <div class="col-lg-4 col-md-4">
                        <div class="d-flex payment-method-justify">
                            <img
                                    class="me-4 logo-header"
                                    src="https://kgin.com.vn/wp-content/uploads/2021/09/logo_header_1.jpg"
                                    alt="Tiêu chuẩn Châu Âu"
                            />
                            <div>
                                <b class="fs-3">${service.getContent()}</b>
                                <br/>
                                <span class="text-secondary fs-4"
                                >${service.getSubContent()}</span
                                >
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </section>

            <!-- Content -->
            <div class="text-center">
                <c:import url="include/common/best-sell.jsp"></c:import>
                <c:import url="include/home/red-ginseng.jsp">

                </c:import>
                <c:import url="include/home/cordyceps.jsp"></c:import>

                <c:import url="include/home/ganoderma.jsp"></c:import>

                <c:import url="include/home/herbal.jsp"></c:import>
                <c:import url="include/home/health-gift.jsp"></c:import>
                <c:import url="include/home/introduce.jsp"></c:import>
                <c:import url="include/home/shop-system.jsp"></c:import>
                <c:import url="include/home/blog.jsp"></c:import>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <c:import url="include/common/footer.jsp"></c:import>
</div>
</body>

<!-- CUSTOM -->
<script src="./asset/js/common.js"></script>

<script src="./asset/js/home.js"></script>
</html>

