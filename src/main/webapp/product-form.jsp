<%@ page import="Entities.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Product form</title>

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <!-- BOOTSTRAP -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

    <!-- CUSTOM -->
    <script src="./asset/js/dashboard-product.js"></script>
    <link rel="stylesheet" href="./asset//scss//css//dashboard-product.css"/>
</head>


<body>


<!-- Dashboard -->
<div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
    <!-- Vertical Navbar -->
    <nav class="navbar show navbar-vertical h-lg-screen navbar-expand-lg px-0 py-3 navbar-light bg-white border-bottom border-bottom-lg-0 border-end-lg"
         id="navbarVertical">
        <div class="container-fluid">
            <!-- Toggler -->
            <button class="navbar-toggler ms-n2" type="button" data-bs-toggle="collapse"
                    data-bs-target="#sidebarCollapse" aria-controls="sidebarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Brand -->
            <a class="navbar-brand py-lg-2 mb-lg-5 px-lg-6 me-0"  href="<%=request.getContextPath()%>/home">
                <img src="https://preview.webpixels.io/web/img/logos/clever-primary.svg" alt="..."/>
            </a>
            <!-- User menu (mobile) -->
            <div class="navbar-user d-lg-none">
                <!-- Dropdown -->
                <div class="dropdown">
                    <!-- Toggle -->
                    <a href="#" id="sidebarAvatar" role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        <div class="avatar-parent-child">
                            <img alt="Image Placeholder"
                                 src="https://images.unsplash.com/photo-1548142813-c348350df52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80"
                                 class="avatar avatar- rounded-circle"/>
                            <span class="avatar-child avatar-badge bg-success"></span>
                        </div>
                    </a>
                    <!-- Menu -->
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="sidebarAvatar">
                        <a href="#" class="dropdown-item">Profile</a>
                        <a href="#" class="dropdown-item">Settings</a>
                        <a href="#" class="dropdown-item">Billing</a>
                        <hr class="dropdown-divider"/>
                        <a href="#" class="dropdown-item">Logout</a>
                    </div>
                </div>
            </div>
            <!-- Collapse -->
            <jsp:include page="include/dashboard/category-dashboard.jsp"></jsp:include>
        </div>
    </nav>
    <!-- Main content -->
    <div class="h-screen flex-grow-1 overflow-y-lg-auto">
        <!-- Header -->
        <header class="bg-surface-primary border-bottom pt-6">
            <div class="container-fluid">
                <div class="mb-npx">
                    <div class="row align-items-center">
                        <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                            <!-- Title -->
                            <h1 class="h2 mb-0 ls-tight">Product Form</h1>
                        </div>
                        <!-- Actions -->
                    </div>

                    <br>

                </div>
            </div>
        </header>
        <!-- Main -->
        <main class="py-6 bg-surface-secondary">
            <div class="container-fluid">
                <!-- Card stats -->
                <div class="row g-6 mb-6">
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <span class="h6 font-semibold text-muted text-sm d-block mb-2">Budget</span>
                                        <span class="h3 font-bold mb-0">$750.90</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                            <i class="bi bi-credit-card"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-up me-1"></i>13%
                                        </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">New
                                                projects</span>
                                        <span class="h3 font-bold mb-0">215</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                            <i class="bi bi-people"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-up me-1"></i>30%
                                        </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total
                                                hours</span>
                                        <span class="h3 font-bold mb-0">1.400</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                                            <i class="bi bi-clock-history"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-danger text-danger me-2">
                                            <i class="bi bi-arrow-down me-1"></i>-5%
                                        </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Work
                                                load</span>
                                        <span class="h3 font-bold mb-0">95%</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                                            <i class="bi bi-minecart-loaded"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-up me-1"></i>10%
                                        </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card shadow border-0 mb-7">
                    <% Product proEdit = request.getAttribute("productEdit") != null ? (Product) request.getAttribute("productEdit") : null;%>

                    <!-- Edit Form -->
                    <form action="<%=request.getContextPath()%>/product-form" method="post"
                          class="edit-form position-absolute">
                        <div class="container bg-white rounded-3 py-2" style="width: 75%; margin-top: 5rem;">
                            <!-- Product Overview -->
                            <h3 class="fw-bold text-primary py-3 border-bottom-2">Sản Phẩm</h3>
                            <p style="color: limegreen"><%=request.getAttribute("success") != null ? request.getAttribute("success").toString() : ""%>

                            <p style="color: red"><%=request.getAttribute("error") != null ? request.getAttribute("error").toString() : ""%>

                            <div class="row row-cols-auto bg-white pb-5">
<%--                                <div class="col-6">--%>
<%--                                    <p class="edit-form__desc">ID</p>--%>
<%--                                    <% if (proEdit == null) {%>--%>
<%--                                        <input type="text" name="id" id="id" placeholder="Product id"--%>
<%--                                           class="edit-form__input filter--rounded">--%>
<%--                                    <% }%>--%>
<%--                                    <% if (proEdit != null) {%>--%>
<%--                                    <input type="text" name="id" id="id" placeholder="Product id"--%>
<%--                                           class="edit-form__input filter--rounded" value="<%=proEdit.getId()%>">--%>
<%--                                    <% }%>--%>

