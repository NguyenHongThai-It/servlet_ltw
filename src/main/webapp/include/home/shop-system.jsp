<%@ page import="java.util.List" %>
<%@ page import="Entities.SystemProduct" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/15/2022
  Time: 7:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="shop-system" class="shop-system">
    <div class="content bg-white">
        <div class="row mt-5 border-bottom text-start">
            <div class="col-11 col-md-9 col-lg-8 col-xl-5">
                <div
                        class="item-label--goldenBackground item-label--clipPathE p-1 mt-4 m-auto"
                >
                    <div
                            class="item-label--goldTextFeild item-label--clipPathE label-Advertise"
                            style="padding: 0.7rem"
                    >
                        <span
                                class="fs-2 label-Advertise fw-bold ms-md-5 ms-xxl-4"
                        >Hệ thống cửa hàng Nhân Sâm Hàn Quốc KGIN</span
                        >
                    </div>
                </div>
            </div>
        </div>

        <div class="row ps-3 pe-3 mt-lg-5">
            <%
                List<SystemProduct> listSystemProduct = request.getAttribute("listSP") != null ? (List<SystemProduct>) request.getAttribute("listSP") : new ArrayList<SystemProduct>();
                for (SystemProduct sp : listSystemProduct) {


            %>
            <div class="col-6 col-lg-3 p-3">
                <div class="border pb-3">
                    <div
                            class="shop-system__img mt-3 transform-scale-bigImg m-auto"
                    >
                        <a href="<%=request.getContextPath()%>/about"
                        ><img src="./asset/img/home/51-vts.jpg" alt=""
                        /></a>
                    </div>
                    <h3 class="shop-system__title fw-bold mt-4">
                        <%=sp.getName()%>
                    </h3>
                    <p class="shop-system__desc mt-3 limit-line-text">
                        <i
                                class="text-golden fa-sharp fa-solid fa-location-dot"
                        ></i>
                        <span class="">
                            <%=sp.getLocation()%>

                        </span
                        >
                    </p>
                    <p class="shop-system__desc mt-2">
                        <i class="text-golden fa-solid fa-phone"></i>
                        <span
                        >Hotline:
                          <a class="text-black fw-bold" href="tel:<%=sp.getHotline()%>">
                                <%=sp.getHotline()%>
</a
></span
                        >
                    </p>
                    <p
                            class="shop-system__desc mt-2"
                            style="-webkit-line-clamp: 1"
                    >
                        <i class="text-golden fa-regular fa-message"></i>
                        <span
                        >Zalo, Sms:
                          <a class="text-black fw-bold" href="tel:08081508"
                          ><%=sp.getZalo()%></a
                          ></span
                        >
                    </p>
                    <div class="mt-3 shop-system__btn rounded-pill ms-5 me-5">
                        <a
                                href="./album.html"
                                class="shop-system__title mt-2 mb-2 fs-4 fw-bold"
                        >
                            <i class="me-3 fa-sharp fa-solid fa-location-dot"></i>
                            Xem bản đồ Google
                        </a>
                    </div>
                </div>
            </div>

            <%}%>


        </div>
    </div>
</section>

