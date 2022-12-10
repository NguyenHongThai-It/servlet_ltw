<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 10:57 PM
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

    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
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
    <div class="main bg-leather pb-5" style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Beadcrumb -->
        <c:import url="include/common/breadcrumb.jsp"></c:import>

        <div class="container">


            <div class="d-flex row">
                <c:import url="include/common/categories.jsp"></c:import>

                <div class="wrap-right col-md-9 col-12 mt-4">
                    <div class="main-box py-3 px-5 bg-light_1">
                        <h1 class="main-__heading">
                            Hướng Dẫn Mua Hàng Nhanh Chóng & Chất Lượng Tại KGIN
                        </h1>

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
                                LeTranThai
                            </div>
                        </div>
                        <div class="main-content">
                            <h2 class="main-content__name text-red_bold fw-bold">
                                Bạn có thể đặt hàng với K-GIN theo một trong các cách sau:
                            </h2>
                            <p>
                                <strong>1. Đặt hàng trực tiếp:</strong>thông qua chức năng
                                Bán hàng online với trực tiếp trên website
                            </p>
                            <p><strong>2. Điện thoại trực tiếp: </strong></p>
                            <p>
                                Hotline 24/07: 19004625 – 0936.319.818 (Call, Zalo, SMS)
                            </p>

                            <p><strong>3. Mua hàng trực tiếp: </strong></p>
                            <p>
                                Quý khách hàng có thể qua các địa chỉ sau để mua hàng trực
                                tiếp – Mở cửa từ 8h đến 20h45′ tất cả các ngày trong tuần:
                            </p>
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
                            <h2>
                    <span style="color: #b00404"
                    >KGIN Giao hàng nhanh chóng và đảm bảo</span
                    >
                            </h2>
                            <p>
                                <strong>1. Trong các quận nội thành Hà Nội và Hồ Chí Minh :</strong>
                            </p>
                            <p>
                                – Đối với quý khách trong các quận nội thành Hà Nội và Hồ Chí Minh
                                khi mua hàng , chúng tôi sẽ mang đến tận nơi hoặc gửi chuyển phát
                                nhanh tùy theo địa điểm và yêu cầu của quý khách khi mua hàng trong
                                thời gian 3 tiếng đến 5 tiếng làm việc.
                            </p>
                            <p>
                                – Không tính chi phí chuyển hàng trong nội thành Hà Nội và Hồ Chí
                                Minh với đơn hàng lớn hơn 500 ngàn đồng. Nếu đơn hàng dưới 500 ngàn
                                thì Quý khách hàng phụ 20k đến 30k vận chuyển.
                            </p>
                            <p><strong>2. Các tỉnh thành khác</strong></p>
                            <p>
                                – Đối với các địa chỉ ngoài địa phận Hà Nội và TP.HCM. Hàng hóa được
                                gởi nhanh thông qua bưu điện. Thời gian quý khách nhận được hàng
                                trong khoảng từ 1 đến 3 ngày khi chúng tôi nhận được đơn hàng của
                                Quý khách hàng.
                            </p>
                            <p>
                                <u><strong>* Chú ý:</strong></u
                                >&nbsp;Để đảm bảo chất lượng sản phẩm, đối với khách hàng không ở
                                trong nội thành Hà Nội và Hồ Chí Minh chúng tôi sẽ gửi hàng qua
                                đường bưu điện và khách hàng thanh toán trực tiếp với nhân viên bưu
                                điện
                            </p>
                            <p><strong>Hình thức thanh toán:</strong></p>
                            <p>
                                Sau khi mua hàng, trong quá trình thực hiện thanh toán, quý khách có
                                thể thanh toán bằng những cách sau:
                            </p>
                            <p>
                                1. Thanh toán trực tiếp với nhân viên giao hàng đối với khách hàng
                                trong nội thành Hà Nội và TP. Hồ Chí Minh
                            </p>
                            <p>
                                2.Thanh toán trực tiếp với nhân viên giao hàng của Bưu Điện đối với
                                khách hàng ở các tỉnh thành khác
                            </p>
                            <p>3. Thanh toán chuyển khoản tại các tài khoản ngân hàng sau:</p>
                            <p>
                                <img
                                        loading="lazy"
                                        class="aligncenter size-full wp-image-10353"
                                        src="https://kgin.com.vn/wp-content/uploads/2021/10/tk-ngan-hang-kgin.jpg"
                                        alt=""
                                        width="800"
                                        height="578"
                                        srcset="
                        https://kgin.com.vn/wp-content/uploads/2021/10/tk-ngan-hang-kgin.jpg         800w,
                        https://kgin.com.vn/wp-content/uploads/2021/10/tk-ngan-hang-kgin-300x217.jpg 300w,
                        https://kgin.com.vn/wp-content/uploads/2021/10/tk-ngan-hang-kgin-768x555.jpg 768w,
                        https://kgin.com.vn/wp-content/uploads/2021/10/tk-ngan-hang-kgin-600x434.jpg 600w
                      "
                                        sizes="(max-width: 80rem) 100vw, 80rem"
                                />
                            </p>
                            <div id="cm-kgin" class="kgin-comment">


                                <div id="comments" class="comments-area">


                                    <div id="respond" class="comment-respond">
                                        <span id="reply-title" class="h4 comment-reply-title">Trả lời <small><a
                                                rel="nofollow" id="cancel-comment-reply-link"
                                                href="/tin-tuc/huong-dan-mua-hang/#respond"
                                                style="display:none;">Hủy</a></small></span>
                                        <form action="https://kgin.com.vn/wp-comments-post.php" method="post"
                                              id="commentform" class="comment-form" novalidate=""><p
                                                class="comment-notes">
                                            <span id="email-notes">Email của bạn sẽ không được hiển thị công khai.</span>
                                            <span class="required-field-message" aria-hidden="true">Các trường bắt buộc được đánh dấu
                         <span class="required" aria-hidden="true">*</span>
                        </span></p>
                                            <p class="comment-form-comment">
                                                <label for="comment" style="width:7rem;">Bình luận <span
                                                        class="required" aria-hidden="true">*
                          </span></label>
                                                <textarea id="comment" name="comment" cols="45" rows="8"
                                                          maxlength="65525" required=""></textarea>
                                            </p>
                                            <p class="comment-form-author">
                                                <label for="author" style="width:7rem;">Tên</label>
                                                <input id="author" name="author" type="text" value="" size="30"
                                                       maxlength="245"></p>
                                            <p class="comment-form-email">
                                                <label for="email" style="width:7rem;">Email</label>
                                                <input id="email" name="email" type="email" value="" size="30"
                                                       maxlength="100" aria-describedby="email-notes"></p>
                                            <p class="comment-form-url">
                                                <label for="url" style="width:7rem;">Trang web</label>
                                                <input id="url" name="url" type="url" value="" size="30"
                                                       maxlength="200"></p>
                                            <p class="comment-form-cookies-consent">
                                                <input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent"
                                                       type="checkbox" value="yes"> <label
                                                    for="wp-comment-cookies-consent">Lưu tên của tôi, email, và trang
                                                web trong trình duyệt này cho lần bình luận kế tiếp của tôi.</label>
                                            </p>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <c:import url="include/common/best-sell.jsp"></c:import>

                    <c:import url="include/common/other-news.jsp"></c:import>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<!-- Footer -->
<c:import url="include/common/footer.jsp"></c:import>
<c:import url="include/common/modal.jsp"></c:import>
</div>
</body>


<script src="./asset/js/common.js"></script>
</html>
