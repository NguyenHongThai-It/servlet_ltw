<%@ page import="Entities.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/3/2022
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dashboard user</title>

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
<!-- Edit Form -->
<%
    List<User> lu = request.getAttribute("listUser") != null ? (List<User>) request.getAttribute("listUser") : new ArrayList<User>();
    User userCurrent = session.getAttribute("user") != null ? (User) session.getAttribute("user") : new User();
    List<User> lu1 = request.getAttribute("userWithRole0") != null ? (List<User>) request.getAttribute("userWithRole0") : new ArrayList<User>();
    List<User> lu2 = request.getAttribute("userWithRole1") != null ? (List<User>) request.getAttribute("userWithRole1") : new ArrayList<User>();
    List<User> lu3 = request.getAttribute("userWithRole2") != null ? (List<User>) request.getAttribute("userWithRole2") : new ArrayList<User>();
    List<User> lu4 = request.getAttribute("userListActive") != null ? (List<User>) request.getAttribute("userListActive") : new ArrayList<User>();
    int total = (request.getAttribute("countProduct") != null && (int) request.getAttribute("countProduct") != 0) ? (int) request.getAttribute("countProduct") : 1;
    double percentOne = Math.ceil((lu1.size() * 100 / total));
    double percentTwo = Math.ceil((lu2.size() * 100 / total));
    double percentThree = Math.ceil((lu3.size() * 100 / total));
    double percentFour = Math.ceil((lu4.size() * 100 / total));

