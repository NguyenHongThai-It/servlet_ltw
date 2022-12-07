<%@ page import="java.util.List" %>
<%@ page import="Entities.Menu" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entities.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Menu> lm = request.getAttribute("listMenu") != null ? (List<Menu>) request.getAttribute("listMenu") : new ArrayList<Menu>();
    List<Category> listCat1 = request.getAttribute("listCordyceps") != null ? (List<Category>) request.getAttribute("listCordyceps") : new ArrayList<Category>();
    List<Category> listCat2 = request.getAttribute("listGanoderma") != null ? (List<Category>) request.getAttribute("listGanoderma") : new ArrayList<Category>();
    List<Category> listCat3 = request.getAttribute("listHerbal") != null ? (List<Category>) request.getAttribute("listHerbal") : new ArrayList<Category>();
    List<Category> listCat4 = request.getAttribute("listRedGinseng") != null ? (List<Category>) request.getAttribute("listRedGinseng") : new ArrayList<Category>();
    List<Category> listCat5 = request.getAttribute("listCatSP") != null ? (List<Category>) request.getAttribute("listCatSP") : new ArrayList<Category>();
    List<Category> listCat6 = request.getAttribute("listCatNew") != null ? (List<Category>) request.getAttribute("listCatNew") : new ArrayList<Category>();

%>
<ul
        class="navigate-list align-items-center justify-content-center d-none d-lg-flex"
>
    <li class="navigate-list__item">
        <i class="fa-solid fa-bars"></i>
        Tất cả sản phẩm
        <ol class="navigate-sublist">
            <%
                for (int i = 0; i < lm.size(); i++) {


            %>
            <li class="navigate-sublist__item">
                <a href="<%=request.getContextPath()%>/product?type=<%=lm.get(i).getTypes()%>&cond=menu&parentId=<%=lm.get(i).getId()%>"
                   class="navigate-sublist__link">
                    <%=lm.get(i).getName()%>
                    <i class="fa-solid fa-caret-down"></i>
                </a>
                <ul class="navigate-sublist navigate-sublist--right">
                    <%
                        if (lm.get(i).getId().equalsIgnoreCase(listCat1.get(0).getParentId())) {
                            for (Category ca : listCat1) {


                    %>
                    <li class="navigate-sublist__item">
                        <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                           class="navigate-sublist__link">
                            <%=ca.getName()%>
                        </a>
                    </li>
                    <%
                            }
                        }
                    %>
                    <%
                        if (lm.get(i).getId().equalsIgnoreCase(listCat2.get(0).getParentId())) {
                            for (Category ca : listCat2) {


                    %>
                    <li class="navigate-sublist__item">
                        <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                           class="navigate-sublist__link">
                            <%=ca.getName()%>
                        </a>
                    </li>
                    <%
                            }
                        }
                    %>
                    <%
                        if (lm.get(i).getId().equalsIgnoreCase(listCat3.get(0).getParentId())) {
                            for (Category ca : listCat3) {


                    %>
                    <li class="navigate-sublist__item">
                        <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                           class="navigate-sublist__link">
                            <%=ca.getName()%>
                        </a>
                    </li>
                    <%
                            }
                        }
                    %>
                    <%
                        if (lm.get(i).getId().equalsIgnoreCase(listCat4.get(0).getParentId())) {
                            for (Category ca : listCat4) {


                    %>
                    <li class="navigate-sublist__item">
                        <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                           class="navigate-sublist__link">
                            <%=ca.getName()%>
                        </a>
                    </li>
                    <%
                            }
                        }
                    %>

<%--                    <%--%>
<%--                        if (lm.get(i).getId().equalsIgnoreCase(listCat5.get(0).getParentId())) {--%>
<%--                            for (Category ca : listCat5) {--%>


<%--                    %>--%>
<%--                    <li class="navigate-sublist__item">--%>
<%--                        <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"--%>
<%--                           class="navigate-sublist__link">--%>
<%--                            <%=ca.getName()%>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <%--%>
<%--                            }--%>
<%--                        }--%>
<%--                    %>--%>

                    <%
                        if (lm.get(i).getId().equalsIgnoreCase(listCat6.get(0).getParentId())) {
                            for (Category ca : listCat6) {


                    %>
                    <li class="navigate-sublist__item">
                        <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                           class="navigate-sublist__link">
                            <%=ca.getName()%>
                        </a>
                    </li>
                    <%
                            }
                        }
                    %>

                </ul>
            </li>
            <%}%>


        </ol>
    </li>
    <%--  first--%>
    <%
        for (int i = 0; i < lm.size(); i++) {


    %>
    <li class="navigate-list__item">
        <a href="<%=request.getContextPath()%>/product?type=<%=lm.get(i).getTypes()%>&cond=menu&parentId=<%=lm.get(i).getId()%>"
           class="navigate-list__link">
            <%=lm.get(i).getName()%>
            <i class="fa-solid fa-caret-down"></i>
        </a>
        <ol class="navigate-sublist navigate-sublist--simple">
            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat1.get(0).getParentId())) {
                    for (Category ca : listCat1) {


            %>
            <li class="navigate-sublist__item">
                <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                   class="navigate-sublist__link">
                    <%=ca.getName()%>
                </a>
            </li>
            <%
                    }
                }
            %>
            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat2.get(0).getParentId())) {
                    for (Category ca : listCat2) {


            %>
            <li class="navigate-sublist__item">
                <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                   class="navigate-sublist__link">
                    <%=ca.getName()%>
                </a>
            </li>
            <%
                    }
                }
            %>
            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat3.get(0).getParentId())) {
                    for (Category ca : listCat3) {


            %>
            <li class="navigate-sublist__item">
                <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                   class="navigate-sublist__link">
                    <%=ca.getName()%>
                </a>
            </li>
            <%
                    }
                }
            %>
            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat4.get(0).getParentId())) {
                    for (Category ca : listCat4) {


            %>
            <li class="navigate-sublist__item">
                <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                   class="navigate-sublist__link">
                    <%=ca.getName()%>
                </a>
            </li>
            <%
                    }
                }
            %>

