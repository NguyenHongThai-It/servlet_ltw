<%@ page import="Entities.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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
    List<Product> listPro = request.getAttribute("listProduct") != null ? (List<Product>) request.getAttribute("listProduct") : new ArrayList<Product>();

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
                        <nav aria-label="Page navigation example " class="mt-3">
                            <ul
                                    class="pagination"
                                    style="display: flex; justify-content: center"
                            >
                                <li class="page-item" style="width: 4.3rem; height: 4rem">
                                    <a
                                            class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link"
                                            href="#"
                                            aria-label="Previous"
                                    >
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item" style="width: 4.3rem; height: 4rem">
                                    <a
                                            class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link"
                                            href="#"
                                    >1</a
                                    >
                                </li>
                                <li class="page-item" style="width: 4.3rem; height: 4rem">
                                    <a
                                            class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link"
                                            href="#"
                                    >2</a
                                    >
                                </li>
                                <li class="page-item" style="width: 4.3rem; height: 4rem">
                                    <a
                                            class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link"
                                            href="#"
                                    >3</a
                                    >
                                </li>
                                <li class="page-item" style="width: 4.3rem; height: 4rem">
                                    <a
                                            class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link"
                                            href="#"
                                            aria-label="Next"
                                    >
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>

                        <section id="slideBar1" class="bg-white p-3 rounded-3">
                            <div
                                    class="bg-white text-start pe-3 lh-lg overflow-auto scroll-custom"
                                    style="height: 130rem"
                            >
                                <%--here--%>
                                <div class="introduce-0">
                                    <p class="fst-italic">
                        <span class="fw-bold text-red_medium"
                        >Đông trùng hạ thảo Hàn Quốc</span
                        >
                                        là loài dược liệu quý hiếm ưa chuộng hiện nay. Có tác
                                        dụng bồi bổ và hỗ trợ điều trị các bệnh về gan, thận hay
                                        suy nhược cơ thể rất hiệu quả. Vậy đông trùng hạ thảo là
                                        gì? Tác dụng và mua đông trùng Hàn Quốc ở đâu là tốt
                                        nhất? Tất cả sẽ có trong bài viết sau đây.
                                    </p>

                                    <div
                                            class="introduce-0__img w-75 text-center mt-4 m-auto"
                                    >
                                        <img
                                                src="./asset/img/product/introduce img 1.jpg"
                                                alt=""
                                        />
                                        <p class="text-secondary fst-italic">
                                            Đông trùng hạ thảo Hàn Quốc là loại nấm tự nhiên ký
                                            sinh
                                        </p>
                                    </div>
                                </div>

                                <div class="introduce-1 mt-5">
                                    <h1 class="fw-bold">1. Tìm hiểu về đông trùng hạ thảo</h1>
                                    <div class="introduce-1-1">
                                        <h2 class="fw-bold">1.1 Đông trùng hạ thảo là gì?</h2>
                                        <p>
                                            <span class="fw-bold">Đông trùng hạ thảo</span> là
                                            dạng ký sinh của loài nấm Cordyceps sinensis trên cơ
                                            thể ấu trùng bướm trong môi trường tự nhiên và được
                                            khai thác tại các dãy núi cao Châu Á. Hiện nay, đông
                                            trùng hạ thảo Hàn Quốc là loại trùng thảo có giá trị
                                            dinh dưỡng cao, được ưa chuộng, và nhiều người tin
                                            dùng bởi tác dụng vượt trội của mình.
                                        </p>
                                    </div>

                                    <div class="introduce-1-2 mt-4">
                                        <h2 class="fw-bold">
                                            1.2. Phân loại đông trùng hạ thảo phổ biến hiện nay
                                        </h2>
                                        <div class="introduce-1-2-1">
                                            <h3 class="fw-bold">
                                                1.2.1. Đông trùng hạ thảo Hàn Quốc
                                            </h3>

                                            <p>
                                                Đông trùng hạ thảo Hàn Quốc là loại trùng thảo được
                                                nuôi cấy nhân tạo trong điều kiện tiêu chuẩn theo
                                                công nghệ hiện đại. Theo đánh giá, thành phần dinh
                                                dưỡng có trong đông trùng hạ thảo Hàn Quốc tương tự
                                                với loại tự nhiên, gần bằng với đông trùng hạ thảo ở
                                                Tây Tạng.
                                            </p>

                                            <div
                                                    class="introduce-1-2-1__img w-75 text-center mt-4 m-auto"
                                            >
                                                <img
                                                        src="./asset/img/product/introduce img 2.jpg"
                                                        alt=""
                                                />
                                                <p class="text-secondary fst-italic lh-base">
                                                    Đông trùng hạ thảo Hàn Quốc là loại trùng thảo
                                                    được nuôi cấy nhân tạo trong điều kiện tiêu chuẩn
                                                    theo công nghệ hiện đại
                                                </p>
                                            </div>

                                            <p>
                                                Theo y học cổ truyền, đông trùng hạ thảo Hàn Quốc là
                                                một loại thảo dược quý, có vị ngọt, tính ẩm, có công
                                                dụng bổ phế, tráng dương, bổ tinh túy, chỉ huyết, bổ
                                                dưỡng tạng phủ, hóa đàm. Hỗ trợ điều trị các bệnh về
                                                thận, sinh lý yếu, xuất tinh sớm, viêm phế quản, đau
                                                nhức xương khớp, đái đường, suy nhược cơ thể,..
                                            </p>
                                        </div>

                                        <div class="introduce-1-2-2">
                                            <h3 class="fw-bold">
                                                1.2.2. Đông trùng hạ thảo Tây Tạng
                                            </h3>

                                            <p>
                                                Là loại tiêu chuẩn, được hình thành và phát triển
                                                100% ở tự nhiên. Đây là loại đắt nhất hiện nay với
                                                giá mỗi kilogam lên đến cả tỷ đồng.
                                            </p>

                                            <div
                                                    class="introduce-1-2-2__img w-75 text-center mt-4 m-auto"
                                            >
                                                <img
                                                        src="./asset/img/product/introduce img 3.jpg"
                                                        alt=""
                                                />
                                                <p class="text-secondary fst-italic lh-base">
                                                    Đông trùng hạ thảo Tây Tạng là loại tiêu chuẩn,
                                                    phát triển 100% ở tự nhiên
                                                </p>
                                            </div>
                                        </div>

                                        <div class="introduce-1-2-3">
                                            <h3 class="fw-bold">
                                                1.2.3. Đông trùng hạ thảo nhân tạo
                                            </h3>

                                            <p>
                                                Là loại được nuôi cấy trong phòng thí nghiệm hay các
                                                cơ sở nghiên cứu trên ấu trùng của sâu bướm, nhộng
                                                tằm, bọ xít, ve sầu hoặc gạo lứt, đậu xanh. Thường
                                                được nuôi cấy ở các quốc như Hàn Quốc, Nhật Bản, Mỹ,
                                                Việt Nam, Thái Lan.
                                            </p>

                                            <div
                                                    class="introduce-1-2-3__img w-75 text-center mt-4 m-auto"
                                            >
                                                <img
                                                        src="./asset/img/product/introduce img 4.jpg"
                                                        alt=""
                                                />
                                                <p class="text-secondary fst-italic lh-base">
                                                    Đông trùng hạ thảo nhân tạo là loại được nuôi cấy
                                                    trong phòng thí nghiệm
                                                </p>
                                            </div>
                                        </div>

                                        <div class="introduce-1-2-4">
                                            <h3 class="fw-bold">
                                                1.2.4. Đông trùng hạ thảo dạng tươi
                                            </h3>

                                            <p>
                                                Là dạng đông trùng hạ thảo còn nguyên con, được khai
                                                thác dưới 1 tháng, hình dạng tự nhiên, nguyên con và
                                                vẫn còn ký sinh trên vật chủ. Nhiệt độ bảo quản có
                                                thể lên đến -50 độ C.
                                            </p>

                                            <div
                                                    class="introduce-1-2-4__img w-75 text-center mt-4 m-auto"
                                            >
                                                <img
                                                        src="./asset/img/product/introduce img 5.jpg"
                                                        alt=""
                                                />
                                                <p class="text-secondary fst-italic lh-base">
                                                    Đông trùng hạ thảo dạng tươi là dạng nguyên con,
                                                    được khai thác dưới 1 tháng
                                                </p>
                                            </div>
                                        </div>

                                        <div class="introduce-1-2-5">
                                            <h3 class="fw-bold">
                                                1.2.5. Đông trùng hạ thảo dạng khô
                                            </h3>

                                            <p>
                                                Là loại sản phẩm còn nguyên con, được làm sạch, phơi
                                                khô hoặc bằng phương pháp sấy đối lưu, hoặc sấy
                                                lạnh, độ ẩm của đông trùng hạ thảo dạng khô chỉ còn
                                                5% nước là đạt tiêu chuẩn. Sử dụng được lâu, có thể
                                                bảo quản trong 3 năm và hàm lượng dược tính không
                                                cao bằng dạng tươi, đạt khoảng 95 -98%.
                                            </p>

                                            <div
                                                    class="introduce-1-2-5__img w-75 text-center mt-4 m-auto"
                                            >
                                                <img
                                                        src="./asset/img/product/introduce img 6.jpg"
                                                        alt=""
                                                />
                                                <p class="text-secondary fst-italic lh-base">
                                                    Đông trùng hạ thảo dạng tươi là dạng nguyên con,
                                                    được khai thác dưới 1 tháng
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
