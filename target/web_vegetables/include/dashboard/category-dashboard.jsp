<%@ page import="java.util.List" %>
<%@ page import="Entities.User" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/4/2022
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<User> lu = request.getAttribute("listUserHighLevel") != null ? (List<User>) request.getAttribute("listUserHighLevel") : new ArrayList<User>();
%>
<!-- Collapse -->
<div class="collapse navbar-collapse" id="sidebarCollapse">
    <!-- Navigation -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/dashboard-product">
                <i class="bi bi-house"></i> Product
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/dashboard-user">
                <i class="bi bi-people"></i> Users
            </a>
        </li>
    </ul>
    <!-- Divider -->
    <hr class="navbar-divider my-5 opacity-20"/>
    <!-- Navigation -->
    <ul class="navbar-nav mb-md-4">
        <li>
            <div class="nav-link text-xs font-semibold text-uppercase text-muted ls-wide" href="#">
                Online
                <span
                        class="badge bg-soft-primary text-primary rounded-pill d-inline-flex align-items-center ms-4"><%=lu.size()%></span>
            </div>
        </li>

        <%
            for (User u : lu) {


        %>
        <li>
            <a href="#" class="nav-link d-flex align-items-center">
                <div class="me-4">
                    <div class="position-relative d-inline-block text-white overflow-hidden">
                        <img alt="Image Placeholder"
                             src="<%=u.getAvatar()%>"
                             class="avatar rounded-circle"/>
                        <span
                                class="position-absolute bottom-2 end-2 transform translate-x-1/2 translate-y-1/2 border-2 border-solid border-current w-3 h-3 bg-success rounded-circle"></span>
                    </div>
                </div>
                <div>
                                    <span class="d-block text-sm font-semibold">
                                    <%=u.getName()%>
                                    </span>
                    <%
                        if (u.getRole() == 1) {


                    %>
                    <span class="d-block text-xs text-muted font-regular">
                                        Moderator
                                    </span>
                    <% }%>

                    <%
                        if (u.getRole() == 2) {
                    %>
                    <span class="d-block text-xs text-muted font-regular">
                                        Admin
                                    </span>
                    <% }%>
                </div>


                <div class="ms-auto"><i class="bi bi-chat"></i></div>
            </a>
        </li>
        <% }%>
    </ul>
    <!-- Push content down -->
    <div class="mt-auto"></div>
    <!-- User (md) -->
    <form class="navbar-nav" action="<%=request.getContextPath()%>/logout" method="post">
        <button class="nav-item bg-white">
            <span class="nav-link">
                <i class="bi bi-box-arrow-left"></i> Logout
            </span>
        </button>
    </form>
</div>
