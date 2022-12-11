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
        <section class="navigate mt-3 mt-md-0" id="navigate">
            <ul
                    class="navigate-list align-items-center justify-content-center d-none d-lg-flex"
            >
                <li class="navigate-list__item">
                    <i class="fa-solid fa-bars"></i>
                    Tất cả sản phẩm
                    <ol class="navigate-sublist">
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Hồng sâm hàn quốc
                                <i class="fa-solid fa-caret-down"></i>
                            </a>
                            <ul class="navigate-sublist navigate-sublist--right">
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Cao hồng sâm hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Sâm khô hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Sâm mật ông hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Hắc sâm hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Nhân sâm tươi hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Rượu sâm linh chi
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Trà hồng sâm hàn quốc và bột sâm
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Viên hồng sâm hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Kẹo sâm hàn quốc
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Nấm chi khô hàn quốc
                                <i class="fa-solid fa-caret-down"></i>
                            </a>
                            <ul class="navigate-sublist navigate-sublist--right">
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Cao linh chi hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Linh chi khô hàn quốc
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Sản phẩm khác từ linh chi
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html#" class="navigate-sublist__link">
                                Đông trùng hạ thảo hàn quốc
                                <i class="fa-solid fa-caret-down"></i>
                            </a>
                            <ul class="navigate-sublist navigate-sublist--right">
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Nước đông trùng hạ thảo
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Viên đông trùng hạ thảo
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Cao đông trùng hạ thảo
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Thảo dược hàn quốc
                                <i class="fa-solid fa-caret-down"></i>
                            </a>
                            <ul class="navigate-sublist navigate-sublist--right">
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        An cung ngưu hoàng
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Tinh dầu thông đỏ
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Bổ gan giải rượu
                                    </a>
                                </li>
                                <li class="navigate-sublist__item">
                                    <a href="./product.html" class="navigate-sublist__link">
                                        Sản phẩm khác
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ol>
                </li>
                <li class="navigate-list__item">
                    <a href="./product.html" class="navigate-list__link">
                        Hồng sâm hàn quốc
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                    <ol class="navigate-sublist navigate-sublist--simple">
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Cao hồng sâm hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Sâm khô hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Sâm mật ông hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Hắc sâm hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Nhân sâm tươi hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Rượu sâm linh chi
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Trà hồng sâm hàn quốc và bột sâm
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Viên hồng sâm hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Kẹo sâm hàn quốc
                            </a>
                        </li>
                    </ol>
                </li>
                <li class="navigate-list__item">
                    <a href="./product.html" class="navigate-list__link">
                        Đông trùng hạ thảo
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                    <ol class="navigate-sublist navigate-sublist--simple">
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Nước đông trùng hạ thảo
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Viên đông trùng hạ thảo
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Cao đông trùng hạ thảo
                            </a>
                        </li>
                    </ol>
                </li>
                <li class="navigate-list__item">
                    <a href="./product.html" class="navigate-list__link">
                        Nấm linh chi hàn quốc
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                    <ol class="navigate-sublist navigate-sublist--simple">
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Cao linh chi hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Linh chi khô hàn quốc
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Sản phẩm khác từ linh chi
                            </a>
                        </li>
                    </ol>
                </li>
                <li class="navigate-list__item">
                    <a href="./product.html" class="navigate-list__link">
                        Thảo dược hàn quốc
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                    <ol class="navigate-sublist navigate-sublist--simple">
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                An cung ngưu hoàng
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Tinh dầu thông đỏ
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Bổ gan giải rượu
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Sản phẩm khác
                            </a>
                        </li>
                    </ol>
                </li>
                <li class="navigate-list__item">
                    <a href="./product.html" class="navigate-list__link">
                        Hệ thống cửa hàng
                    </a>
                </li>
                <li class="navigate-list__item">
                    <a href="./product.html" class="navigate-list__link">
                        Tin tức
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                    <ol
                            class="navigate-sublist navigate-sublist--simple navigate-sublist--reverse"
                    >
                        <li class="navigate-sublist__item">
                            <a href="./product.html" class="navigate-sublist__link">
                                Bài Viết Từ Hệ Thống K-GIN
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="#" class="navigate-sublist__link">
                                Kiến Thức Về Nhân Sâm
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="#" class="navigate-sublist__link">
                                Kiến Thức Về Hồng Sâm
                            </a>
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="#" class="navigate-sublist__link">
                                Kiến Thức Về Linh Chi</a
                            >
                        </li>
                        <li class="navigate-sublist__item">
                            <a href="#" class="navigate-sublist__link">
                                Kiến Thức Về ĐTHT</a
                            >
                        </li>
                    </ol>
                </li>
            </ul>

            <div class="d-block d-lg-none d-block p-0 position-relative">
                <div class="navigate-list__item" id="navigate-list-collapse">
                    <i class="fa-solid fa-bars"></i>
                    Tất cả sản phẩm
                </div>
                <ul
                        class="navigate-list-mobile position-absolute"
                        id="navigate-list-collapse__item"
                >
                    <li
                            class="navigate-list-mobile__item"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseExample1"
                            aria-expanded="false"
                            aria-controls="collapseExample1"
                    >
                        <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
                        <a href="#" class="navigate-list-mobile__link"
                        >Hồng sâm hàn quốc</a
                        >
                        <i
                                class="navigate-list-mobile__plus fa-solid fa-plus w-auto position-absolute"
                        ></i>
                    </li>
                    <ul
                            class="navigate-sublist-mobile collapse p-1"
                            id="collapseExample1"
                    >
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Cao hồng sâm hàn quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Nước Hồng Sâm Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Cao hồng sâm hàn quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Sâm Khô Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Sâm Mật Ong Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Hắc Sâm Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Nhân Sâm Tươi Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Rượu Sâm Linh Chi
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Viên Hồng Sâm Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Trà Hồng Sâm Hàn Quốc Và Bột Sâm
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Kẹo Sâm Hàn Quốc
                            </a>
                        </li>
                    </ul>
                    <li
                            class="navigate-list-mobile__item"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseExample2"
                            aria-expanded="false"
                            aria-controls="collapseExample2"
                    >
                        <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
                        <a href="#" class="navigate-list-mobile__link"
                        >Đồng trùng hạ thảo hàn quốc</a
                        >
                        <i
                                class="navigate-list-mobile__plus fa-solid fa-plus w-auto position-absolute"
                        ></i>
                    </li>
                    <ul
                            class="navigate-sublist-mobile collapse p-1"
                            id="collapseExample2"
                    >
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Nước Đông Trùng Hạ Thảo
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Viên Đông Trùng Hạ Thảo
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Cao Đông Trùng Hạ Thảo
                            </a>
                        </li>
                    </ul>

                    <li
                            class="navigate-list-mobile__item"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseExample3"
                            aria-expanded="false"
                            aria-controls="collapseExample3"
                    >
                        <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
                        <a href="#" class="navigate-list-mobile__link"
                        >Nấm linh chi hàn quốc</a
                        >
                        <i
                                class="navigate-list-mobile__plus fa-solid fa-plus w-auto position-absolute"
                        ></i>
                    </li>
                    <ul
                            class="navigate-sublist-mobile collapse p-1"
                            id="collapseExample3"
                    >
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Cao Linh Chi Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Linh Chi Khô Hàn Quốc
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Sản Phẩm Khác Từ Linh Chi
                            </a>
                        </li>
                    </ul>
                    <li
                            class="navigate-list-mobile__item"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseExample4"
                            aria-expanded="false"
                            aria-controls="collapseExample4"
                    >
                        <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
                        <a href="#" class="navigate-list-mobile__link"
                        >Thảo dược hàn quốc</a
                        >
                        <i
                                class="navigate-list-mobile__plus fa-solid fa-plus w-auto position-absolute"
                        ></i>
                    </li>
                    <ul
                            class="navigate-sublist-mobile collapse p-1"
                            id="collapseExample4"
                    >
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                An Cung Ngưu Hoàng
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Tinh Dầu Thông Đỏ
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Bổ Gan Giải Rượu
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Sản Phẩm Khác
                            </a>
                        </li>
                    </ul>
                    <li class="navigate-list-mobile__item">
                        <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
                        <a href="#" class="navigate-list-mobile__link"
                        >Hệ thống cửa hàng</a
                        >
                    </li>
                    <li
                            class="navigate-list-mobile__item"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseExample5"
                            aria-expanded="false"
                            aria-controls="collapseExample5"
                    >
                        <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
                        <a href="#" class="navigate-list-mobile__link">Tin tức</a>
                        <i
                                class="navigate-list-mobile__plus fa-solid fa-plus w-auto position-absolute"
                        ></i>
                    </li>
                    <ul
                            class="navigate-sublist-mobile collapse p-1"
                            id="collapseExample5"
                    >
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Bài Viết Từ Hệ Thống K-GIN
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Kiến Thức Về Nhân Sâm
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Kiến Thức Về Hồng Sâm
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Kiến Thức Về Linh Chi
                            </a>
                        </li>
                        <li
                                class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
                        >
                            <a href="" class="navigate-sublist-mobile__link">
                                Kiến Thức Về ĐTHT
                            </a>
                        </li>
                    </ul>
                </ul>
            </div>
        </section>
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
                        <button
                                class="px-5 py-3 border-0 bg-red_2 text-white_1 mt-4 fw-bold rounded-3 fs-4"
                                type="submit"
                        >
                            Đăng nhập
                        </button>
                        <p class="mt-4">
                            <a
                                    href="./register.html"
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

