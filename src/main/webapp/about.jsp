<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>About Us</title>
    <!-- FONT AWESOME -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- BOOTSTRAP -->

    <!-- FONT - roboto-->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Roboto:wght@300;400;700&display=swap"
            rel="stylesheet"
    />

    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>

    <link rel="stylesheet" href="./asset/scss/css/about.css"/>
    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_about-responsive.css"
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
    <!-- Content -->
    <section id="brand" class="brand">
        <div style="background-image: url(./asset/img/about/bg-about-1.jpg)">
            <div class="container text-white lh-2 fs-4 p-5">
                <h1 class="text-center fw-bold mt-5">
                    Giới thiệu về thương hiệu K-GIN
                </h1>
                <p>
                    Xin kính chào quý khách! <br/>
                    Chào mừng quý khách đến với Hồng sâm Hàn Quốc K-GIN! Được thành
                    lập từ năm 2008, K-GIN luôn mang trong mình sứ mệnh phục vụ quý
                    khách hàng những sản phẩm thảo dược Hàn Quốc có chất lượng tốt
                    nhất. Chúng tôi nỗ lực tạo dựng niềm tin nơi khách hàng bằng chất
                    lượng sản phẩm và thái độ phục vụ tận tình nhất. Với K-GIN, khách
                    hàng không phải là thượng đế mà là đồng nghiêp, là người bạn,
                    người thân trong gia đình!
                </p>
                <p>
                    Đến nay, công ty đã xây dựng được hệ thống gồm 5 showroom bán hàng
                    trực tiếp tại Hà Nội và thành phố Hồ Chí Minh. Bên cạnh đó, K-GIN
                    cam kết phục vụ quý khách hàng trên toàn quốc qua website bán hàng
                    online Kgin.com.vn, Hotline
                    <span class="fw-bold text-warning">19004625</span> (Zalo, sms:
                    <span class="fw-bold text-warning">0936.319.818</span>)
                </p>
                <p>
                    K-GIN trực tiếp phân phối sản phẩm của các thương hiệu nổi tiếng
                    như: Taewoong Food, Bio Science, Pocheon Insam, Daedoong,… Ngoài
                    ra, K-GIN đang thúc đẩy việc hợp tác với các thương hiệu hồng sâm
                    nội địa nổi tiếng tại Hàn Quốc, điển hình là Cheon Ji Yang, hứa
                    hẹn sẽ mang tới cho khách hàng những sản phẩm có chất lượng hàng
                    đầu, bồi bổ sức khỏe tốt nhất.
                </p>
                <p class="text-center fw-bold text-warning">
                    ” Nếu bạn mất tiền, bạn mất rất ít.<br/>
                    Nếu bạn mất uy tín, bạn mất rất nhiều.<br/>
                    Nếu bạn mất sức khỏe, bạn mất tất cả”
                </p>
                <p class="mb-5">
                    Đây là kim chỉ nam cho mọi hoạt động của công ty, với sự nỗ lực
                    không ngừng vì khách hàng, K-GIN tự hào mang lại sức khỏe và niềm
                    tin cho khách hàng.
                </p>
            </div>
        </div>
    </section>

    <div style="background-image: url(./asset/img/home/background_1.jpg)">
        <div class="container lh-2 fs-4 p-5">
            <section id="product" class="product">
                <div class="content">
                    <h1 class="text-center fw-bold mt-5 mb-5">
                        Giới thiệu về các dòng sản phẩm mà K-GIN đang kinh doanh
                    </h1>
                    <p>
                        K-GIN hiện đang nhập khẩu trực tiếp và phục vụ quý khách hàng
                        với 4 dòng sản phẩm chính bao gồm: Hồng sâm Hàn Quốc, Nấm linh
                        chi Hàn Quốc, Đong trùng hạ thảo Hàn Quốc, và các chế phẩm từ
                        thảo dược Hàn Quốc khác
                    </p>
                    <h3 class="fw-bold">1. Sâm Hàn Quốc</h3>
                    <p>
                        Xứ sở Kim Chi được biết đến như là thủ phủ của nhân sâm, thiên
                        thời – địa lợi – nhân hòa đã tạo nên những củ nhân sâm tươi có
                        chất lượng hảo hạng nhất. Với kinh nghiệm hàng ngàn năm trồng,
                        khai thác và chế biến nhân sâm, các bổ phẩm cho sức khỏe từ nhân
                        sâm Hàn Quốc đang được ưa chuộng trên toàn thế giới.
                    </p>
                    <p>
                        K-GIN tự hào mang đến cho quý khách hàng các bổ phẩm cao cấp từ
                        nhân sâm tươi Hàn Quốc: Hồng sâm khô, Cao Hồng sâm, Hồng sâm Tẩm
                        mật ong, Tinh chất hồng sâm,… Đây đều là những sản phẩm được
                        khách hàng lựa chọn và tin dùng, rất hiệu quả trong việc tăng
                        cường sức khỏe, phòng chống bệnh tật và điều hòa cơ thể.
                    </p>
                    <h3 class="fw-bold">2. Linh chi Hàn Quốc</h3>
                    <p>
                        Nấm linh chi hay còn được gọi với nhiều tên ưu ái khác như: nấm
                        trường thọ, vạn niên nhung,… Nấm linh chi có tác dụng làm chậm
                        quá trình lão hóa, bảo vệ cơ thể khỏi các tác nhân độc tố từ môi
                        trường bên ngoài. Nhiều công trình nghiên cứu và công bố khoa
                        học đã chứng minh về thành phần dược tính cũng như tác dụng thần
                        kỳ của nấm linh chi đối với sức khỏe.
                    </p>
                    <p>
                        Công ty chúng tôi hiện đang phân phối tới quý khách hàng các sản
                        phẩm bao gồm: nấm linh chi khô, cao linh chi và trà linh chi.
                    </p>
                    <h3 class="fw-bold">3 Đông trùng hạ thảo Hàn Quốc</h3>
                    <p>
                        Đông trùng hạ thảo Hàn Quốc được lấy giống từ Đông trùng hạ thảo
                        Tây Tạng, nuôi trồng dựa trên trên quy trình công nghệ hiên đại
                        và tiên tiến hàng đầu, đảm bảo chất lượng tốt nhất. Đông trùng
                        hạ thảo có công dụng bồi bổ sức khỏe nhanh chóng, tăng cường
                        hoạt động của các chức năng trong cơ thể. Bên cạnh đó, loại thần
                        dược này còn được biết tới như một loại bảo vật hồi xuân sinh
                        lực.
                    </p>
                    <p>
                        K-GIN hiện đang kinh doanh các sản phẩm chính từ Đông trùng hạ
                        thảo bao gồm tinh chất đông trùng hạ thảo và đông trùng hạ thảo
                        dạng viên.
                    </p>
                    <h3 class="fw-bold">
                        4. Các bổ phẩm từ thảo dược thiên nhiên Hàn Quốc
                    </h3>
                    <p>
                        Bên cạnh các loại thảo dược như sâm, linh chi, đông trùng hạ
                        thảo, Hàn Quốc còn có vô số các loại thảo dược và các chế phẩm
                        có lợi cho sức khỏe khác được K-GIN kinh doanh như: An cung ngưu
                        hoàng hoàn, bổ gan giải rượu Hàn Quốc,…
                    </p>
                </div>
            </section>

            <section id="shop-system" class="shop-system">
                <div class="content mb-5 pt-5">
                    <h1 class="text-red_1 fw-bold text-center">HỆ THỐNG CỬA HÀNG</h1>

                    <div
                            class="shop-system__img bg-white p-3 mt-4 transform-scale-bigImg overflow-hidden mx-auto"
                            style="max-height: 40rem; max-width: 120rem; overflow: hidden;"
                    >
                        <img class="img-change"
                             src="https://via.placeholder.com/1200x400"
                             width="90%"
                             alt=""
                        />
                    </div>
                </div>

                <%--store-list--%>
                <c:import url="include/about/store-list.jsp"></c:import>
            </section>

            <section id="photo-library" class="photo-library">
                <jsp:include page="include/about/album.jsp"></jsp:include>
            </section>
        </div>

        <!-- Footer -->
        <c:import url="include/common/footer.jsp"></c:import>
    </div>
</div>
</body>
<!-- BOOTSTRAP -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"
></script>

<script src="./asset/js/common.js"></script>
<script>
    const all = document.querySelectorAll(".shop-system--click");
    const imgScroll = document.querySelector(".img-change");

    if (all) {
        all.forEach((item) => {
            item.addEventListener("click", () => {
                const itemRemoveActive = document.querySelector(
                    ".shop-system--click.active"
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
</script>
</html>

