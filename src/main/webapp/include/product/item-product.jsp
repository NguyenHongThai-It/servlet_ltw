<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<%
    String id = request.getParameter("id") != null ? request.getParameter("id").toString() : "";
    String name = request.getParameter("name") != null ? request.getParameter("name").toString() : "";
    String thumbnail = request.getParameter("thumbnail") != null ? request.getParameter("thumbnail") : "";
    String disc_extra = request.getParameter("disc_extra") != null ? request.getParameter("disc_extra") : "";
    String price = request.getParameter("price") != null ? request.getParameter("price") : "";
    String price_disc = request.getParameter("price_disc") != null ? request.getParameter("price_disc") : "";
    String desc = request.getParameter("desc") != null ? request.getParameter("desc") : "";
    String brand = request.getParameter("desc") != null ? request.getParameter("brand") : "";
    String spec = request.getParameter("desc") != null ? request.getParameter("spec") : "";
    String origin = request.getParameter("desc") != null ? request.getParameter("origin") : "";

%>
<div
        class="horizontal-item flex-column flex-md-row pt-4 ps-md-4 pb-md-4 pb-0 transform-scale"
>
    <div
            class="w-75 h-25 me-md-4 m-auto rounded-4 overflow-hidden"
    >
        <img
                class="horizontal-item__img m-auto"
                src="<%=thumbnail%>"
                alt=""
        />
    </div>
    <div>
        <div class="pb-2 border-bottom">
            <h2
                    class="horizontal-item__title fw-bold pt-3 pt-md-0 pb-lg-2"
            >
                <%=name%>
            </h2>
            <h5
                    class="d-none d-lg-block horizontal-item__desc lh-base"
            >
                <%=desc%>
            </h5>
        </div>

        <div
                class="d-flex flex-column flex-lg-row pb-3 ps-3 ps-md-0 pt-3 border-bottom"
        >
            <div class="flex-grow-1 text-lg-center">
                Quy Cách : <%=spec%>
            </div>
            <div class="flex-grow-1 text-lg-center">
                Xuất Xứ : <%=origin%>
            </div>
            <div class="flex-grow-1 text-lg-center">
                Thương Hiệu : <%=brand%>
            </div>
        </div>

        <div
                class="item_sellPrice pb-2 pt-3 ps-3 ps-md-0 ps-lg-3 text-red_1 fw-bold d-flex align-items-end justify-content-around justify-content-md-between justify-content-lg-start lh-1 border-bottom"
        >
            <p
                    class="me-5 ms-5 ms-lg-0 ps-md-4"
                    style="font-size: 3.8rem"
            >
                -<%=disc_extra%>%
            </p>
            <div class="text-start">
                        <span
                                class="fs-4 text-decoration-line-through fw-light text-secondary ms-1"
                        >
                             <fmt:formatNumber value="<%=price%>" type="currency"/>
                          </span
                          >
                <p class="media-fontsize-lg lh-1">
                    <fmt:formatNumber value="<%=price_disc%>" type="currency"/>

                </p>
            </div>
        </div>

        <div
                class="d-flex pt-4 pb-4 ps-3 ps-md-0 justify-content-center justify-content-lg-start"
        >
            <div
                    class="item-btn--goldenBackground text-center me-4 item-btn--width"
            >
                <div
                        class="item-btn--textFeild"
                        style="padding: 0.2rem 1rem"
                >
                    <a
                            href="#"
                            class="media-fontsize-sm btn btn-light_1"
                            role="button"
                            data-bs-toggle="button"
                    ><i class="fa-solid fa-paper-plane me-3"> </i>Xem
                        nhanh</a
                    >
                </div>
            </div>
            <div
                    class="item-btn--goldenBackground text-center item-btn--width"
            >
                <div
                        class="item-btn--textFeild"
                        style="padding: 0.2rem 1rem"
                >
                    <a
                            href="<%= request.getContextPath()%>/detail-product?id=<%=id%>"
                            class="media-fontsize-sm btn btn-light_1"
                            role="button"
                            data-bs-toggle="button"
                    >
                        <b
                        >Xem chi tiết<i
                                class="fa-solid fa-angles-right ms-2"
                        ></i></b
                        ></a>
                </div>
            </div>
        </div>
    </div>
</div>