%>
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
                            <h1 class="h2 mb-0 ls-tight">User</h1>
                        </div>
                        <!-- Actions -->
                        <% if (userCurrent.getRole() >= 2) {%>
                        <div class="col-sm-6 col-12 text-sm-end">
                            <div class="mx-n1">
                                <a href="<%=request.getContextPath()%>/user-form" class="btn btn-primary"
                                   data-bs-target="#exampleModal"
                                   class="btn d-inline-flex btn-sm btn-primary mx-1">
                                    <span class="pe-2"> <i class="bi bi-plus"></i> </span>
                                    <span>Create</span>
                                </a>
                            </div>
                        </div>

                        <% }%>
                    </div>
                    <p style="color: limegreen"><%=request.getAttribute("success") != null ? request.getAttribute("success").toString() : ""%>

                        <!-- Nav -->
                    <ul class="nav nav-tabs mt-4 overflow-x border-0">
                        <li class="nav-item">
                            <a href="#" class="nav-link active">All files</a>
                        </li>

                    </ul>
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
                                        <span class="h6 font-semibold text-muted text-sm d-block mb-2">T???ng user</span>
                                        <span class="h3 font-bold mb-0">${userWithRole0.size()}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                            <i class="bi bi-credit-card"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-up me-1"></i><%=percentOne%>%
                                        </span>
                                    <%--                                    <span class="text-nowrap text-xs text-muted">Since last month</span>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">T???ng mod
                                                </span>
                                        <span class="h3 font-bold mb-0">${userWithRole1.size()}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                            <i class="bi bi-people"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-up me-1"></i><%=percentTwo%>%
                                        </span>
                                    <%--                                    <span class="text-nowrap text-xs text-muted">Since last month</span>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">T???ng
                                                Admin</span>
                                        <span class="h3 font-bold mb-0">${userWithRole2.size()}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                                            <i class="bi bi-clock-history"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                              <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-down me-1"></i><%=percentThree%>%
                                        </span>

                                    <%--                                    <span class="text-nowrap text-xs text-muted">Since last month</span>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">
                                                T???ng ng?????i ho???t ?????ng</span>
                                        <span class="h3 font-bold mb-0">${userListActive.size()}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                                            <i class="bi bi-minecart-loaded"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-2 mb-0 text-sm">
                                        <span class="badge badge-pill bg-soft-success text-success me-2">
                                            <i class="bi bi-arrow-up me-1"></i><%=percentFour%>%
                                        </span>
                                    <span class="text-nowrap text-xs text-muted">Since last month</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card shadow border-0 mb-7">
                    <div class="card-header d-md-flex justify-content-between">
                        <h4 class="mb-0">Users</h4>


                        <form action="<%=request.getContextPath()%>/dashboard-user" method="get"
                              class="d-flex flex-column flex-md-row gap-3">
                            <div class="filter__item">
                                <input type="text" placeholder="T??m ki???m theo t??n" name="name" style="width: 100%;"
                                       class="filter--rounded border border-dark px-3 py-1 mt-3 mt-md-auto my-md-auto">
                            </div>
                            <div class="filter__item">
                                <input type="text" placeholder="T??m ki???m theo id" name="id" style="width: 100%;"
                                       class="filter--rounded border border-dark px-3 py-1 mt-3 mt-md-auto my-md-auto">
                            </div>

                            <ul class="navbar-nav filter__item">
                                <select name="sort" class="filter--rounded nav-item dropdown border border-dark px-3"
                                        style="padding: 5px;">
                                    <ul class="dropdown-menu">
                                        <option value=""> S???p x???p theo role</option>
                                        <option value="asc"> T??ng d???n</option>
                                        <option value="desc"> Gi???m d???n</option>

                                    </ul>
                                </select>
                            </ul>

                            <button type="submit"
                                    class="filter__item btn btn-outline-primary px-3 py-1">L???c
                            </button>

                        </form>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-nowrap">
                            <thead class="thead-light">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Sdt</th>
                                <th scope="col">Role</th>
                                <th scope="col" class="text-end me-5">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%

                                for (User u : lu) {


                            %>
                            <tr>
                                <td>
                                    <img alt="..."
                                         src="<%=u.getAvatar()%>"
                                         class="avatar avatar-sm rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        <%=u.getUserId()%>
                                    </a>
                                </td>
                                <td><%=u.getName()%>
                                </td>
                                <td>
                                    <img alt="..."
                                         src="https://preview.webpixels.io/web/img/other/logos/logo-1.png"
                                         class="avatar avatar-xs rounded-circle me-2"/>
                                    <a class="text-heading font-semibold" href="#">
                                        <%=u.getEmail()%>
                                    </a>
                                </td>
                                <td><%=u.getPhone()%>
                                </td>
                                <td>
                                    <%
                                        if (u.getRole() == 0) {


                                    %>
                                    <span class="badge badge-lg badge-dot">
                                                <i class="bg-success"></i>User
                                            </span>
                                    <%}%>
                                    <%
                                        if (u.getRole() == 1) {


                                    %>
                                    <span class="badge badge-lg badge-dot">
                                                <i class="bg-success"></i>Moderator
                                            </span>
                                    <%}%>
                                    <%
                                        if (u.getRole() >= 2) {


                                    %>
                                    <span class="badge badge-lg badge-dot">
                                                <i class="bg-success"></i>Admin
                                            </span>
                                    <%}%>
                                </td>
                                <td class="text-end d-flex align-items-center gap-3 justify-content-end">

                                    <%
                                        if (userCurrent.getRole() >= 2) {


                                    %>
                                    <a href="<%=request.getContextPath()%>/user-form?id=<%=u.getUserId()%>"
                                       class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
                                        <span class="pe-2"> <i class="bi bi-pencil"></i> </span>
                                        <span>Edit</span>
                                    </a>
                                    <%}%>

                                    <a href="#" class="btn btn-sm btn-neutral">View</a>

                                    <%
                                        if (userCurrent.getRole() >= 2) {


                                    %>
                                    <form action="<%=request.getContextPath()%>/dashboard-user" method="post">
                                        <button type="submit"
                                                class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                            <i class="bi bi-trash"></i>
                                            <input type="hidden" name="key" value="remove">
                                            <input type="hidden" name="id" value="<%=u.getUserId()%>">

                                        </button>
                                    </form>

                                    <%}%>

                                </td>
                            </tr>
                            <% }%>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer border-0 py-5">
                        <span class="text-muted text-sm">Hi???n <%=lu.size()%> ng?????i d??ng trong ${countProduct} k???t qu??? ???????c t??m th???y</span>
                    </div>
                    <jsp:include page="include/common/pagination.jsp"></jsp:include>
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
</script>
</body>

</html>