<%--                                </div>--%>

                                <div class="col-6">
                                    <p class="edit-form__desc">Tên Sản Phẩm</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="name" id="name" placeholder="Product Name"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="name" id="name" placeholder="Product Name"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getName()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Hình Ảnh</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkImg()" name="img" id="img"
                                           placeholder="Product Image" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkImg()" name="img" id="img"
                                           placeholder="Product Image" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getThumbnail()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Tên Rút Gọn</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="slug" id="slug" placeholder="Product slug"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="slug" id="slug" placeholder="Product slug"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getSlug()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Xuất xứ</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="origin" id="origin" placeholder="Product Origin"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="origin" id="origin" placeholder="Product Origin"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getOrigin()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Thương Hiệu</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="brand" id="brand" placeholder="Product Brand"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="brand" id="brand" placeholder="Product Brand"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getBrand()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Mô Tả</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="description" id="description"
                                           placeholder="Product description" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="description" id="description"
                                           placeholder="Product description" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getDesc()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Chi Tiết Sản Phẩm</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="content_detail_product" id="content_detail_product"
                                           placeholder="Product Content Detal Product"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="content_detail_product" id="content_detail_product"
                                           placeholder="Product Content Detal Product"
                                           class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getContentDetailProduct()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Loại</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkType()" name="type" id="type"
                                           placeholder="Product Type" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkType()" name="type" id="type"
                                           placeholder="Product Type" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getTypes()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Thông Số kĩ Thuật</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="specification" id="specification"
                                           placeholder="Product Specification"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="specification" id="specification"
                                           placeholder="Product Specification"
                                           class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getSpecification()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Số lượng đã bán</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkAmountSold()" name="amount_sold"
                                           id="amount_sold" placeholder="Product Amount Sold"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkAmountSold()" name="amount_sold"
                                           id="amount_sold" placeholder="Product Amount Sold"
                                           class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getAmountSold()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">số lượng còn lại</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkAmountRest()" name="amount_rest"
                                           id="amount_rest" placeholder="Product Amount Rest"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkAmountRest()" name="amount_rest"
                                           id="amount_rest" placeholder="Product Amount Rest"
                                           class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getAmount()%>">
                                    <% }%>


                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Đánh Giá</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkRate()" name="rate" id="rate"
                                           placeholder="Product rate" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkRate()" name="rate" id="rate"
                                           placeholder="Product rate" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getRate()%>">

                                    <% }%>

                                </div>
                            </div>


                            <!-- Product Price -->
                            <h3 class="fw-bold text-primary py-3 border-bottom-2">Giá</h3>
                            <div class="row row-cols-auto bg-white pb-5">
                                <div class="col-6">

                                    <p class="edit-form__desc">Giá bán</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkPrice()" name="price" id="price"
                                           placeholder="Product Price" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkPrice()" name="price" id="price"
                                           placeholder="Product Price" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getPrice()%>">

                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Giá đã giảm</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkPriceDisc()" name="price_disc" id="price_disc"
                                           placeholder="Product Price Discount"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkPriceDisc()" name="price_disc" id="price_disc"
                                           placeholder="Product Price Discount"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getPriceDisc()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Mã Giảm giá</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="code_disc" id="code_disc"
                                           placeholder="Product Code Discount"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="code_disc" id="code_disc"
                                           placeholder="Product Code Discount"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getCodeDisc()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Phần Trăm giảm giá</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="dis_extra" id="dis_extra"
                                           placeholder="Product Discount Extra"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="dis_extra" id="dis_extra"
                                           placeholder="Product Discount Extra"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getDiscExtra()%>">
                                    <% }%>

                                </div>
                            </div>


                            <!-- Nhóm Cái Này Lại Dùm T, T Ko Biết Cho Nó Vào Nhóm J nx -->
                            <h3 class="fw-bold text-primary py-3 border-bottom-2">Thể loại</h3>
                            <div class="row row-cols-auto bg-white pb-4">
                                <div class="col-6">
                                    <p class="edit-form__desc">Nổi bật</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="outstanding" id="outstanding"
                                           placeholder="Product Outstanding" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="outstanding" id="outstanding"
                                           placeholder="Product Outstanding" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getOutstanding()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Bán chạy</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" oninput="checkBestSell()" name="best_sell" id="best_sell"
                                           placeholder="Product Best Sell" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkBestSell()" name="best_sell" id="best_sell"
                                           placeholder="Product Best Sell" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getBestSell()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Cho người lớn tuổi</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" name="forOld" id="forOld" placeholder="Product forOld"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" name="forOld" id="forOld" placeholder="Product forOld"
                                           class="edit-form__input filter--rounded" value="<%=proEdit.getForOld()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Dạng sản phẩm (bột,viên...)</p>
                                    <% if (proEdit == null) {%>
                                    <input type="text" onchange="checkForm()" name="form" id="form"
                                           placeholder="Product Form" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (proEdit != null) {%>
                                    <input type="text" oninput="checkForm()" name="form" id="form"
                                           placeholder="Product Form" class="edit-form__input filter--rounded"
                                           value="<%=proEdit.getForm()%>">
                                    <% }%>

                                </div>
                                <% if (proEdit == null) {%>
                                <input type="hidden" name="key" value="create">
                                <% }%>
                                <% if (proEdit != null) {%>
                                <input type="hidden" name="key" value="edit">
                                <input type="hidden" name="idCurrent" value="<%=proEdit.getId()%>">

                                <% }%>
                                <div class="col-12 d-flex justify-content-end align-items-end mt-5 pt-5 border-top">
                                    <button type="submit" class="btn btn-outline-primary py-2">Apply</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</div>
</body>
<script src="asset/js/dashboard-product.js">

</script>

</html>