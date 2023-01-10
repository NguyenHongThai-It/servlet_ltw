<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/15/2022
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>

<%
    String id = request.getParameter("id") != null ? request.getParameter("id").toString() : "";
    String name = request.getParameter("name") != null ? request.getParameter("name").toString() : "";
    String thumbnail = request.getParameter("thumbnail") != null ? request.getParameter("thumbnail") : "";
    String disc_extra = request.getParameter("disc_extra") != null ? request.getParameter("disc_extra") : "";
    String price = request.getParameter("price") != null ? request.getParameter("price") : "";
    String desc = request.getParameter("desc") != null ? request.getParameter("desc") : "";
    String price_disc = request.getParameter("price_disc") != null ? request.getParameter("price_disc") : "";

%>
<div class="card mt-4" style="background: var(--light_1)">
    <div
            class="item__img--hover d-flex align-items-center justify-content-center"
    >
        <img
                src="<%=thumbnail%>"
                class="img-ani card-img-top"
                alt="..."
                style="min-height: 31.3rem"
        />
    </div>
    <div class="card-body">
        <h5 class="item__tittle--hover card-title mb-4 fs-4">
            <b><%=name%>
            </b>
        </h5>
        <div class="card-text pt-2">
            <div
                    class="item_sellPrice ps-3 text-red_1 fw-bold d-flex align-items-end lh-1 justify-content-around"
            >
                <p class="me-3" style="font-size: 3.8rem">-<%=disc_extra%>%</p>
                <div class="text-start">
                            <span
                                    class="fs-4 text-decoration-line-through fw-light text-secondary ms-1"
                            >
                                                        <fmt:formatNumber value="<%=price%>" type="currency"/>

                              đ</span
                            >
                    <p class="media-fontsize-lg lh-1"><fmt:formatNumber
                            value="<%=Integer.parseInt(price) -(Integer.parseInt(price)*Integer.parseInt(disc_extra)/100)%>"
                            type="currency"/>

                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="card-body p-4 pt-3">
        <div class="row">
            <div class="col-6 col-md-6 col-lg-6">
                <div class="item-btn--goldenBackground">
                    <div
                            class="item-btn--textFeild"
                            style="padding: 0.2rem 1rem"
                            type="button"
                            class="btn btn-primary"
                            data-bs-toggle="modal"
                            data-bs-target="#exampleModal<%=id%>"
                    >
                              <span
                                      class="media-fontsize-sm btn btn-light_1 d-flex align-items-center justify-content-center"
                              ><i class="fa-solid fa-paper-plane me-3"> </i
                              >Xem nhanh</span
                              >
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-6 col-lg-6">
                <div class="item-btn--goldenBackground">
                    <a
                            href="<%= request.getContextPath()%>/detail-product?id=<%=id%>"
                            class="item-btn--textFeild w-100"
                            style="padding: 0.2rem 1rem"
                            type="button"
                            class="btn btn-primary"
                    >
                        <span

                                class="media-fontsize-sm btn btn-light_1 w-100"
                        >
                            <b
                            >Xem chi tiết<i
                                    class="fa-solid fa-angles-right ms-2"
                            ></i></b
                            ></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="modal.jsp">
    <jsp:param name="id" value="<%=id%>"/>
    <jsp:param name="name" value="<%=name%>"/>
    <jsp:param name="thumbnail" value="<%=thumbnail%>"/>
    <jsp:param name="desc" value="<%=desc%>"/>
    <jsp:param name="disc_extra" value="<%=disc_extra%>"/>
    <jsp:param name="price" value="<%=price%>"/>
    <jsp:param name="price_disc" value="<%=price_disc%>"/>
</jsp:include>