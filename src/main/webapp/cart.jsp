<%@ page import="Entities.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 6:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <!-- Icon -->
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

    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>

    <link rel="stylesheet" href="./asset/scss/css/detail-page.css"/>
    <link rel="stylesheet" href="./asset/scss/css/cart.css"/>
    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_cart-responsive.css"
    />
</head>

<body>
<%
    List<Product> lp = request.getAttribute("listProduct") != null ? (List<Product>) request.getAttribute("listProduct") : new ArrayList<Product>();

%>
<div class="app">
    <!-- Header -->
    <jsp:include page="include/common/header.jsp"></jsp:include>
    <!-- Slider -->
    <jsp:include page="include/common/nav.jsp"></jsp:include>
    <!-- Contaienr -->
    <div
            class="main bg-leather pb-5"
            style="background-image: url(./asset/img/home/background_1.jpg)"
    >
        <!-- Beadcrumb -->
        <jsp:include page="include/common/breadcrumb.jsp"></jsp:include>
        <div class="container">
            <div class="full-page single-page cart-page">
                <div class="container-site news">
                    <%
                        if (lp.size() != 0) {


                    %>
                    <div class="row">
                        <div class="col-lg-12 main_cart__">
                            <section class="section-news">
                                <div class="box-news box_cart__">
                                    <h1 class="title p-3 fw-bold">Giỏ hàng</h1>
                                    <div class="cart-wrap">
                                        <div
                                                class="woocommerce-cart-form"
                                                action="https://kgin.com.vn/cart/"
                                                method="post"
                                        >
                                            <table
                                                    class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
                                                    cellspacing="0"
                                            >
                                                <tr>
                                                    <th class="product-name">Sản phẩm</th>
                                                    <th class="product-price">Đơn giá</th>
                                                    <th class="product-quantity">Số lượng</th>
                                                    <th class="product-subtotal">Thành tiền</th>
                                                    <th class="product-remove">Xoá</th>
                                                </tr>
                                                <%
                                                    for (Product pro : lp) {
                                                        int totalRow = request.getAttribute("total" + pro.getId()) != null ? (int) request.getAttribute("total" + pro.getId()) : 0;
                                                        int quantity = request.getAttribute("quantity" + pro.getId()) != null ? (int) request.getAttribute("quantity" + pro.getId()) : 0;
                                                %>
                                                <jsp:include page="include/cart/row.jsp">
                                                    <jsp:param name="id" value="<%=pro.getId()%>"/>
                                                    <jsp:param name="name" value="<%=pro.getName()%>"/>
                                                    <jsp:param name="desc" value="<%=pro.getDesc()%>"/>
                                                    <jsp:param name="spec" value="<%=pro.getSpecification()%>"/>
                                                    <jsp:param name="thumbnail" value="<%=pro.getThumbnail()%>"/>
                                                    <jsp:param name="price" value="<%=pro.getPriceDisc()%>"/>
                                                    <jsp:param name="total" value="<%=totalRow%>"/>
                                                    <jsp:param name="quantity" value="<%=quantity%>"/>

                                                </jsp:include>
                                                <%
                                                    }
                                                %>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="total-wrap d-lg-flex d-block">
                                        <div class="cart-content flex-grow-1">
                                            <p>
                                                <i class="fas fa-chevron-right"></i> Nếu bạn đồng ý
                                                mua danh sách sản phẩm trên thì vui lòng bấm nút
                                                “Hoàn Tất đơn hàng”
                                            </p>
                                            <p>
                                                <i class="fas fa-chevron-right"></i> Để tiếp tục mua
                                                thêm sản phẩm khác, bạn bấm nút “Tiếp tục mua”
                                            </p>
                                            <p>
                                                <i class="fas fa-chevron-right"></i> Để bỏ từng sản
                                                phẩm trong danh sách, bấm vào biểu tượng xóa phía
                                                bên trái hình sản phẩm
                                            </p>
                                            <p>
                                                <i class="fas fa-chevron-right"></i> Để thêm số
                                                lượng cho một sản phẩm cần mua, bạn chọn số lượng
                                            </p>
                                        </div>
                                        <div class="total-cart">
                                            <div class="number-total-cart d-flex p-0">
                                                <div class="tong-tien">Tổng tiền</div>
                                                <div class="total-number fw-bold fs-2">
                              <span class="woocommerce-Price-amount amount"
                              ><bdi
                              >
                                  <fmt:formatNumber value="${total}" type="currency"/>
                                  <span
                                          class="woocommerce-Price-currencySymbol"
                                  ></span
                                  ></bdi
                              ></span
                              >
                                                </div>
                                            </div>
                                            <div
                                                    class="call-to-action-cart d-lg-flex d-block p-0"
                                            >
                                                <div
                                                        class="item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto"
                                                >
                                                    <div
                                                            class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                                            style="padding: 1rem"
                                                    >
                                                        <a href="<%=request.getContextPath()%>/home"
                                                           class="fs-4 label-Advertise fw-bold text-orange_light"
                                                        >Tiếp tục mua sắm</a
                                                        >
                                                    </div>
                                                </div>
                                                <div
                                                        class="item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto"
                                                >
                                                    <div
                                                            class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                                            style="padding: 1rem"
                                                    >
                                                        <a
                                                                class="fs-4 label-Advertise fw-bold text-orange_light"
                                                                href="<%= request.getContextPath()%>/checkout"
                                                        >Hoàn tất đơn hàng</a
                                                        >
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                    <% }%>
                    <% if (lp.size() == 0) {
                    %>
                    <div class="d-flex flex-column align-items-center justify-content-center">
                        <div style="max-width: 30rem; ">
                            <img src="https://e-commerce-with-react-typescript.vercel.app/no_item.png" alt=""
                                 class="w-100 h-100">
                        </div>
                        <p class="fw-bold my-2 fs-4" style="color: rgba(0, 0, 0, 0.4);">Giỏ hàng của bạn đang trống.</p>
                        <a href="<%=request.getContextPath()%>/home"
                           class="text-white fw-bold px-4 py-3 fs-2 bg-red_2 rounded-2 mt-2">Quay
                            lại
                            mua hàng</a>

                    </div>
                    <% }%>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="include/common/footer.jsp"></jsp:include>
</div>
</body>

<script src="./asset/js/common.js"></script>
</html>
