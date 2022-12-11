<%@ page import="Entities.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Tìm kiếm sản phẩm</title>
    <!-- Icon -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
            integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- BOOTSTRAP -->

    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
    ></script>
    <!-- FONT - roboto-->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Roboto:wght@300;400;700&display=swap"
            rel="stylesheet"
    />

    <link rel="stylesheet" href="./asset/scss/custom.css"/>
    <link rel="stylesheet" href="./asset/scss/base/common.css"/>

    <link rel="stylesheet" href="./asset/scss/css/contact.css"/>

    <link
            rel="stylesheet"
            href="./asset/scss/responsive/_contact-responsive.css"
    />
</head>

<body>
<%
    List<Product> listPro = request.getAttribute("listProduct") != null ? (List<Product>) request.getAttribute("listProduct") : new ArrayList<Product>();

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
            <div class="d-flex row">
                <jsp:include page="include/common/categories.jsp"></jsp:include>
                <div class="wrap-right col-md-9 col-12 mt-4">
                    <div id="best-seller" class="text-center">
                        <div
                                class="item-label--goldenBackground item-label--clipPath p-1"
                                style="width: 27rem"
                        >
                            <div
                                    class="item-label--redTextFeild item-label--clipPath label-Advertise"
                                    style="padding: 0.7rem"
                            >
                    <span class="fs-2 label-Advertise fw-bold"
                    >Kết quả search</span
                    >
                            </div>
                        </div>

                        <!-- Sản phẩm bán chạy -->
                        <div class="row row-cols-number-auto">
                            <%
                                for (Product p : listPro) {
                            %>
                            <div class="col-lg-4 col-md-6 col-12  auto-width">
                                <jsp:include page="include/common/card.jsp">
                                    <jsp:param name="id" value="<%=p.getId()%>"/>
                                    <jsp:param name="name" value="<%=p.getName()%>"/>
                                    <jsp:param name="thumbnail" value="<%=p.getThumbnail()%>"/>
                                    <jsp:param name="disc_extra" value="<%=p.getDiscExtra()%>"/>
                                    <jsp:param name="price" value="<%=p.getPrice()%>"/>
                                    <jsp:param name="price_disc" value="<%=p.getPriceDisc()%>"/>
                                </jsp:include>

                            </div>
                            <%}%>

                        </div>
                    </div>
                    <!-- Pagination -->
                    <jsp:include page="include/common/pagination.jsp"></jsp:include>
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
