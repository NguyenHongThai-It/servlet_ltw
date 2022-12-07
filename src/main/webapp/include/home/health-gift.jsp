<%@ page import="Entities.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Product> listPro = request.getAttribute("listProductForOld") != null ? (List<Product>) request.getAttribute("listProductForOld") : new ArrayList<Product>();

%>
<section id="health-gift" class="health-gift">
    <div class="row mt-5 pt-3">
        <div class="col col-lg-3 col-md-0 mt-4 mt-5 col-12">
            <form action="<%=request.getContextPath()%>/product" method="get"

                  class="category bg-leather_1 border" style="">
                <div class="list-group text-start">
                    <div
                            class="border text-bg-gray_1 border-red_medium border-4 d-flex align-items-center"
                    >
                        <div
                                class="special-banner p-2 d-flex align-items-center justify-content-center"
                        >
                            <span><b class="fs-2">Lọc Sản Phẩm</b></span>
                        </div>
                    </div>

                    <a
                            class="category-item bg-leather_1 text-dark list-group-item list-group-item-action"
                    >
                        <b class="ms-3">Lọc Theo Giá</b>
                    </a>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="money"
                                id="less-1-MIL"
                                class="ms-4 me-3"
                                value="ASC"
                        />
                        <label for="less-1-MIL" class="w-100"
                        >&#60; Tăng dần</label
                        >
                    </div>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="money"
                                id="1-MIL-to-2.5-MIL"
                                class="ms-4 me-3"
                                value="DESC"

                        />
                        <label for="1-MIL-to-2.5-MIL" class="w-100"
                        >1 Triệu &#8722; giảm dần</label
                        >
                    </div>


                    <a
                            class="category-item bg-leather_1 text-dark list-group-item list-group-item-action"
                    >
                        <b class="ms-3">Lọc Theo Dạng Sản Phẩm</b>
                    </a>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="type"
                                id="dry-form"
                                class="ms-4 me-3"
                                value=1
                        />
                        <label for="dry-form" class="w-100">Dạng Khô</label>
                    </div>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="type"
                                id="extracts-form"
                                class="ms-4 me-3"
                                value=2
                        />
                        <label for="extracts-form" class="w-100"
                        >Dạng Cao</label
                        >
                    </div>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="type"
                                id="liquid-form"
                                class="ms-4 me-3"
                                value=3
                        />
                        <label for="liquid-form" class="w-100"
                        >Dạng Nước</label
                        >
                    </div>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="type"
                                id="tablet-form"
                                class="ms-4 me-3"
                                value=4

                        />
                        <label for="tablet-form" class="w-100"
                        >Dạng Viên</label
                        >
                    </div>
                    <div
                            class="border-bottom border-gray_4 category-item p-2 d-flex align-items-center"
                    >
                        <input
                                type="radio"
                                name="type"
                                id="powder-form"
                                class="ms-4 me-3"
                                value=5
                        />
                        <label for="powder-form" class="w-100"
                        >Dạng Bột</label
                        >
                    </div>
                    <button type="submit" class="category-btn border-0 bg-transparent">
                        <div class="category-btn--border m-auto mt-3">
                            <div class="category-btn--textField">Tìm Sản Phẩm</div>
                        </div>
                    </button>
                </div>

                <input
                        type="hidden"
                        name="cond"
                        value="filter"
                        class="ms-4 me-3"
                />
            </form>
        </div>

        <div class="col col-lg-9 col-md-12 col-12">
            <div class="row">
                <div class="col-md-8 col-xl-6 auto-width m-auto">
                    <div
                            class="item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto"
                    >
                        <div
                                class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                style="padding: 0.7rem"
                        >
                          <span class="fs-2 label-Advertise fw-bold"
                          >Quà Biếu Sức Khoẻ Cho Người Già</span
                          >
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-cols-number-auto">
                <%
                    for (Product p : listPro) {


                %>
                <div class="col-lg-4 col-md-6 col-12  auto-width">
                    <jsp:include page="../common/card.jsp">
                        <jsp:param name="id" value="<%=p.getId()%>"/>
                        <jsp:param name="name" value="<%=p.getName()%>"/>
                        <jsp:param name="price" value="<%=p.getPrice()%>"/>
                        <jsp:param name="price_disc" value="<%=p.getPriceDisc()%>"/>
                        <jsp:param name="disc_extra" value="<%=p.getDiscExtra()%>"/>
                        <jsp:param name="thumbnail" value="<%=p.getThumbnail()%>"/>
                    </jsp:include>
                </div>

                <%} %>


            </div>
        </div>
    </div>
</section>
