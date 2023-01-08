<%@ page import="Entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>User form</title>

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <!-- BOOTSTRAP -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="./asset//scss//css//dashboard-user.css"/>
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
            <a class="navbar-brand py-lg-2 mb-lg-5 px-lg-6 me-0" href="<%=request.getContextPath()%>/home">
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
                            <h1 class="h2 mb-0 ls-tight">User Form</h1>
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
                    <!-- Edit Form -->
                    <% User userEdit = request.getAttribute("userEdit") != null ? (User) request.getAttribute("userEdit") : null;%>
                    <form action="<%=request.getContextPath()%>/user-form" method="post"
                          class="edit-form position-absolute">
                        <div class="container bg-white rounded-3 py-2" style=" margin-top: 5rem;">
                            <!-- Product Overview -->
                            <h3 class="fw-bold text-primary py-3 border-bottom-2">Profile</h3>
                            <p style="color: limegreen"><%=request.getAttribute("success") != null ? request.getAttribute("success").toString() : ""%>

                            <p style="color: red"><%=request.getAttribute("error") != null ? request.getAttribute("error").toString() : ""%>
                            <div class="row row-cols-auto bg-white pb-5">
                                <div class="col-6">
                                    <p class="edit-form__desc">Họ</p>
                                    <% if (userEdit == null) {%>
                                    <input type="text" name="surname" id="surname" placeholder="Họ"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (userEdit != null) {%>
                                    <input type="text" name="surname" id="surname" placeholder="Họ"
                                           class="edit-form__input filter--rounded" value="<%=userEdit.getSurname()%>">
                                    <% }%>
                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Tên</p>

                                    <% if (userEdit == null) {%>
                                    <input type="text" name="name" id="name" placeholder="Tên"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (userEdit != null) {%>
                                    <input type="text" name="name" id="name" placeholder="Tên"
                                           class="edit-form__input filter--rounded" value="<%=userEdit.getName()%>">
                                    <% }%>

                                </div>
                                <%--                                <div class="col-6">--%>
                                <%--                                    <p class="edit-form__desc">ID</p>--%>
                                <%--                                    <% if (userEdit == null) {%>--%>
                                <%--                                    <input type="text" name="id" id="id" placeholder="id"--%>
                                <%--                                           class="edit-form__input filter--rounded">--%>
                                <%--                                    <% }%>--%>
                                <%--                                    <% if (userEdit != null) {%>--%>
                                <%--                                    <input type="text" name="id" id="id" placeholder="id"--%>
                                <%--                                           class="edit-form__input filter--rounded" value="<%=userEdit.getUserId()%>">--%>
                                <%--                                    <% }%>--%>

                                <%--                                </div>--%>

                                <div class="col-6">
                                    <p class="edit-form__desc">SDT</p>
                                    <% if (userEdit == null) {%>
                                    <input type="text" oninput="checkPhone()" name="phone" id="phone"
                                           placeholder="Số Điện Thoại" class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (userEdit != null) {%>
                                    <input type="text" oninput="checkPhone()" name="phone" id="phone"
                                           placeholder="Số Điện Thoại" class="edit-form__input filter--rounded"
                                           value="<%=userEdit.getPhone()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Email</p>
                                    <% if (userEdit == null) {%>
                                    <input type="text" name="email" id="email" placeholder="Địa Chỉ Email"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (userEdit != null) {%>
                                    <input type="text" name="email" id="email" placeholder="Địa Chỉ Email"
                                           class="edit-form__input filter--rounded" value="<%=userEdit.getEmail()%>">
                                    <% }%>

                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Mật Khẩu</p>

                                    <div class="d-flex align-items-center border-dark border pe-3 filter--rounded">
                                        <% if (userEdit == null) {%>
                                        <input type="password" name="password" id="password" placeholder="Mật Khẩu"
                                               class="edit-form__input border-0 filter--rounded"
                                               style="outline: none;">
                                        <a href="#" class="text-dark" id="password-toggle"><i
                                                class="fa-solid fa-eye"></i></a>
                                        <% }%>
                                        <% if (userEdit != null) {%>
                                        <input type="password" name="password" id="password" placeholder="Mật Khẩu"
                                               class="edit-form__input border-0 filter--rounded"
                                               style="outline: none;">
                                        <a href="#" class="text-dark" id="password-toggle"><i
                                                class="fa-solid fa-eye"></i></a>
                                        <% }%>

                                    </div>
                                </div>

                                <div class="col-6">
                                    <p class="edit-form__desc">Địa Chỉ</p>
                                    <% if (userEdit == null) {%>
                                    <input type="text" name="address" id="address" placeholder="Địa Chỉ"
                                           class="edit-form__input filter--rounded">
                                    <% }%>
                                    <% if (userEdit != null) {%>
                                    <input type="text" name="address" id="address" placeholder="Địa Chỉ"
                                           class="edit-form__input filter--rounded" value="<%=userEdit.getAddress()%>">
                                    <% }%>

                                </div>

                                <div class="col-3">
                                    <label class="edit-form__desc me-2 d-block">Quyền Hạn</label>
                                    <%
                                        if (userEdit != null) {%>
                                    <input type="radio" name="role" value="0"
                                           checked="<%=userEdit.getRole()==0?true:false%>"/> User
                                    <input type="radio" name="role" value="1"
                                           checked="<%=userEdit.getRole()==0?true:false%>"/> Mod
                                    <input type="radio" name="role" value="2"
                                           checked="<%=userEdit.getRole()==0?true:false%>"/> Admin

                                    <%} %>
                                    <% if (userEdit == null) {%>
                                    <input type="radio" name="role" value="0"
                                           checked/> User
                                    <input type="radio" name="role" value="1"
                                    /> Mod
                                    <input type="radio" name="role" value="2"
                                    /> Admin
                                    <% }%>
                                </div>
                                <div class="col-3 ">
                                    <label class="edit-form__desc me-2  d-block" for="status">Trạng thái</label>
                                    <% if (userEdit == null) {%>
                                    <input type="checkbox" name="status" id="status" value="1" class="me-2"
                                    /> Có

                                    <% }%>
                                    <% if (userEdit != null) {%>
                                    <input type="checkbox" name="status" id="status"
                                           value="<%=userEdit.getStatus()%>"    checked="<%=userEdit.getRole() >0%>" class="me-2">Có

                                    <% }%>

                                </div>

                                <div class="col-12 mt-5">
                                    <p class="edit-form__desc">Ảnh Đại Diện</p>
                                    <div class="py-2 border-bottom-2 d-flex align-items-center">
                                        <label for="avatar" name="avatar" class="btn btn-outline-dark px-2 py-1">Chọn
                                            Tệp
                                        </label>
                                        <% if (userEdit == null) {%>
                                        <input type="file" name="avatar" id="avatar" class="d-none">

                                        <% }%>
                                        <% if (userEdit != null) {%>
                                        <input type="file" name="avatar" id="avatar" class="d-none"
                                               value="<%=userEdit.getAvatar()%>"

                                        <% }%>

                                        <!-- Truyền Tên File Ảnh Được Chọn Vào Đây -->
                                    </div>
                                    <div class=" edit-avatar__img my-5 mx-auto">
                                        <% if (userEdit == null) {%>
                                        <img src="https://via.placeholder.com/150x150" alt="">

                                        <% }%>
                                        <% if (userEdit != null) {%>
                                        <img src="<%=userEdit.getAvatar()%>" alt="">
                                        <% }%>
                                    </div>
                                    <p>Tỷ lệ ảnh tối ưu: 1:1 (plugin cắt ảnh sẽ được cập nhật sau)</p>
                                </div>
                                <% if (userEdit == null) {%>
                                <input type="hidden" name="key" value="create">
                                <% }%>
                                <% if (userEdit != null) {%>
                                <input type="hidden" name="key" value="edit">
                                <input type="hidden" name="idCurrent" value="<%=userEdit.getUserId()%>">

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

<script>
    function checkPhone() {
        var x = document.getElementById('phone').value;
        if (isNaN(x)) {
            document.getElementById('phone').style.borderColor = "red";
            document.getElementById('phone').style.color = "red";
        } else {
            document.getElementById('phone').style.borderColor = "black";
            document.getElementById('phone').style.color = "black";
        }
    }

    const togglePassword = document.getElementById("password-toggle");
    if (togglePassword) {
        togglePassword.onclick = () => {
            const previousEl = togglePassword.previousElementSibling;
            if (previousEl.getAttribute("type") == "password")
                previousEl.setAttribute("type", "text");
            else previousEl.setAttribute("type", "password");
        }

    }
</script>
</body>

</html>