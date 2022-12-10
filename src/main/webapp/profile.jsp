<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

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

    <!-- CUSTOM -->
    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>
    <link rel="stylesheet" href="./asset/scss/base/_header.css"/>
    <link rel="stylesheet" href="./asset/scss/base/_footer.css"/>

    <link rel="stylesheet" href="./asset/scss/css/profile.css"/>
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

        <div class="container content">
            <div class="row justify-content-lg-center gap-5">
                <div class="content-left col-lg-3 col-12 col">
                    <div class="content-left-header">
                        <div class="content-left__img pointer">
                            <img src="./asset/img/home/logo-footer.png" alt=""/>
                        </div>
                        <div class="content-left__name fs-3 fw-semibold">
                            <p class="fw-bold pointer">${user.getName()}</p>
                            <p>User</p>
                        </div>
                    </div>
                    <div class="content-left-nav">
                        <div class="content-left__item">
                            <a href="#" class="content-left__link fs-3">
                                <i class="fa-solid fa-user-pen"></i>
                                Tổng quan</a
                            >
                        </div>
                        <div class="content-left__item">
                            <a href="<%=request.getContextPath()%>/thank-you" class="content-left__link fs-3">
                                <i class="fa-solid fa-coins"></i>
                                Lịch sử đặt hàng</a
                            >
                        </div>
                    </div>
                    <form action="<%=request.getContextPath()%>/logout " method="post"
                          class="content-left-logout content-left__item mt-4">
                        <button type="submit" class="content-left__link fs-3 w-100 bg-transparent border-0 text-start">
                            <i class="fa-solid fa-power-off"></i>
                            Đăng xuất
                        </button
                        >
                    </form>
                </div>
                <div class="content-right col-lg-8 col-12 col">
                    <div class="text-center fs-3 fw-bold"
                         style="color:#25fc2d;">
                        <%=request.getAttribute("success") != null ? request.getAttribute("success") : ""%>
                    </div>

                    <div class="content-right-list">
                        <form action="<%=request.getContextPath()%>/profile" method="post" class="content-right__item">
                            <div class="content-right__top">
                                <div class="content-right__left fs-2 fw-semibold">
                                    <i class="fa-solid fa-user"></i> Tên
                                </div>
                                <div class="content-right__right fs-2">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </div>
                            <div class="content-right__bottom fs-3 fw-normal">
                                ${user.getName()}
                            </div>
                            <div class="content-right__form">
                                <div class="content-right__input">
                                    <input type="text" name="name" id="name"/>
                                    <input type="hidden" name="action" value="updateName" id="name"/>

                                </div>
                                <div class="content-right__group fs-4">
                                    <button class="content-right__edit">Cập nhật</button>
                                    <span class="content-right__cancel">Hủy</span>
                                </div>
                            </div>
                        </form>
                        <form action="<%=request.getContextPath()%>/profile" method="post" class="content-right__item">
                            <div class="content-right__top">
                                <div class="content-right__left fs-2 fw-semibold">
                                    <i class="fa-solid fa-user"></i> Họ
                                </div>
                                <div class="content-right__right fs-2">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </div>
                            <div class="content-right__bottom fs-3 fw-normal">
                                ${user.getSurname()}
                            </div>
                            <div class="content-right__form">
                                <div class="content-right__input">
                                    <input type="text" name="surname" id="surname"/>
                                    <input type="hidden" name="action" value="updateSurname" id="surname"/>

                                </div>
                                <div class="content-right__group fs-4">
                                    <button class="content-right__edit">Cập nhật</button>
                                    <span class="content-right__cancel">Hủy</span>
                                </div>
                            </div>
                        </form>
                        <form action="<%=request.getContextPath()%>/profile" method="post" class="content-right__item">
                            <div class="content-right__top">
                                <div class="content-right__left fs-2 fw-semibold">
                                    <i class="fa-solid fa-user"></i> Địa chỉ
                                </div>
                                <div class="content-right__right fs-2">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </div>
                            <div class="content-right__bottom fs-3 fw-normal">
                                ${user.getAddress()}
                            </div>
                            <div class="content-right__form">
                                <div class="content-right__input">
                                    <input type="text" name="address" id="address"/>
                                    <input type="hidden" name="action" value="updateAddress" id="address"/>

                                </div>
                                <div class="content-right__group fs-4">
                                    <button class="content-right__edit">Cập nhật</button>
                                    <span class="content-right__cancel">Hủy</span>
                                </div>
                            </div>
                        </form>

                        <form class="content-right__item" action="<%=request.getContextPath()%>/profile" method="post">
                            <div class="content-right__top">
                                <div class="content-right__left fs-2 fw-semibold">
                                    <i class="fa-solid fa-user"></i> Số điện thoại
                                </div>
                                <div class="content-right__right fs-2">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </div>
                            <div class="content-right__bottom fs-3 fw-normal">
                                ${user.getPhone()}
                            </div>
                            <div class="content-right__form">
                                <div class="content-right__input">
                                    <input type="text" name="tel" id="tel"/>
                                    <input type="hidden" name="action" value="updateTel" id="tel"/>

                                </div>
                                <div class="content-right__group fs-4">
                                    <button class="content-right__edit">Cập nhật</button>
                                    <span class="content-right__cancel">Hủy</span>
                                </div>
                            </div>
                        </form>
                        <form class="content-right__item" action="<%=request.getContextPath()%>/profile" method="post">
                            <div class="content-right__top">
                                <div class="content-right__left fs-2 fw-semibold">
                                    <i class="fa-solid fa-user"></i> Email
                                </div>
                                <div class="content-right__right fs-2">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </div>
                            <div class="content-right__bottom fs-3 fw-normal">
                                ${user.getEmail()}
                            </div>
                            <div class="content-right__form">
                                <div class="content-right__input">
                                    <input type="text" name="gmail" id="gmail"/>
                                    <input type="hidden" name="action" value="updateGmail" id="gmail"/>

                                </div>
                                <div class="content-right__group fs-4">
                                    <button class="content-right__edit">Cập nhật</button>
                                    <span class="content-right__cancel">Hủy</span>
                                </div>
                            </div>
                        </form>
                        <form class="content-right__item" action="<%=request.getContextPath()%>/profile" method="post">
                            <div class="content-right__top">
                                <div class="content-right__left fs-2 fw-semibold">
                                    <i class="fa-solid fa-user"></i> Password
                                </div>
                                <div class="content-right__right fs-2">
                                    <i class="fa-solid fa-pen"></i>
                                </div>
                            </div>
                            <div class="content-right__bottom fs-3 fw-normal">
                                Ấn vào để đổi mật khẩu
                            </div>
                            <div class="content-right__form">
                                <div class="content-right__input">
                                    <input type="password" name="currentPass" id="currentPass"
                                           placeholder="Mật khẩu hiện tại"/>
                                    <input type="password" name="password" id="password" placeholder="mật khẩu mới"/>

                                    <input type="hidden" name="action" value="updatePassword" id="password"/>

                                </div>
                                <div class="content-right__group fs-4">
                                    <button class="content-right__edit">Cập nhật</button>
                                    <span class="content-right__cancel">Hủy</span>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="include/common/footer.jsp"></jsp:include>

    <div dangerouslySetInnerHTML="{{__html:'<h1> asdadadasdasdsad</h1>'}}"></div>
</div>
</body>

<!-- CUSTOM -->
<script>
    const listItem = document.querySelectorAll(".content-right__item");
    const listSubContent = document.querySelectorAll(".content-right__bottom");
    const listForm = document.querySelectorAll(".content-right__form");
    const listButtonCancel = document.querySelectorAll(
        ".content-right__cancel"
    );
    if (listItem) {
        listItem.forEach((item, index) => {
            item.addEventListener("click", () => {
                if (listForm) {
                    listForm[index].classList.add("show");
                    listSubContent[index].classList.add("hide");
                    listButtonCancel[index].addEventListener("click", (e) => {
                        e.stopPropagation();
                        listForm[index].classList.remove("show");
                        listSubContent[index].classList.remove("hide");
                    });
                }
            });
        });
    }
</script>
</html>
