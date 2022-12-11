<%@ page import="Entities.User" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User u = session.getAttribute("user") != null ? (User) session.getAttribute("user") : new User();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Thanh toán</title>
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

    <link rel="stylesheet" href="./asset/scss/css/checkout.css"/>
</head>

<body>
<div class="app">
    <!-- Header -->
    <jsp:include page="include/common/header.jsp"></jsp:include>
    <!-- Slider -->
    <jsp:include page="include/common/nav.jsp"></jsp:include>

    <!-- Contaienr -->
    <div
            class="main bg-leather pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Beadcrumb -->
        <jsp:include page="include/common/breadcrumb.jsp"></jsp:include>

        <div class="container">

            <section id="Checkout" class="Check_out">
                <div class="row bg-white p-5">
                    <div class="col-12 col-md-12 col-lg-8 p-3">
                        <h1 class="text-red_medium fw-bold">Thông tin người mua</h1>
                        <div class="checkout-infor border mt-4">
                            <div class="p-4">
                                <div class="Checkout__Container d-flex pt-3 pb-3">
                                    <!-- <p class="Checkout__Left">Họ và tên (*)</p> -->
                                    <p class="Checkout__Left">Họ và tên (*)</p>
                                    <input
                                            type="text"
                                            name="fullName"
                                            class="Checkout__Right"
                                            value="<%=u.getEmail()%>"
                                    />
                                </div>
                                <div class="Checkout__Container d-flex pt-3 pb-3">
                                    <p class="Checkout__Left">Số điện thoại (*)</p>
                                    <input type="tel" name="Phone" class="Checkout__Right  " value="<%=u.getPhone()%>"
                                    />
                                </div>
                                <div class="Checkout__Container d-flex pt-3 pb-3">
                                    <p class="Checkout__Left">Địa chỉ giao hàng (*)</p>
                                    <input
                                            type="text"
                                            name="addrees"
                                            class="Checkout__Right" value="<%=u.getAddress()%>"
                                    />
                                </div>
                                <div class="Checkout__Container d-flex pt-3 pb-3">
                                    <div class="d-flex align-items-center Checkout__Left">
                                        <p class="">Ghi chú</p>
                                    </div>
                                    <textarea type="" name="note" class="Checkout__Right">
                      </textarea>
                                </div>
                                <div class="Checkout__Container d-flex pt-3 pb-3">
                                    <p class="Checkout__Left">Phương thức thanh toán (*)</p>
                                    <div class="Checkout__Right">
                                        <div class="paymentOffline">
                                            <div class="d-flex">
                                                <input
                                                        type="radio"
                                                        name="payment"
                                                        id="payment-Offline"
                                                        class="me-2"
                                                        checked
                                                />
                                                <label for="payment-Offline" class="fw-bold">
                                                    Thanh toán khi nhận hàng
                                                </label>
                                            </div>
                                            <div>
                                                <p>
                                                    Khách hàng nhận hàng và thanh toán trực tiếp cho
                                                    nhân viên giao hàng.
                                                </p>
                                            </div>
                                        </div>

                                        <div class="paymentOnline">
                                            <div class="d-flex pt-3 pb-3">
                                                <input
                                                        type="radio"
                                                        name="payment"
                                                        id="payment-Online"
                                                        class="me-2"
                                                />
                                                <label for="payment-Online" class="fw-bold"
                                                >Thanh toán trực tiếp</label
                                                >
                                            </div>
                                            <div>
                                                <p>
                                                    Khách hàng liên hệ Hotline 0936.319.318 và chuyển
                                                    khoản vào tài khoản ngân hàng sau:
                                                </p>

                                                <div class="bank mt-4">
                                                    <p id="bank__name" class="text-uppercase">
                                                        VIETCOMBANK:
                                                    </p>
                                                    <p id="bank__fullName">
                                                        * Ngân Hàng thương mại cổ phần Ngoại Thương Việt
                                                        Nam
                                                    </p>
                                                    <p>
                                                        Chủ Tài Khoản:<span id="bank-account__name">
                                  Nguyễn Trọng Minh</span
                                                    >
                                                    </p>
                                                    <p>
                                                        Số tài khoản:
                                                        <span id="bank-account__number">
                                  0491000022661</span
                                                        >
                                                        <span> - Chi Nhánh </span>
                                                        <span id="bank-account__branch"
                                                        >Thăng Long</span
                                                        >
                                                    </p>
                                                </div>

                                                <div class="bank mt-4">
                                                    <p id="bank__name" class="text-uppercase">
                                                        MB BANK:
                                                    </p>
                                                    <p id="bank__fullName">* Ngân hàng Quân Đội</p>
                                                    <p>
                                                        Chủ Tài Khoản:<span id="bank-account__name"
                                                    >Nguyễn Thị Thu</span
                                                    >
                                                    </p>
                                                    <p>
                                                        Số tài khoản:
                                                        <span id="bank-account__number"
                                                        >1100126289999</span
                                                        >
                                                        <span> - Chi Nhánh </span>
                                                        <span id="bank-account__branch">Long Biên</span>
                                                    </p>
                                                </div>
                                            </div>
                                            >>>>>>> origin/HongThai
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="p-4 pb-5 pt-0">
                                <h2 class="fw-bold text-red_medium text-capitalize ms-5">
                                    giao hàng toàn quốc
                                </h2>
                                <div class="cash-on">
                                    <div class="entry-content">
                                        <p>
                                            <i class="fa-solid fa-check fs-3 me-3"></i>
                                            Sản phẩm được giao và thu tiền tận nơi trong vòng 4h
                                            trong nội thành Hà Nội và TP.HCM.
                                        </p>
                                        <p>
                                            <i class="fa-solid fa-check fs-3 me-3"></i>
                                            Với đơn hàng ở tỉnh còn phụ thuộc vào khoảng cách địa
                                            lý, Chúng tôi luôn ưu tiên giao hàng nhanh nhất có
                                            thể.
                                        </p>
                                        <p>
                                            <i class="fa-solid fa-check fs-3 me-3"></i>
                                            Các trường hợp cần giao gấp hãy liên hệ trực tiếp
                                            19004625 để được giao hàng ngay.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4 p-3">
                        <h1 class="text-red_medium fw-bold">Đơn hàng</h1>
                        <div class="order border mt-4 p-4 pb-0">
                            <div
                                    class="d-flex justify-content-between align-items-center pt-4 pb-4 border-bottom"
                            >
                                <span class="d-block">Thành tiền</span>
                                <span
                                        class="d-block text-red_dark h2 fw-bold"
                                        id="provisional-amount"
                                >9.000.000đ</span
                                >
                            </div>
                            <div
                                    class="d-flex justify-content-between align-items-center pt-4 pb-4 border-bottom"
                            >
                                <span class="d-block">Thành tiền</span>
                                <span
                                        class="d-block text-red_medium h1 fw-bold"
                                        id="total-amount"
                                >9.000.000đ</span
                                >
                            </div>
                            <div
                                    class="call-total-cart d-flex justify-content-between align-items-center pt-4 pb-4"
                            >
                                <span class="">(Chưa bao gồm VAT)</span>
                                <div class="col-5 col-md-3 col-lg-5">
                                    <form action="<%=request.getContextPath()%>/checkout" method="post"
                                          class="item-label--goldenBackground item-label--clipPath p-1 m-auto"
                                    >
                                        <div
                                                class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                                style="padding: 0.7rem"
                                        >
                                            <button
                                                    type="submit"
                                                    class="fs-2 label-Advertise fw-bold text-orange_light bg-transparent border-0"
                                            >Hoàn Tất
                                            </button
                                            >
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="include/common/footer.jsp"></jsp:include>
</div>
</body>

<script src="./asset/js/common.js"></script>
</html>
