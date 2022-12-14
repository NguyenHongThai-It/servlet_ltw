<%@ page import="Entities.Nav" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entities.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Nav> list = request.getAttribute("listNavs") != null ? (List<Nav>) request.getAttribute("listNavs") : new ArrayList<Nav>();
    User user = session.getAttribute("user") != null ? (User) session.getAttribute("user") : new User();
    int totalCart = request.getAttribute("totalCart") != null ? (int) request.getAttribute("totalCart") : 0;
%>

<section class="container header" id="header">
    <div
            class="header-wrap d-flex align-items-md-start align-items-center justify-content-md-between justify-content-center flex-column flex-lg-row"
    >
        <div class="header-left">
            <a href="<%= request.getContextPath()%>/home" class="header-left__link">
                <img
                        src="./asset/img/home/logo.jpg"
                        alt=""
                        class="h-100 w-100 header-left__img"
                />
            </a>
        </div>
        <div
                class="header-right d-flex flex-md-column align-items-center align-items-md-stretch mt-md-3 mt-0"
        >
            <div class="header-right-top">
                <ul class="header-right-list d-none d-md-flex gap-sm-1 p-0">
                    <% for (int i = 0; i < list.size(); i++) { %>

                    <li class="header-right__item">
                        <a href="<%= request.getContextPath()%><%=list.get(i).getSlug()%>"
                           class="header-right__link fw-normal">
                            <%=list.get(i).getName()%>
                        </a>
                    </li>


                    <% }
                    %>
                    <%
                        if (user.getUserId() == null) {

                    %>
                    <li class="header-right__item">
                        <a href="<%= request.getContextPath()%>/login" class="header-right__link fw-normal">
                            ????ng nh???p
                        </a>
                    </li>
                    <li class="header-right__item">
                        <a
                                href="<%= request.getContextPath()%>/register"
                                class="header-right__link fw-normal"
                        >
                            ????ng k??
                        </a>
                    </li>
                    <%} %>


                    <%
                        if (user.getUserId() != null) {


                    %>
                    <li class="header-right__item login--true login--user">
                        <a href="#" class="header-right__link fw-normal">
                            <div
                                    class="d-inline-flex justify-content-center align-items-center position-absolute border bg-leather_1 rounded-circle"
                                    style="height: 2.4rem; width: 2.4rem;">
                                <!-- Avatar -->
                                <i class="fa-regular fa-user fs-4 fw-lighter"></i>
                            </div>
                            <span style="text-indent: 50px;">
                      &MediumSpace; &MediumSpace; &MediumSpace; &MediumSpace; &MediumSpace;
                      <%=user.getName()%></span>
                        </a>

                        <div class="bg-white login--overlay">
                            <div>
                                <a href="<%=request.getContextPath()%>/profile">
                                    <div class="login-section-1 login--section pointer">
                                        T??i kho???n c???a t??i
                                    </div>
                                </a>
                                <a href="<%=request.getContextPath()%>/cart">
                                    <div class="d-flex align-items-center gap-2 login-section-1 login--section pointer">
                                        Gi??? h??ng

                                        <div class="d-flex align-items-center justify-content-center bg-red_2 rounded-circle px-2 py-2 text-white"
                                             style="width:20px; height: 20px"><%=totalCart%>
                                        </div>
                                    </div>
                                </a>
                                <a href="<%=request.getContextPath()%>/thank-you">
                                    <div class="login-section-1 login--section pointer">
                                        ????n h??ng ???? ?????t
                                    </div>
                                </a>
                                <%
                                    if (user.getRole() >= 1) {
                                %>
                                <a href="<%=request.getContextPath()%>/dashboard-user">
                                    <div class="login-section-1 login--section pointer">
                                        Trang qu???n tr???
                                    </div>
                                </a>
                                <%}%>
                                <form action="<%=request.getContextPath()%>/logout " method="post">
                                    <input type="hidden" name="action" value="logout">
                                    <button type="submit"
                                            class="border-0 w-100 login-section-1 login--section pointer text-start ">
                                        ????ng Xu???t
                                    </button>
                                </form>

                            </div>
                        </div>
                    </li>
                    <% }%>
                </ul>
            </div>
            <form action="<%=request.getContextPath()%>/search" method="get"
                  class="header-right-center d-flex mb-2 mb-md-0">
                <input
                        type="text"
                        name="name"
                        class="header-right__search w-100"
                        placeholder="Nh???p t??n s???n ph???m c???n t??m ..."
                />
                <input type="hidden" name="action" value="search"/>
                <span class="d-flex">
                    <button class="header-right__btn">T??m ki???m</button>
                </span>
            </form>
            <div class="header-right__bottom d-none d-md-flex">
                G???i ?? t??? kh??a: Cao h???ng s??m, S??m t???m m???t ong, Tr?? linh chi,...
            </div>
            <div class="header-right__shortcut d-flex align-items-center">
                <%
                    if (user.getUserId() == null) {
                %>
                <a href="<%=request.getContextPath()%>/login"
                   class="header-right__user d-md-none d-inline-block pointer ms-3 login--false">
                    <div class="header-right__profile">
                        <i class="fa-sharp fa-solid fa-user-plus fs-1 text-red_bold"></i>
                    </div>
                </a>
                <%}%>
                <%
                    if (user.getUserId() != null) {


                %>
                <a href="<%=request.getContextPath()%>/profile"
                   class="header-right__user d-md-none d-inline-block pointer ms-3 login--true">
                    <div class="header-right__login rounded-circle">
                        <!-- User's Avatar Here -->
                        <img src="<%=user.getAvatar() %>"
                             alt="">
                    </div>
                </a>
                <%}%>
                <a href="<%=request.getContextPath()%>/cart"
                   class="header-right__user d-md-none d-inline-block pointer ms-3">
                    <div class="header-right__cart">
                        <i class="fa-solid fa-cart-shopping fs-1 text-red_bold"></i>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<%--<%--%>
<%--    if (user.getUserId() != null) {--%>


<%--%>--%>
<%--<form action="<%=request.getContextPath()%>/logout " method="post">--%>

<%--    <li class="header-right__item">--%>
<%--        <input type="hidden" name="action" value="logout">--%>

<%--        <a href="<%= request.getContextPath()%>/home" class="header-right__link fw-normal">--%>
<%--            <button type="submit">--%>
<%--                ????ng xu???t--%>
<%--            </button>--%>
<%--        </a>--%>
<%--    </li>--%>

<%--</form>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>
