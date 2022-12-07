<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<fmt:setLocale value="vi_VN"/>

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

    <!-- SLICK CAROUSEL -->
    <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
            integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />

    <!-- CUSTOM -->
    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>

    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_home-responsive.css"
    />
    <link rel="stylesheet" href="./asset/scss/css/detail-page.css"/>
</head>

<body>
<div class="app">
    <!-- Header -->
    <c:import url="include/common/header.jsp"></c:import>
    <c:import url="include/common/nav.jsp"></c:import>

    <!-- Main -->
    <div
            class="main pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Slider -->

        <!-- Beadcrumb -->
        <c:import url="include/common/breadcrumb.jsp"></c:import>
        <div class="container">
            <!-- Detail -->
            <div class="modal-content p-5 text-bg-light_1 fs-5 position-relative">
                <div class="d-lg-flex align-items-start">
                    <div class="modal-header col-lg-5 col-12">
                        <img
                                src="${product.getThumbnail()}"
                                alt=""
                                style="
                    max-width: 50rem;
                    object-fit: contain;
                    height: fit-content;
                  "
                        />
                    </div>
                    <div class="modal-body col-lg-7 col-12">
                        <h2 class="fs-1">
                            ${product.getName()}
                        </h2>
                        <div
                                class="d-flex align-items-center justify-content-between justify-content-lg-start gap-5"
                        >
                            <div class="d-flex align-items-center gap-1">
                                <span> ${product.getRate()}
                                </span>
                                <i class="fa-solid fa-star text-orange_light"></i>
                                <i class="fa-solid fa-star text-orange_light"></i>
                                <i class="fa-solid fa-star text-orange_light"></i>
                                <i class="fa-solid fa-star text-orange_light"></i>
                                <i class="fa-solid fa-star text-orange_light"></i>
                            </div>

                            <span class="text-red_dark fw-bold">${product.getAmountSold()} Đã bán</span>
                        </div>
                        <p>
                            ${product.getDesc()}
                        </p>

                        <form action="<%= request.getContextPath()%>/detail-product" method="post">
                            <div class="d-flex justify-content-between">
                                <div class="d-flex flex-column gap-2">
                                    <div
                                            class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                    >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Quy cách</span
                        >

                                        <span class=""><strong>:</strong> ${product.getSpecification()}</span>
                                    </div>
                                    <div
                                            class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                    >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Xuất xứ</span
                        >

                                        <span class=""><strong>:</strong> ${product.getOrigin()}</span>
                                    </div>
                                    <div
                                            class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                    >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Thương hiệu</span
                        >

                                        <span class=""
                                        ><strong>:</strong> ${product.getBrand()}</span
                                        >
                                    </div>
                                    <div
                                            class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                    >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Giá thị trường</span
                        >

                                        <span
                                        ><strong>:</strong>
                          <span
                                  class="text-decoration-line-through text-gray_2"
                          >
                        <fmt:formatNumber value="${product.getPrice()}" type="currency"/>

                          </span></span
                                        >
                                    </div>
                                    <div
                                            class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                    >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Giá khuyến mã</span
                        >

                                        <span
                                        ><strong>:</strong>
                          <span class="text-red_dark fs-1 fw-semibold"
                          >
                              <fmt:formatNumber value="${product.getPriceDisc()}" type="currency"/>

                          </span
                          ></span
                                        >
                                    </div>
                                    <div
                                            class="d-flex align-items-center justify-content-between justify-content-lg-start mt-3"
                                    >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Số lượng</span
                        >

                                        <div class="d-flex align-items-center">
                                            <strong>:</strong>
                                            <div
                                                    class="item-label--goldenBackground kgin-sharp d-flex align-items-center sl-sp"
                                            >
                            <span
                                    class="input-number-decrement kgin-sharp-no-right"
                            >
                              <i class="fa-solid fa-minus"></i>
                            </span>
                                                <input
                                                        type="number"
                                                        name="quantity"
                                                        id="quantity"
                                                        style="outline: none"
                                                        defaultValue=1
                                                />
                                                <input
                                                        type="hidden"
                                                        name="productId"
                                                        value="${product.getId()}"
                                                />
                                                <span
                                                        class="input-number-increment kgin-sharp-no-left"
                                                >
                              <i class="fa-solid fa-plus"></i>
                            </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div
                                        class="call-back d-none d-md-block"
                                        style="
                        background-image: -webkit-linear-gradient(
                          90deg,
                          rgb(253 237 215) 0%,
                          rgb(252, 250, 247) 99%
                        );
                      "
                                >
                                    <div
                                            class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                    >
                                        <div
                                                class="rounded-circle call-back"
                                                style="
                            width: 3.6rem;
                            height: 3.6rem;
                            padding: 0.12rem;
                          "
                                        >
                                            <div
                                                    class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle bg-white_1"
                                                    style="width: 3.4rem; height: 3.4rem"
                                            >
                                                <i
                                                        class="fa-regular fa-thumbs-up text-red_dark"
                                                ></i>
                                            </div>
                                        </div>
                                        <div>Cam kết hàng chính hãng 100%</div>
                                    </div>
                                    <div
                                            class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                    >
                                        <div
                                                class="rounded-circle call-back"
                                                style="
                            width: 3.6rem;
                            height: 3.6rem;
                            padding: 0.12rem;
                          "
                                        >
                                            <div
                                                    class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle bg-white_1"
                                                    style="width: 3.4rem; height: 3.4rem"
                                            >
                                                <img
                                                        src="./asset/img/detail-product/fomar-2.png"
                                                        class="fa-regular fa-thumbs-up text-red_dark w-100"
                                                />
                                            </div>
                                        </div>
                                        <div>Giao hàng toàn quốc</div>
                                    </div>
                                    <div
                                            class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                    >
                                        <div
                                                class="rounded-circle call-back"
                                                style="
                            width: 3.6rem;
                            height: 3.6rem;
                            padding: 0.12rem;
                          "
                                        >
                                            <div
                                                    class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle bg-white_1"
                                                    style="width: 3.4rem; height: 3.4rem"
                                            >
                                                <i
                                                        class="fa-regular fa-thumbs-up text-red_dark"
                                                ></i>
                                            </div>
                                        </div>
                                        <div>Miễn phí vận chuyển từ 500k</div>
                                    </div>
                                    <div
                                            class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                    >
                                        <div
                                                class="rounded-circle call-back"
                                                style="
                            width: 3.6rem;
                            height: 3.6rem;
                            padding: 0.12rem;
                          "
                                        >
                                            <div
                                                    class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle bg-white_1"
                                                    style="width: 3.4rem; height: 3.4rem"
                                            >
                                                <i
                                                        class="fa-regular fa-thumbs-up text-red_dark"
                                                ></i>
                                            </div>
                                        </div>
                                        <div>Tư vấn nhiệt tình tận tâm</div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-between">
                                <button
                                        type="submit"
                                        class="border-0  pointer item-label--goldenBackground item-label--clipPath p-1 mt-4 text-center col-12 col-lg-5"
                                >
                                    <div
                                            class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                            style="padding: 0.7rem"
                                    >
                                        <span class="">
                          <span
                                  class="fs-2 label-Advertise fw-bold text-orange_light"
                          >Mua hàng</span
                          ></span
                                        >
                                    </div>
                                </button>
                                <div
                                        class="call-back mt-5 mt-lg-4 position-relative col-12 col-lg-5 px-0 item-label--goldenBackground kgin-sharp"
                                        style="padding: 0.3rem"
                                >
                                    <div class="kgin-sharp" style="padding-left: 0.3rem">
                                        <input
                                                type="text"
                                                class="w-100 border-0 ps-4 text-red_dark"
                                                placeholder="Yêu cầu gọi lại"
                                                style="height: 4.4rem; outline-style: none"
                                        />
                                    </div>
                                    <div
                                            class="position-absolute call-back top-0 end-0 p-1 pointer-event"
                                    >
                                        <button
                                                class="border-0 text-bg-red_dark text-orange_light fw-semibold d-flex align-items-center justify-content-center fs-2"
                                                style="width: 6rem; height: 4.4rem"
                                        >
                                            Gửi
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="call-back mt-5 d-block d-md-none">
                                <div
                                        class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                >
                                    <div
                                            class="rounded-circle call-back"
                                            style="width: 3.6rem; height: 3.6rem; padding: 0.12rem"
                                    >
                                        <div
                                                class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle"
                                                style="width: 3.4rem; height: 3.4rem"
                                        >
                                            <i class="fa-regular fa-thumbs-up text-red_dark"></i>
                                        </div>
                                    </div>
                                    <div>Cam kết hàng chính hãng 100%</div>
                                </div>
                                <div
                                        class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                >
                                    <div
                                            class="rounded-circle call-back"
                                            style="width: 3.6rem; height: 3.6rem; padding: 0.12rem"
                                    >
                                        <div
                                                class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle"
                                                style="width: 3.4rem; height: 3.4rem"
                                        >
                                            <i class="fa-regular fa-thumbs-up text-red_dark"></i>
                                        </div>
                                    </div>
                                    <div>Cam kết hàng chính hãng 100%</div>
                                </div>
                                <div
                                        class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                >
                                    <div
                                            class="rounded-circle call-back"
                                            style="width: 3.6rem; height: 3.6rem; padding: 0.12rem"
                                    >
                                        <div
                                                class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle"
                                                style="width: 3.4rem; height: 3.4rem"
                                        >
                                            <i class="fa-regular fa-thumbs-up text-red_dark"></i>
                                        </div>
                                    </div>
                                    <div>Cam kết hàng chính hãng 100%</div>
                                </div>
                                <div
                                        class="px-3 py-2 d-flex text-bg-leather p-1 border-bottom border-orange_bold align-items-center gap-2"
                                >
                                    <div
                                            class="rounded-circle call-back"
                                            style="width: 3.6rem; height: 3.6rem; padding: 0.12rem"
                                    >
                                        <div
                                                class="text-bg-leather d-flex align-items-center justify-content-center rounded-circle"
                                                style="width: 3.4rem; height: 3.4rem"
                                        >
                                            <i class="fa-regular fa-thumbs-up text-red_dark"></i>
                                        </div>
                                    </div>
                                    <div>Cam kết hàng chính hãng 100%</div>
                                </div>
                            </div>
                        </form>

                        <div class="d-flex justify-content-around row mt-5">
                            <div
                                    class="border rounded-circle border-red_dark d-flex align-items-center justify-content-center col-3"
                                    style="width: 5rem; height: 5rem"
                            >
                                <i class="fa-solid fa-van-shuttle text-red_dark fs-3"></i>
                            </div>
                            <div class="col-9">
                                <p>
                                    Sản phẩm được giao và thu tiền tận nơi trong vòng 4h trong
                                    nội thành Hà Nội và TP.HCM.
                                </p>
                                <p class="mt-3">
                                    Với đơn hàng ở tỉnh còn phụ thuộc vào khoảng cách địa lý,
                                    Chúng tôi luôn ưu tiên giao hàng nhanh nhất có thể.
                                </p>
                                <p class="mt-3">
                                    Các trường hợp cần giao gấp hãy liên hệ trực tiếp
                                    <strong>19004625</strong> để được giao hàng ngay.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-bg-light_1 mt-4">
                <div class="d-flex align-items-center justify-content-between row">
                    <div class="coll col-4 text-center">
                        <a
                                class="btn btn-primary fs-2 fw-semibold w-100 coll-el collapsed"
                                data-bs-toggle="collapse"
                                href="#tab1"
                                role="button"
                                aria-expanded="false"
                                aria-controls="tab1"
                        >
                            Nội dung sản phẩm
                        </a>
                    </div>
                    <div class="coll col-4 text-center">
                        <a
                                class="btn btn-primary fs-2 fw-semibold w-100 coll-el collapsed"
                                data-bs-toggle="collapse"
                                href="#tab2"
                                role="button"
                                aria-expanded="false"
                                aria-controls="tab2"
                        >
                            Câu hỏi liên quan
                        </a>
                    </div>
                    <div class="coll col-4 text-center">
                        <a
                                class="btn btn-primary fs-2 fw-semibold w-100 coll-el"
                                data-bs-toggle="collapse"
                                href="#tab3"
                                role="button"
                                aria-expanded="false"
                                aria-controls="tab3"
                        >
                            Hướng dẫn mua hàng
                        </a>
                    </div>
                </div>
                <div class="wrap-collapsed px-5 py-3">
                    <div class="collapse" id="tab1">
                        <jsp:include page="include/detail/main-detail-content.jsp">
                            <jsp:param name="id" value="${cdp.getId()}"/>
                            <jsp:param name="content" value="${cdp.getContent()}"/>


                        </jsp:include>
                    </div>
                    <div class="collapse kgin-sharp bg-golden p-1" id="tab2">
                        <div class="kgin-sharp">
                            <div class="card card-body border-0 text-bg-light_1">
                                <div class="row">
                                    <div class="col col-12 col-md-6">
                                        <p class="fs-3 text-white fw-semibold">Hỗ trợ tư vấn</p>
                                        <div
                                                style="height: 4rem"
                                                class="p-1 kgin-sharp bg-golden"
                                        >
                                            <div
                                                    class="bg-white kgin-sharp d-flex justify-content-center align-items-center"
                                                    style="height: 3.6rem"
                                            >
                            <span
                                    class="text-uppercase fw-bold text-red_bold fs-2"
                            >
                              Hotline: 1900.4625</span
                            >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col col-12 col-md-6">
                                        <p class="fs-3 text-white fw-semibold">
                                            Gửi số điện thoại của bạn, chúng tôi sẽ gọi lại ngay
                                        </p>

                                        <div
                                                style="height: 4rem"
                                                class="p-1 kgin-sharp bg-golden position-relative"
                                        >
                                            <div
                                                    class="bg-white kgin-sharp d-flex justify-content-center align-items-center"
                                                    style="height: 3.6rem"
                                            >
                                                <input
                                                        type="text"
                                                        class="w-100 border-0 ps-4 text-red_dark"
                                                        placeholder="Yêu cầu gọi lại"
                                                        style="outline-style: none"
                                                        name="call"
                                                />
                                            </div>
                                            <div
                                                    class="position-absolute call-back top-0 end-0 p-1 pointer-event"
                                            >
                                                <button
                                                        class="border-0 text-bg-red_dark text-orange_light fw-semibold d-flex align-items-center justify-content-center fs-2"
                                                        style="width: 6rem; height: 3.5rem"
                                                >
                                                    Gửi
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="collapse show" id="tab3">
                        <div class="card card-body border-0 text-bg-light_1">
                            <div>
                                <p class="text-uppercase fs-2 mb-4">
                                    <strong>CÂU HỎI THẮC MẮC </strong>
                                </p>

                                <div class="row gap-3 justify-content-center">
                                    <div
                                            style="height: 4rem"
                                            class="p-1 kgin-sharp bg-golden position-relative col-5"
                                    >
                                        <div
                                                class="bg-white kgin-sharp d-flex justify-content-center align-items-center"
                                                style="height: 3.6rem"
                                        >
                                            <input
                                                    type="text"
                                                    class="w-100 border-0 ps-4 text-red_dark"
                                                    placeholder="Câu hỏi của bạn"
                                                    style="outline-style: none"
                                                    name="call"
                                            />
                                        </div>
                                    </div>
                                    <div
                                            style="height: 4rem"
                                            class="p-1 kgin-sharp bg-golden position-relative col-2"
                                    >
                                        <div
                                                class="bg-white kgin-sharp d-flex justify-content-center align-items-center"
                                                style="height: 3.6rem"
                                        >
                                            <input
                                                    type="text"
                                                    class="w-100 border-0 ps-4 text-red_dark"
                                                    placeholder="Tên"
                                                    style="outline-style: none"
                                                    name="call"
                                            />
                                        </div>
                                    </div>
                                    <div
                                            style="height: 4rem"
                                            class="p-1 kgin-sharp bg-golden position-relative col-2"
                                    >
                                        <div
                                                class="bg-white kgin-sharp d-flex justify-content-center align-items-center"
                                                style="height: 3.6rem"
                                        >
                                            <input
                                                    type="text"
                                                    class="w-100 border-0 ps-4 text-red_dark"
                                                    placeholder="Yêu cầu gọi lại"
                                                    style="outline-style: none"
                                                    name="call"
                                            />
                                        </div>
                                    </div>
                                    <div class="pointer-event kgin-sharp bg-golden col-2 p-1">
                                        <button
                                                class="border-0 h-100 w-100 text-bg-red_dark text-orange_light fw-semibold d-flex align-items-center justify-content-center fs-2 kgin-sharp"
                                                style=""
                                        >
                                            Gửi
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <p class="text-uppercase fs-2 my-5">
                                    <strong>HƯỚNG DẪN MUA HÀNG </strong>
                                </p>
                                <!-- scroll -->
                                <div class="row ps-4 pe-5">
                                    <div
                                            class="col-md-6 text-start mt-5 pe-3 lh-lg scroll-custom"
                                            style="height: 35rem; overflow: auto"
                                    >
                                        <p>
                                            Bạn có thể đặt hàng với K-GIN theo một trong các cách
                                            sau:
                                        </p>
                                        <p>
                                            1. Đặt hàng trực tiếp: thông qua chức năng Bán hàng
                                            online với trực tiếp trên website.
                                        </p>
                                        <p>
                                            2. Điện thoại trực tiếp: Hotline 19004625 (Zalo,sms:
                                            0936.319.818)
                                        </p>
                                        <p>3. Mua hàng trực tiếp:</p>
                                        <p>
                                            Quý khách hàng có thể qua các địa chỉ sau để mua hàng
                                            trực tiếp – Mở cửa từ 8h đến 20h45′ tất cả các ngày
                                            trong tuần:
                                        </p>
                                        <div>
                                            <p class="mb-0"><strong>TP Hồ Chí Minh</strong></p>
                                            <div
                                                    class="app-address active"
                                                    data-img="asset\img\detail-page\nhan-sam-tuoi-7.jpg"
                                            >
                                                Cửa hàng: 51 Võ Thị Sáu - Phường 6 - Quận 3 - TP.HCM
                                            </div>
                                        </div>
                                        <div>
                                            <p class="mb-0"><strong>Hà Nội</strong></p>
                                            <div
                                                    class="app-address"
                                                    data-img="asset\img\detail-page\nhan-sam-tuoi-2.jpg"
                                            >
                                                Cửa hàng: 577 Nguyễn Trãi - Thanh Xuân Nam - Thanh
                                                Xuân - Hà Nội ( Đối diện Pico Trung Văn)
                                            </div>
                                            <div
                                                    class="app-address"
                                                    data-img="asset\img\detail-page\yeu-cau-goi-lai-3.jpg"
                                            >
                                                Cửa hàng: 149 Cầu Giấy - Quan Hoa - Cầu Giấy - Hà
                                                Nội
                                            </div>
                                            <div
                                                    class="app-address"
                                                    data-img="asset\img\detail-page\nhan-sam-tuoi-16.jpg"
                                            >
                                                Cửa hàng: 121A Phố Huế - Hai Bà Trưng - Hà Nội (Ngã
                                                tư Phố Huế - Tuệ Tĩnh)
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-5">
                                        <div
                                                class="m-auto mt-5 m-auto item-label--goldenBackground item-label--clipPath h-100 p-1"
                                                style="width: 90%"
                                        >
                                            <img
                                                    src="https://via.placeholder.com/566x445"
                                                    alt=""
                                                    class="img-scroll"
                                            />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:import url="include/common/best-sell.jsp"></c:import>
        </div>
    </div>

    <!-- Footer -->
    <c:import url="include/common/footer.jsp"></c:import>

</div>
</body>

<script src="asset/js/common.js"></script>
<script>
    const all = document.querySelectorAll(".app-address");
    const imgScroll = document.querySelector(".img-scroll");
    const quantity = document.getElementById("quantity");
    const plusBtn = document.querySelector(".input-number-increment ");
    const minusBtn = document.querySelector(".input-number-decrement ");

    if (all) {
        all.forEach((item) => {
            item.addEventListener("click", () => {
                const itemRemoveActive = document.querySelector(
                    ".app-address.active"
                );
                if (itemRemoveActive) {
                    itemRemoveActive.classList.remove("active");
                }
                item.classList.add("active");
                const img = item.getAttribute("data-img");
                console.log(img);
                imgScroll.setAttribute("src", img);
            });
        });
    }

    if (quantity) {
        quantity.defaultValue = 1;
    }

    plusBtn.onclick = () => {
        quantity.value = Number.parseInt(quantity.value) + 1;
    }
    minusBtn.onclick = () => {
        if (quantity.value > 1) {
            quantity.value -= 1;
        }
    }

</script>
</html>

