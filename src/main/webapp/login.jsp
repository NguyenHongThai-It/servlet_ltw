<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/17/2022
  Time: 12:42 PM
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
    <title>Đăng nhập</title>
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

    <!-- CUSTOM -->
    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>
    <link rel="stylesheet" href="./asset/scss/base/_header.css"/>
    <link rel="stylesheet" href="./asset/scss/base/_footer.css"/>
</head>

<body>
<div class="app">
    <!-- Header -->
    <c:import url="include/common/header.jsp">
    </c:import>

    <!-- Main -->
    <div
            class="main pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Slider -->
        <jsp:include page="include/common/nav.jsp"></jsp:include>

        <div
                class="container mt-5 mx-auto d-flex align-items-center justify-content-center"
        >
            <div class="px-3 text-center" style="width: 40rem">
                <form class="login" action="<%=request.getContextPath()%>/login" method="post">
                    <h1 class="text-gray_8">Đăng nhập</h1>
                    <div class="login-form mt-4">
                        <div
                                class="login-form-wrap border rounded-3 overflow-hidden position-relative"
                        >
                            <input
                                    type="email"
                                    name="email"
                                    id="email"
                                    class="login-form__email border-0 p-3 w-100 fs-4"
                                    placeholder="Email"
                            />
                            <div class="position-absolute top-0 end-0 fs-2 me-2 mt-2">
                                <i class="fa-solid fa-envelope"></i>
                            </div>
                        </div>
                        <div
                                class="login-form-wrap border mt-4 rounded-3 overflow-hidden position-relative"
                        >
                            <input
                                    type="password"
                                    name="password"
                                    id="password"
                                    class="login-form__password border-0 p-3 w-100 fs-4"
                                    placeholder="Mật khẩu"
                            />
                            <div class="position-absolute top-0 end-0 fs-2 me-2 mt-2">
                                <i class="fa-solid fa-key"></i>
                            </div>
                        </div>
                        <div class="text-red_bold1"><%=request.getAttribute("errorLogin") != null ? request.getAttribute("errorLogin").toString() : ""%>

                        </div>
                        <div style="color:limegreen;"><%=request.getAttribute("status") != null ? request.getAttribute("status").toString() : ""%>

                        </div>
                        <div class="text-red_bold1"
                        >
                            <%=request.getAttribute("error") != null ? request.getAttribute("error").toString() : ""%>
                        </div
                        <div class="text-red_bold1"
                        >
                            <%=request.getAttribute("errorTake") != null ? request.getAttribute("errorTake").toString() : ""%>
                        </div>

                        <button
                                class="px-5 py-3 border-0 bg-red_2 text-white_1 mt-4 fw-bold rounded-3 fs-4"
                                type="submit"
                        >
                            Đăng nhập
                        </button>
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/web_vegetables_war_exploded/login&response_type=code
    &client_id=46489466376-3n04244rci6b2p50jmuc308tgc1l17v7.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
                        <p class="mt-4">
                            <a
                                    href="<%=request.getContextPath()%>/forgotPassword"
                                    class="fs-4 hover-link mt-4 fw-semibold fst-italic text-gray_8"
                            >Quên mật khẩu</a
                            >
                        </p>
                        <p class="mt-4">
                            <a
                                    href="<%=request.getContextPath()%>/register"
                                    class="fs-4 hover-link mt-4 fw-semibold fst-italic text-gray_8"
                            >hoặc đăng kí</a
                            >
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <!-- Footer -->
    <c:import url="include/common/footer.jsp"></c:import>

</div>
</body>

<!-- CUSTOM -->
<script src="./asset/js/common.js"></script>
</html>

