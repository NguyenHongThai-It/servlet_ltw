<%@ page import="java.util.List" %>
<%@ page import="Entities.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/28/2022
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Product> count = request.getAttribute("countProduct") != null ? (List<Product>) request.getAttribute("countProduct") : new ArrayList<Product>();
    double numDived = (double) count.size() / 3;
    String urlPt = request.getServletPath().replace(".jsp", "");

    int pageTemp = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
    String newUrl = "";
    String str = "&page=" + pageTemp;
    int pageCount = (int) Math.ceil(numDived);
    if (count.size() != 0) {

%>
<nav aria-label="Page navigation example " class="mt-3">
    <ul
            class="pagination"
            style="display: flex; justify-content: center"
    >
        <li class="page-item" style="width: 4.3rem; height: 4rem">
            <%
                if (pageTemp <= 1) {
            %>
            <a
                    class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link disabled"
                    href="#"
                    aria-label="Previous"
            >
                <span aria-hidden="true">&laquo;</span>
            </a>
            <% }%>

            <%
                newUrl = request.getQueryString().contains("page") ? request.getQueryString().replace(str, "&page=" + (pageTemp - 1)) : request.getQueryString() + "&page=" + (pageTemp - 1);
                if (pageTemp > 1) {%>
            <a
                    class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link "
                    href="<%=request.getContextPath()%><%=urlPt%>?<%=newUrl%>"
                    aria-label="Previous"
            >
                <span aria-hidden="true">&laquo;</span>
            </a>
            <% }%>
        </li>

        <%

            for (int i = 0; i < pageCount; i++) {

                newUrl = request.getQueryString().contains("page") ? request.getQueryString().replace(str, "&page=" + (i + 1)) : request.getQueryString() + "&page=" + (i + 1);
//

        %>

        <li class="page-item" style="width: 4.3rem; height: 4rem">
            <a
                    class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link"
                    href="<%=request.getContextPath()%><%=urlPt%>?<%=newUrl%>"
            ><%=i + 1%>
            </a
            >
        </li>
        <% }%>

        <li class="page-item" style="width: 4.3rem; height: 4rem">
            <%
                newUrl = request.getQueryString().contains("page") ? request.getQueryString().replace(str, "&page=" + (pageTemp + 1)) : request.getQueryString() + "&page=" + (pageTemp + 1);

                if (pageTemp < numDived) {
            %>
            <a
                    class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link "
                    href="<%=request.getContextPath()%><%=urlPt%>?<%=newUrl%>"
                    aria-label="Next"
            >
                <span aria-hidden="true">&raquo;</span>
            </a>
            <% }%>

            <% if (pageTemp >= numDived) {%>
            <a
                    class="h-100 w-100 fs-2 d-flex justify-content-center align-items-center page-link disabled"
                    href="#"
                    aria-label="Next"
            >
                <span aria-hidden="true">&raquo;</span>
            </a>
            <% }%>
        </li>


        <li class="page-item" style="width: 4.3rem; height: 4rem">

        </li>
    </ul>
</nav>

<%}%>