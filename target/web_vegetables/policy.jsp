<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 10:29 PM
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

    <link rel="stylesheet" href="./asset/scss/css/policy.css"/>
    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_policy-responsive.css"
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


    <!-- Container -->
    <div
            class="main bg-leather pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Beadcrumb -->
        <c:import url="include/common/breadcrumb.jsp"></c:import>

        <div class="container">


            <div class="row">
        <jsp:include page="include/common/categories.jsp"></jsp:include>
                <div class="col col-lg-9 col-md-12 col-12 mt-5">
                    <div
                            class="bg-white rounded-3 p-5"
                            style="box-shadow: 0 0 1.1rem 0 rgb(0 0 0 / 5%)"
                    >
                        <section class="general-policy">
                            <div class="mb-3">
                                <h1 class="fw-bold">Quy Định Chính Sách Chung</h1>
                                <ul class="general-policy__admin text-secondary">
                                    <li>
                                        <i class="fa-solid fa-calendar-days"></i>
                                        01/11/2022
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-eye"></i>
                                        <span>927</span>
                                        <span> lượt xem</span>
                                    </li>
                                    <li>
                                        <i class="fa-solid fa-user"></i>
                                        LeHoangLong
                                    </li>
                                </ul>
                                <div
                                        class="border overflow-hidden rounded-3"
                                        id="zoom"
                                        style="width: 100%; height: 19.1rem"
                                >
                                    <p
                                            id="general-policy__content"
                                            class="general-policy__content fw-bold"
                                    >
                                        Contents [
                                        <input type="checkbox" name="hide" id="--hide"/>
                                        <label
                                                for="--hide"
                                                id="hideShow"
                                                class="general-policy__label"
                                        >Hide</label
                                        >
                                        ]
                                    </p>
                                    <div class="general-policy__link" name="hide">
                                        <a
                                                class="general-policy__desc"
                                                href="#provisions-and-payment"
                                        >
                                            QUY ĐỊNH VÀ HÌNH THỨC THANH TOÁN:
                                        </a>
                                    </div>
                                    <div class="general-policy__link" name="hide">
                                        <a class="general-policy__desc" href="#shipping-policy">
                                            CHÍNH SÁCH VẬN CHUYỂN GIAO NHẬN:
                                        </a>
                                    </div>
                                    <div class="general-policy__link" name="hide">
                                        <a class="general-policy__desc" href="#warranty-policy">
                                            CHÍNH SÁCH BẢO HÀNH, ĐỔI TRẢ VÀ HOÀN TIỀN:
                                        </a>
                                    </div>
                                    <div class="general-policy__link" name="hide">
                                        <a class="general-policy__desc" href="#privacy-policy">
                                            CHÍNH SÁCH BẢO MẬT
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section
                                id="provisions-and-payment"
                                class="provisions-and-payment"
                        >
                            <h2 class="mt-4 mb-2 ms-0 fw-bold text-red_1">
                                QUY ĐỊNH VÀ HÌNH THỨC THANH TOÁN:
                            </h2>
                            <p>
                                Quý khách xem và mua hàng trực tiếp tại các cửa hàng. Quý
                                khách ở xa vui lòng cung cấp đầy đủ thông tin tên, SĐT, địa
                                chỉ, chúng tôi sẽ giao hàng trong vòng 7 ngày làm việc ( tùy
                                vùng). Quý khách thanh toán tiền hàng cho nhân viên giao
                                hàng!
                            </p>
                        </section>

                        <section id="shipping-policy" class="shipping-policy">
                            <h2 class="mt-4 mb-2 ms-0 fw-bold text-red_1">
                                CHÍNH SÁCH VẬN CHUYỂN GIAO NHẬN:
                            </h2>
                            <p>
                                Sau khi nhận được đơn hàng của quý khách, chúng tôi sẽ gọi
                                điện để xác nhận và tiến hành giao hàng. Hàng sẽ được gửi
                                chuyển phát nhanh qua bưu điện đến tại địa chỉ khách hàng
                                cung cấp! Chúng tôi sẽ cung cấp mã đơn hàng để quý khách
                                tiện theo dõi đường đi của món hàng.
                            </p>
                        </section>

                        <section id="warranty-policy" class="warranty-policy">
                            <h2 class="mt-4 mb-2 ms-0 fw-bold text-red_1">
                                CHÍNH SÁCH BẢO HÀNH, ĐỔI TRẢ VÀ HOÀN TIỀN:
                            </h2>
                            <p>
                                Hàng đã mua không được đổi trả trừ khi xác định lỗi là do
                                nhà sản xuất. Tiền sẽ được hoàn cho quý khách sau khi chúng
                                tôi nhận và kiểm tra hàng hóa trả lại.
                            </p>
                        </section>

                        <section id="privacy-policy" class="privacy-policy">
                            <h2 class="mt-4 mb-2 ms-0 fw-bold text-red_1">
                                CHÍNH SÁCH BẢO MẬT
                            </h2>
                            <p>
                                KGIN cam kết sẽ bảo mật những thông tin mang tính riêng tư
                                của bạn. Bạn vui lòng đọc bản “Chính sách bảo mật” dưới đây
                                để hiểu hơn những cam kết mà chúng tôi thực hiện, nhằm tôn
                                trọng và bảo vệ quyền lợi của người truy cập:
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                1. Thu thập thông tin cá nhân
                            </h3>
                            <p>
                                Để truy cập và sử dụng một số dịch vụ tại KGIN,bạn có thể sẽ
                                được yêu cầu đăng ký với chúng tôi thông tin cá nhân (Email,
                                Họ tên, Số ĐT liên lạc…).
                            </p>
                            <p>
                                Mọi thông tin khai báo phải đảm bảo tính chính xác và hợp
                                pháp. KGIN không chịu mọi trách nhiệm liên quan đến pháp
                                luật của thông tin khai báo.
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                2. Sử dụng thông tin cá nhân
                            </h3>
                            <p>
                                KGIN thu thập và sử dụng thông tin cá nhân bạn với mục đích
                                phù hợp và hoàn toàn tuân thủ nội dung của “Chính sách bảo
                                mật” này.
                            </p>
                            <p>
                                Khi cần thiết, chúng tôi có thể sử dụng những thông tin này
                                để liên hệ trực tiếp với bạn dưới các hình thức như: gởi thư
                                ngỏ, đơn đặt hàng, thư cảm ơn, thông tin về kỹ thuật và bảo
                                mật…
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                3. Chia sẻ thông tin cá nhân
                            </h3>
                            <p>
                                Ngoại trừ các trường hợp về Sử dụng thông tin cá nhân như đã
                                nêu trong chính sách này, chúng tôi cam kết sẽ không tiết lộ
                                thông tin cá nhân bạn ra ngoài.
                            </p>
                            <p>
                                Trong một số trường hợp, chúng tôi có thể thuê một đơn vị
                                độc lập để tiến hành các dự án nghiên cứu thị trường và khi
                                đó thông tin của bạn sẽ được cung cấp cho đơn vị này để tiến
                                hành dự án.
                            </p>
                            <p>
                                Bên thứ ba này sẽ bị ràng buộc bởi một thỏa thuận về bảo mật
                                mà theo đó họ chỉ được phép sử dụng những thông tin được
                                cung cấp cho mục đích hoàn thành dự án. Chúng tôi có thể
                                tiết lộ hoặc cung cấp thông tin cá nhân của bạn trong các
                                trường hợp thật sự cần thiết như sau:
                            </p>
                            <ul class="ms-5">
                                <li>Khi có yêu cầu của các cơ quan pháp luật;</li>
                                <li>
                                    Trong trường hợp mà chúng tôi tin rằng điều đó sẽ giúp
                                    chúng tôi bảo vệ quyền lợi chính đáng của mình trước pháp
                                    luật;
                                </li>
                                <li>
                                    Tình huống khẩn cấp và cần thiết để bảo vệ quyền an toàn
                                    cá nhân của các thành viên KGIN khác.
                                </li>
                            </ul>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                4. Truy xuất thông tin cá nhân
                            </h3>
                            <p>
                                Bất cứ thời điểm nào bạn cũng có thể truy cập và chỉnh sửa
                                những thông tin cá nhân của mình theo các liên kết(website’s
                                links) thích hợp mà chúng tôi cung cấp.
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                5. Bảo mật thông tin cá nhân
                            </h3>
                            <p>
                                KGIN cam kết bảo mật thông tin cá nhân của bạn bằng mọi cách
                                thức có thể. Chúng tôi sẽ sử dụng nhiều công nghệ bảo mật
                                thông tin khác nhau nhằm bảo vệ thông tin này không bị truy
                                lục, sử dụng hoặc tiết lộ ngoài ý muốn.
                            </p>
                            <p>
                                KGIN khuyến cáo bạn nên bảo mật các thông tin liên quan đến
                                mật khẩu truy xuất của bạn và không nên chia sẻ với bất kỳ
                                người nào khác. Nếu sử dụng máy tính chung nhiều người, bạn
                                nên đăng xuất, hoặc thoát hết tất cả cửa sổ Website đang mở.
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                6. Sử dụng “Cookie”
                            </h3>
                            <p>
                                KGIN dùng “Cookie” để giúp cá nhân hóa và nâng cao tối đa
                                hiệu quả sử dụng thời gian trực tuyến của bạn.
                            </p>
                            <p>
                                Một cookie là một file văn bản được đặt trên đĩa cứng của
                                bạn bởi một máy chủ của trang web. Cookie không được dùng để
                                chạy chương trình hay đưa virus vào máy tính của bạn. Cookie
                                được chỉ định vào máy tính của bạn và chỉ có thể được đọc
                                bởi một máy chủ trang web trên miền được đưa ra cookie cho
                                bạn.
                            </p>
                            <p>
                                Một trong những mục đích của Cookie là cung cấp những tiện
                                ích để tiết kiệm thời gian của bạn khi truy cập tại website
                                hoặc viếng thăm website lần nữa mà không cần đăng ký lại
                                thông tin sẵn có.
                            </p>
                            <p>
                                Bạn có thể chấp nhận hoặc từ chối dùng cookie. Hầu hết những
                                Browser tự động chấp nhận cookie, nhưng bạn có thể thay đổi
                                những cài đặt để từ chối tất cả những cookie nếu bạn thích.
                                Tuy nhiên, nếu bạn chọn từ chối cookie, điều đó có thể gây
                                cản trở và ảnh hưởng không tốt đến một số dịch vụ và tính
                                năng phụ thuộc vào cookie tại website Kgin.com.vn
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                7. Quy định về “Spam”
                            </h3>
                            <p>
                                KGIN thực sự quan ngại đến vấn nạn Spam (thư rác), các Email
                                giả mạo danh tín chúng tôi gởi đi. Do đó, Sâm Hàn Quốc khẳng
                                định chỉ gởi Email đến bạn khi và chỉ khi bạn có đăng ký
                                hoặc sử dụng dịch vụ từ hệ thống của chúng tôi.
                            </p>
                            <p>
                                KGIN cam kết không bán, thuê lại hoặc cho thuê email của bạn
                                từ bên thứ ba. Nếu bạn vô tình nhận được Email không theo
                                yêu cầu từ hệ thống chúng tôi do một nguyên nhân ngoài ý
                                muốn, xin vui lòng nhấn vào link từ chối nhận Email này kèm
                                theo, hoặc thông báo trực tiếp đến ban quản trị Website.
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                8. Thay đổi về chính sách
                            </h3>
                            <p>
                                Nội dung của “Chính sách bảo mật” nàycó thể thay đổi để phù
                                hợp với các nhu cầu của KGIN cũng như nhu cầu và sự phản hồi
                                từ khách hàng nếu có. Khi cập nhật nội dung chính sách này,
                                chúng tôi sẽ chỉnh sửa lại thời gian “Cập nhật lần cuối” bên
                                trên.
                            </p>
                            <p>
                                Nội dung “Chính sách bảo mật” này chỉ áp dụng tại
                                www.kgin.com.vn, không bao gồm hoặc liên quan đến các bên
                                thứ ba đặt quảng cáo hay có links tại www.Kgin.com.vn. Do
                                đó, chúng tôi đề nghị bạn đọc và tham khảo kỹ nộidung “Chính
                                sách bảo mật” của từng website mà bạn đang truy cập.
                            </p>

                            <h3 class="mt-5 mb-3 ms-0 fw-bold text-capitalize">
                                9. Thông tin liên hệ
                            </h3>
                            <p>
                                Chúng tôi luôn hoan nghênh các ý kiến đóng góp, liên hệ và
                                phản hồi thông tin từ bạn về “Chính sách bảo mật” này. Nếu
                                bạn có những thắc mắc liên quan xin vui lòng liên hệ theo
                                địa chỉ Email: contact@hongsamhanquoc.net
                            </p>
                        </section>
                    </div>

                    <section
                            id="best-seller"
                            class="best-seller text-center mt-4 pt-4"
                    >
                        <div
                                class="item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto"
                                style="width: 27rem"
                        >
                            <div
                                    class="item-label--redTextFeild item-label--clipPath label-Advertise text-center"
                                    style="padding: 0.7rem"
                            >
                    <span class="fs-2 label-Advertise fw-bold"
                    >Sản Phẩm Nổi Bật</span
                    >
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-12 m-auto auto-width">
                                <c:import url="include/common/card.jsp"></c:import>
                            </div>

                            <div class="col-lg-4 col-md-6 col-12 m-auto auto-width">
                                <c:import url="include/common/card.jsp"></c:import>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12 m-auto auto-width">
                                <c:import url="include/common/card.jsp"></c:import>
                            </div>


                        </div>
                    </section>

                    <%--  other news--%>
                    <c:import url="include/common/other-news.jsp"></c:import>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <c:import url="include/common/footer.jsp"></c:import>
    <c:import url="include/common/modal.jsp"></c:import>
</div>
</body>

<!-- CUSTOM -->
<script src="./asset/js/common.js"></script>
<script src="./asset/js/policy.js"></script>


