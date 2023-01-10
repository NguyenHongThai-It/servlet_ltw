<%@ page import="Entities.ContactInfor" %>
<%@ page import="Entities.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Footer -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ContactInfor ci = request.getAttribute("contact_info") != null ? (ContactInfor) request.getAttribute("contact_info") : new ContactInfor();
    List<Category> listCat = request.getAttribute("listRedGinseng") != null ? (List<Category>) request.getAttribute("listRedGinseng") : new ArrayList<Category>();

%>

<section class="footer" id="footer">
    <div
            class="footer__background"
            style="
            background-image: url(https://kgin.com.vn/wp-content/uploads/2021/09/footer-bg.jpg);
          "
    >
        <div class="container text-white p-4">
            <div class="row shadow">
                <div class="col-md-4 p-0">
                    <div class="pt-4">
                        <h5 class="pb-3 ps-3">THÔNG TIN LIÊN HỆ</h5>
                        <div class="p-3">
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-phone"></i>
                                <span>Hotline: <%=ci.getHotline()%></span>
                            </div>
                            <div class="footer__zalo d-flex align-items-center">
                                <i class="golden-text me-3 fa-regular fa-message"></i>
                                <span>Zalo, Sms: <%=ci.getZalo()%></span>
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 far fa-envelope"></i>
                                <span>Email: <%=ci.getEmail()%></span>
                            </div>
                            <div><b class="">Mua hàng trực tiếp tại cửa hàng </b></div>
                            <div class="footer__openTime d-flex align-items-center">
                                <i class="golden-text me-3 fa-regular fa-clock"></i>
                                <span> Thời gian mở cửa: <%=ci.getTimeOpen()%></span>
                            </div>
                            <div class="footer__logo mt-3 transform-scale">
                                <a href="#"
                                ><img
                                        width="100%"
                                        src="https://images.dmca.com/Badges/_dmca_premi_badge_5.png?ID=b19ad619-18fa-4ff5-aa78-23456472d07d"
                                        alt="DMCA.com Protection Status"
                                /></a>
                            </div>
                            <h3 class="text-center fw-bold mt-5">
                                Mã Ưu Đãi: <%=ci.getCodeDisc()%>
                            </h3>
                        </div>
                    </div>
                </div>

                <div class="col-md-5 p-0">
                    <div class="pt-4 h-100">
                        <h5 class="pb-3 ps-3">HỆ THỐNG CỬA HÀNG</h5>
                        <div class="p-3 border-secondary">
                            <div><b class="">Tại Hà Nội:</b></div>
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-location-dot"></i>
                                <span
                                >Cửa hàng 1: 21 Tây Sơn - Quan Trung- Đống Đa - Hà
                        Nội</span
                                >
                            </div>
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-location-dot"></i>
                                <span
                                >Cửa hàng 2: 121A Phố Huế - Hai Bà Trưng - Hà Nội (Ngã
                        tư Phố Huế - Tuệ Tĩnh)</span
                                >
                            </div>
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-location-dot"></i>
                                <span
                                >Cửa hàng 3: 149 Cầu Giấy - Quan Hoa - Cầu Giấy - Hà
                        Nội</span
                                >
                            </div>
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-location-dot"></i>
                                <span
                                >Cửa hàng 4: 577 Nguyễn Trãi - Thanh Xuân Nam - Thanh
                        Xuân - Hà Nội ( Đối diện Pico Trung Văn)</span
                                >
                            </div>
                            <div><b class="">Tại TP. HCM:</b></div>
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-location-dot"></i>
                                <span
                                >Cửa hàng 5: 51 Võ Thị Sáu - Phường 6 - Quận 3 -
                        TP.HCM</span
                                >
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-0">
                    <div class="pt-4">
                        <h5
                                class="pb-3 ps-3"
                                style="
                      text-overflow: ellipsis;
                      display: -webkit-box;
                      -webkit-line-clamp: 1;
                      -webkit-box-orient: vertical; /* word-break: keep-all; */
                    "
                        >
                            DANH MỤC SẢN PHẨM
                        </h5>
                        <div class="p-3 border-secondary">
                            <% for (Category cat : listCat) {

                            %>
                            <div class="mb-3 transform-scale">
                                <img
                                        src="https://kgin.com.vn/wp-content/uploads/2021/09/link4.png"
                                        alt="Nước Đông Trùng Hạ Thảo"
                                        style="height: 3.5rem; width: 3.5rem"
                                />
                                <a
                                        href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                                        class="text-decoration-none text-white"
                                >
                                    <%=cat.getName()%>
                                </a>
                            </div>
                            <% }%>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-md-4 p-0">
                    <ul class="list-group-flush p-0">
                        <li class="d-inline-block list-group-item">
                            <a
                                    href="#"
                                    class="fw-bold border-end border-white text-decoration-none text-white ps-1 pe-2"
                            >Trang Chủ</a
                            >
                        </li>
                        <li class="d-inline-block list-group-item">
                            <a
                                    href="#"
                                    class="fw-bold border-end border-white text-decoration-none text-white ps-1 pe-2"
                            >Tin Tức</a
                            >
                        </li>
                        <li class="d-inline-block list-group-item">
                            <a
                                    href="#"
                                    class="fw-bold border-end border-white text-decoration-none text-white ps-1 pe-2"
                                    style="border: none !important"
                            >Liên Hệ</a
                            >
                        </li>
                    </ul>
                    <div class="d-flex">
                        <div class="me-3 mt-2 transform-scale">
                            <img
                                    src="https://kgin.com.vn/wp-content/uploads/2021/09/logo-footer.png"
                                    alt=""
                                    style="height: 7rem; width: 7rem"
                            />
                        </div>
                        <div>
                            <div>
                                <span>HỒNG SÂM HÀN QUỐC K-GIN</span>
                            </div>
                            <div class="footer__phone d-flex align-items-center">
                                <i class="golden-text me-3 fa-solid fa-phone"></i>
                                <span>Hotline: 1900.4626</span>
                            </div>
                            <div class="footer__zalo d-flex align-items-center">
                                <i class="golden-text me-3 fa-regular fa-message"></i>
                                <span>Zalo, Sms: 0936.319.818</span>
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 far fa-envelope"></i>
                                <span>Email: contact@hongsamhanquoc.net</span>
                            </div>
                            <div class="mt-1 transform-scale">
                                <img
                                        src="https://kgin.com.vn/wp-content/uploads/2021/09/salenoti.png"
                                        alt=""
                                        style="width: 11.2rem; height: 4.2rem"
                                />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 p-0">
                    <span class="fw-bold pb-3 ps-1">MUA SẮM TIỆN LỢI</span>
                    <div class="row mt-3">
                        <div class="col-md-7 p-0 ps-3">
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i
                                        class="golden-text me-3 fa-sharp fa-solid fa-pen-to-square"
                                ></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Hướng Dẫn Mua Hàng</a
                                >
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 fa-sharp fa-solid fa-map"></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Bản Đồ Đến Showroom Của KGIN</a
                                >
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i
                                        class="golden-text me-3 fa-sharp fa-brands fa-cc-visa"
                                ></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Thông Tin Tài Khoảng Ngân Hàng</a
                                >
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i
                                        class="golden-text me-3 fa-sharp fas fa-calendar-check"
                                ></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Quy Định Về Việc Đổi Trả Hàng</a
                                >
                            </div>
                        </div>
                        <div class="col-md-5 p-0 ps-3">
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 fa-solid fa-money-bill"></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Thanh Toán Khi Nhận Hàng</a
                                >
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 fa-solid fa-truck-fast"></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Giao Hàng Toàn Quốc</a
                                >
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 fa-solid fa-thumbs-up"></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Nhân Sâm Hàn Quốc Uy Tín</a
                                >
                            </div>
                            <div
                                    class="footer__mail d-flex align-items-center align-items-md-start align-items-lg-center"
                            >
                                <i class="golden-text me-3 fa-solid fa-circle-check"></i>
                                <a href="#" class="text-decoration-none text-white"
                                >Dịch Vụ CSKH Chu Đáo</a
                                >
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 ps-5">
                    <span class="fw-bold pb-3">FANPAGE FACEBOOK</span>
                    <div
                            style="width: 24.6rem; height: 15rem; padding: 2rem 1.5rem"
                    >
                        <a href="https://www.facebook.com/KGin.HongSamHanQuoc/">
                            <img
                                    class="border"
                                    src="https://via.placeholder.com/246x150"
                                    alt=""
                            />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-end">Copyright 2021 thuộc về KGIN</div>
</section>