<%--            <%--%>
<%--                if (lm.get(i).getId().equalsIgnoreCase(listCat5.get(0).getParentId())) {--%>
<%--                    for (Category ca : listCat5) {--%>


<%--            %>--%>
<%--            <li class="navigate-sublist__item">--%>
<%--                <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"--%>
<%--                   class="navigate-sublist__link">--%>
<%--                    <%=ca.getName()%>--%>
<%--                </a>--%>
<%--            </li>--%>
<%--            <%--%>
<%--                    }--%>
<%--                }--%>
<%--            %>--%>

            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat6.get(0).getParentId())) {
                    for (Category ca : listCat6) {


            %>
            <li class="navigate-sublist__item">
                <a href="<%=request.getContextPath()%>/product?type=<%=ca.getTypes()%>&cond=cat"
                   class="navigate-sublist__link">
                    <%=ca.getName()%>
                </a>
            </li>
            <%
                    }
                }
            %>

        </ol>
    </li>
    <%}%>


</ul>

<div class="d-block d-lg-none d-block p-0 position-relative">
    <div class="navigate-list__item" id="navigate-list-collapse">
        <i class="fa-solid fa-bars"></i>
        Tất cả sản phẩm
    </div>
    <ul
            class="navigate-list-mobile position-absolute scroll-custom"
            id="navigate-list-collapse__item"
    >
        <%
            for (int i = 0; i < lm.size(); i++) {
        %>
        <li
                class="navigate-list-mobile__item "
                data-bs-toggle="collapse"
                data-bs-target="#collapseExample<%=lm.get(i).getId()%>"
                aria-expanded="false"
                aria-controls="collapseExample<%=lm.get(i).getId()%>"
        >
            <img src="./asset/img/home/menu-1.png" alt="" class="w-auto"/>
            <a href="<%=request.getContextPath()%>/product?type=<%=lm.get(i).getTypes()%>&cond=menu&parentId=<%=lm.get(i).getId()%>"
               class="navigate-list-mobile__link"
            ><%=lm.get(i).getName()%>
            </a
            >
            <i
                    class="navigate-list-mobile__plus fa-solid fa-plus w-auto position-absolute"
            ></i>
        </li>
        <ul
                class="navigate-sublist-mobile collapse p-1"
                id="collapseExample<%=lm.get(i).getId()%>"
        >
            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat1.get(0).getParentId())) {
            %>
            <%
                for (Category cat : listCat1) {
            %>
            <li
                    class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
            >
                <a href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                   class="navigate-sublist-mobile__link">
                    <%=cat.getName()%>
                </a>
            </li>
            <% }%>
            <% }%>

            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat2.get(0).getParentId())) {
            %>
            <%
                for (Category cat : listCat2) {
            %>
            <li
                    class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
            >
                <a href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                   class="navigate-sublist-mobile__link">
                    <%=cat.getName()%>
                </a>
            </li>
            <% }%>
            <% }%>

            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat3.get(0).getParentId())) {
            %>
            <%
                for (Category cat : listCat3) {
            %>
            <li
                    class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
            >
                <a href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                   class="navigate-sublist-mobile__link">
                    <%=cat.getName()%>
                </a>
            </li>
            <% }%>
            <% }%>

            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat4.get(0).getParentId())) {
            %>
            <%
                for (Category cat : listCat4) {
            %>
            <li
                    class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
            >
                <a href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                   class="navigate-sublist-mobile__link">
                    <%=cat.getName()%>
                </a>
            </li>
            <% }%>
            <% }%>

<%--            <%--%>
<%--                if (lm.get(i).getId().equalsIgnoreCase(listCat5.get(0).getParentId())) {--%>
<%--            %>--%>
<%--            <%--%>
<%--                for (Category cat : listCat5) {--%>
<%--            %>--%>
<%--            <li--%>
<%--                    class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"--%>
<%--            >--%>
<%--                <a href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"--%>
<%--                   class="navigate-sublist-mobile__link">--%>
<%--                    <%=cat.getName()%>--%>
<%--                </a>--%>
<%--            </li>--%>
<%--            <% }%>--%>
<%--            <% }%>--%>

            <%
                if (lm.get(i).getId().equalsIgnoreCase(listCat6.get(0).getParentId())) {
            %>
            <%
                for (Category cat : listCat6) {
            %>
            <li
                    class="navigate-sublist-mobile__item d-flex align-items-center gap-3 position-relative"
            >
                <a href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                   class="navigate-sublist-mobile__link">
                    <%=cat.getName()%>
                </a>
            </li>
            <% }%>
            <% }%>


        </ul>
        <% }%>


    </ul>
</div>
