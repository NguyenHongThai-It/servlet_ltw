<%@ page import="Entities.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entities.ContentDetailCat" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<Product> listPro = request.getAttribute("listProductPage") != null ? (List<Product>) request.getAttribute("listProductPage") : new ArrayList<Product>();
    ContentDetailCat cdc = request.getAttribute("cdc") != null ? (ContentDetailCat) request.getAttribute("cdc") : new ContentDetailCat();

%>
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

    <link rel="stylesheet" href="./asset/scss/css/product.css"/>
    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_product-responsive.css"
    />
</head>

<body>

<div class="app">
    <!-- Header -->
    <jsp:include page="include/common/header.jsp"></jsp:include>
    <!-- Slider -->
    <jsp:include page="include/common/nav.jsp"></jsp:include>

    <!-- Container -->
    <div
            class="main bg-leather pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Beadcrumb -->

        <jsp:include page="include/common/breadcrumb.jsp"></jsp:include>
        <div class="container">


            <section id="main" class="main">
                <div class="row">
                    <jsp:include page="include/common/categories.jsp"></jsp:include>
                    <div class="col col-lg-9 col-md-12 col-12 mt-5">
                        <div class="--goldenBackground p-1">
                            <img
                                    class="--goldenBackground"
                                    src="./asset/img/product/banner-hong-sam.jpg"
                                    alt=""
                            />
                        </div>

                        <div
                                class="item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto"
                        >
                            <div
                                    class="item-label--redTextFeild item-label--clipPath label-Advertise text-center"
                                    style="padding: 0.7rem"
                            >
                    <span class="fs-2 label-Advertise fw-bold"
                    >Cao Hồng Sâm Hàn Quốc</span
                    >
                            </div>
                        </div>
                        <%
                            for (Product p : listPro) {

                        %>
                        <jsp:include page="include/product/item-product.jsp">
                            <jsp:param name="id" value="<%=p.getId()%>"/>
                            <jsp:param name="name" value="<%=p.getName()%>"/>
                            <jsp:param name="thumbnail" value="<%=p.getThumbnail()%>"/>
                            <jsp:param name="disc_extra" value="<%=p.getDiscExtra()%>"/>
                            <jsp:param name="price" value="<%=p.getPrice()%>"/>
                            <jsp:param name="desc" value="<%=p.getDesc()%>"/>
                            <jsp:param name="origin" value="<%=p.getOrigin()%>"/>
                            <jsp:param name="spec" value="<%=p.getSpecification()%>"/>
                            <jsp:param name="brand" value="<%=p.getBrand()%>"/>

                            <jsp:param name="price_disc" value="<%=p.getPriceDisc()%>"/>
                        </jsp:include>
                        <%}%>


                        <!-- Pagination -->
                        <jsp:include page="include/common/pagination.jsp"></jsp:include>
                        <section id="slideBar1" class="bg-white p-3 rounded-3">
                            <div
                                    class="bg-white text-start pe-3 lh-lg overflow-auto scroll-custom"
                                    style="height: 130rem"
                            >
                                <%--here--%>
                                <%=cdc.getContent()%>
                            </div>
                        </section>
                    </div>
                </div>
            </section>

            <c:import url="include/common/best-sell.jsp"></c:import>


            <section id="desc" class="desc mb-5">
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-6">
                        <div class="content bg-white rounded-3">
                            <div class="row mt-5 border-bottom text-start w-100">
                                <div class="col-11 col-md-8 col-lg-8">
                                    <div
                                            class="item-label--goldenBackground item-label--clipPathE p-1 mt-4 m-auto"
                                    >
                                        <div
                                                class="item-label--goldTextFeild item-label--clipPathE label-Advertise"
                                                style="padding: 0.7rem"
                                        >
                          <span
                                  class="fs-2 label-Advertise fw-bold ms-md-5 ms-xxl-4"
                          >
                            Giới thiệu về Nhân Sâm Hàn Quốc KGIN
                          </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="p-4 pt-3">
                                <div
                                        class="lh-lg overflow-auto m-3 scroll-custom"
                                        style="height: 48.75rem"
                                >
                                    <p>
                                        <span class="fw-bold">K-GIN</span> là hệ thống cửa hàng
                                        chuyên phân phối các sản phẩm thảo dược từ sâm, nấm linh
                                        chi và đông trùng hạ thảo Hàn Quốc.
                                    </p>

                                    <p>
                                        Sản phẩm đông trùng hạ thảo của cửa hàng K-GIN cung cấp
                                        có giá bán phù hợp, hóa đơn VAT và có giấy chứng nhận
                                        công bố chất lượng sản phẩm. Nhằm đảm bảo lợi ích cao
                                        nhất cho quý khách hàng, cửa hàng KGIN cam kết 100% về
                                        chất lượng sản phẩm cũng như nguồn gốc xuất xứ, tem mác
                                        rõ ràng khi mua hàng.
                                    </p>

                                    <p class="fw-bold">
                                        Mọi thông tin quý khách vui lòng liên hệ:
                                    </p>

                                    <p class="fw-bold">HỒNG SÂM HÀN QUỐC K-GIN</p>

                                    <p class="fw-bold text-decoration-underline">
                                        Tại TPHCM:
                                    </p>

                                    <p>Showroom 1: Số 51 Võ Thị Sáu, F6, Quận 3, TP.HCM</p>

                                    <p class="fw-bold text-decoration-underline">
                                        Tại Hà Nội:
                                    </p>
                                    <p>Showroom 1: 149 Cầu Giấy – Hà Nội</p>
                                    <p>Showroom 2: 21 Tây Sơn – Đống Đa – Hà Nội</p>
                                    <p>Showroom 3: 121A – Phố Huế – Hai Bà Trưng – Hà Nội</p>
                                    <p>
                                        Showroom 4: 577 Nguyễn Trãi – Thanh Xuân Nam – Hà Nội (
                                        Đối diện pico Trung Văn)
                                    </p>

                                    <p><b>Hotline:</b> 19004625 (Zalo, sms: 0936.319.818)</p>

                                    <p>
                                        <b>Website:</b> https://kgin.com.vn/ – <b>Email:</b>
                                        contact@hongsamhanquoc.net
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-12 col-lg-6">
                        <div class="content bg-white rounded-3">
                            <div class="row mt-5 border-bottom text-start w-100">
                                <div class="col-11 col-md-8 col-lg-8">
                                    <div
                                            class="item-label--goldenBackground item-label--clipPathE p-1 mt-4 m-auto"
                                    >
                                        <div
                                                class="item-label--goldTextFeild item-label--clipPathE label-Advertise"
                                                style="padding: 0.7rem"
                                        >
                          <span
                                  class="fs-2 label-Advertise fw-bold ms-md-5 ms-xxl-4"
                          >Giới thiệu về Nhân Sâm Hàn Quốc KGIN</span
                          >
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="p-4 pt-0 pb-1">
                                <div class="lh-base m-3">
                                    <div class="desc__item">
                                        <a href="#" class="text-decoration-none text-black_2">
                          <span class="fw-bold"
                          >[Cẩn Trọng] Bà Bầu Có Dùng Được Đông Trùng Hạ Thảo
                            Không?</span
                          >
                                            <div class="row pb-4 border-bottom">
                                                <div
                                                        class="desc__img col-4 transform-scale--small overflow-hidden"
                                                >
                                                    <img
                                                            src="asset/img/product/desc img 1.jpg"
                                                            alt=""
                                                    />
                                                </div>
                                                <p class="col-8">
                                                    Công dụng của đông trùng hạ thảo được coi là tốt
                                                    hơn cả nhân sâm nghìn năm tuổi. Vậy khi có thai
                                                    hoặc bà bầu có dùng được không ?
                                                </p>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="desc__item mt-4">
                                        <a href="#" class="text-decoration-none text-black_2">
                          <span class="fw-bold"
                          >Thời điểm tốt nhất để tác dụng của đông trùng hạ
                            thảo với phụ nữ đạt hiệu quả cao</span
                          >
                                            <div class="row pb-4 border-bottom">
                                                <div
                                                        class="desc__img col-4 transform-scale--small overflow-hidden"
                                                >
                                                    <img
                                                            src="asset/img/product/desc img 2.jpg"
                                                            alt=""
                                                    />
                                                </div>
                                                <p class="col-8">
                                                    Đông trùng hạ thảo có tốt cho phụ nữ không? Những
                                                    tác dụng của đông trùng hạ thảo với phụ nữ là gì?
                                                    Đó là
                                                </p>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="desc__item mt-4">
                                        <a href="#" class="text-decoration-none text-black_2">
                          <span class="fw-bold"
                          >Cách Nhận Biết Đông Trùng Hạ Thảo Giả, Thật | Chuẩn
                            Trong 3s</span
                          >
                                            <div class="row pb-4">
                                                <div
                                                        class="desc__img col-4 transform-scale--small overflow-hidden"
                                                >
                                                    <img
                                                            src="asset/img/product/desc img 3.jpg"
                                                            alt=""
                                                    />
                                                </div>
                                                <p class="col-8">
                                                    Hiện nay có nhiều người đã dùng các thủ thuật làm
                                                    giả đông trùng rất tinh vi. Sau đây, cửa hàng Nhân
                                                    sâm Hàn Quốc
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Footer -->
        <jsp:include page="include/common/footer.jsp"></jsp:include>
    </div>
</div>
</body>

<!-- CUSTOM -->
<script src="./asset/js/common.js"></script>

</html>
