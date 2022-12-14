<%@ page import="Entities.ContactInfor" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id") != null ? request.getParameter("id").toString() : "";
    String name = request.getParameter("name") != null ? request.getParameter("name").toString() : "";
    String thumbnail = request.getParameter("thumbnail") != null ? request.getParameter("thumbnail") : "";
    String disc_extra = request.getParameter("disc_extra") != null ? request.getParameter("disc_extra") : "";
    String price = request.getParameter("price") != null ? request.getParameter("price") : "";
    String price_disc = request.getParameter("price_disc") != null ? request.getParameter("price_disc") : "";
    String desc = request.getParameter("desc") != null ? request.getParameter("desc") : "";
%>
<div
        class="modal modal-lg fade"
        id="exampleModal<%=id%>"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
>
    <div
            class="modal-dialog modal-dialog-centered"
            style="max-width: 100rem"
    >
        <div class="modal-content p-5 text-bg-leather fs-5 position-relative text-start">
            <div class="d-lg-flex align-items-start">
                <div class="modal-header col-lg-5 col-12">
                    <img
                            src="<%=thumbnail%>"
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
                        <%=name%>>
                    </h2>
                    <div
                            class="d-flex align-items-center justify-content-between justify-content-lg-start gap-5"
                    >
                        <div class="d-flex align-items-center gap-1">
                            <span>4.8</span>
                            <i class="fa-solid fa-star text-orange_light"></i>
                            <i class="fa-solid fa-star text-orange_light"></i>
                            <i class="fa-solid fa-star text-orange_light"></i>
                            <i class="fa-solid fa-star text-orange_light"></i>
                            <i class="fa-solid fa-star text-orange_light"></i>
                        </div>

                        <span class="text-red_dark fw-bold">1.6k ???? b??n</span>
                    </div>
                    <p>
                        <%=desc%>
                    </p>

                    <form action="<%= request.getContextPath()%>/detail-product" method="post">
                        <div class="d-flex justify-content-between">
                            <div class="d-flex flex-column gap-2">
                                <div
                                        class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Quy c??ch</span
                        >

                                    <span class=""><strong>:</strong> 60 g??i x 30ml</span>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Xu???t x???</span
                        >

                                    <span class=""><strong>:</strong> H??n Qu???c</span>
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Th????ng hi???u</span
                        >

                                    <span class=""
                                    ><strong>:</strong> Daedong Korea Ginseng</span
                                    >
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Gi?? th??? tr?????ng</span
                        >

                                    <span
                                    ><strong>:</strong>
                          <span
                                  class="text-decoration-line-through text-gray_2"
                          >
                              <fmt:formatNumber value="<%=price%>" type="currency"/>
                          </span></span
                                    >
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-between justify-content-lg-start"
                                >
                        <span class="fw-bold" style="width: 12.5rem"
                        >Gi?? khuy???n m??</span
                        >

                                    <span
                                    ><strong>:</strong>
                          <span class="text-red_dark fs-1 fw-semibold"
                          >
                         <fmt:formatNumber
                                 value="<%=Integer.parseInt(price) -(Integer.parseInt(price)*Integer.parseInt(disc_extra)/100)%>"
                                 type="currency"/>
                          </span
                          ></span
                                    >
                                </div>
                                <div
                                        class="d-flex align-items-center justify-content-between justify-content-lg-start mt-3"
                                >
                        <span class="fw-bold" style="width: 12.5rem"
                        >S??? l?????ng</span
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
                                                    value="1"
                                                    style="outline: none"
                                            />
                                            <input
                                                    type="hidden"
                                                    name="productId"
                                                    value="<%=id%>"
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
                                    <div>Cam k???t h??ng ch??nh h??ng 100%</div>
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
                                    <div>Giao h??ng to??n qu???c</div>
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
                                    <div>Mi???n ph?? v???n chuy???n t??? 500k</div>
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
                                    <div>T?? v???n nhi???t t??nh t???n t??m</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <button type="submit"
                                    class=" border-0 pointer item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto text-center col-12 col-lg-6"
                            >
                                <div
                                        class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                        style="padding: 0.4rem"
                                >
                        <span class="fs-2 label-Advertise fw-bold"
                        >Mua h??ng</span
                        >
                                </div>
                            </button>
                            <div
                                    class="mt-5 mt-lg-4 position-relative col-12 col-lg-6 px-lg-2 px-0"
                            >
                                <div
                                        class="item-label--goldenBackground kgin-sharp"
                                        style="padding: 0.3rem"
                                >
                                    <input
                                            type="text"
                                            class="w-100 border-0 ps-4 text-red_dark"
                                            placeholder="Y??u c???u g???i l???i"
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
                                        G???i
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
                                <div>Cam k???t h??ng ch??nh h??ng 100%</div>
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
                                <div>Cam k???t h??ng ch??nh h??ng 100%</div>
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
                                <div>Cam k???t h??ng ch??nh h??ng 100%</div>
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
                                <div>Cam k???t h??ng ch??nh h??ng 100%</div>
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
                                S???n ph???m ???????c giao v?? thu ti???n t???n n??i trong v??ng 4h trong
                                n???i th??nh H?? N???i v?? TP.HCM.
                            </p>
                            <p class="mt-3">
                                V???i ????n h??ng ??? t???nh c??n ph??? thu???c v??o kho???ng c??ch ?????a l??,
                                Ch??ng t??i lu??n ??u ti??n giao h??ng nhanh nh???t c?? th???.
                            </p>
                            <p class="mt-3">
                                C??c tr?????ng h???p c???n giao g???p h??y li??n h??? tr???c ti???p
                                <strong>19004625</strong> ????? ???????c giao h??ng ngay.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div
                    class="position-absolute"
                    style="cursor: pointer; top: -1rem; right: -1rem"
                    data-bs-dismiss="modal"
            >
                <i class="fa-regular fa-circle-xmark fs-1 text-red_dark"></i>
            </div>
        </div>
    </div>
</div>

