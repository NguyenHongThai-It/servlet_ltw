<%@ page import="java.util.ArrayList" %>
<%@ page import="Entities.Product" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section id="best-seller" class="best-seller text-center">
    <div
            class="item-label--goldenBackground item-label--clipPath p-1 mt-4 m-auto"
            style="width: 27rem"
    >
        <div
                class="item-label--redTextFeild item-label--clipPath label-Advertise"
                style="padding: 0.7rem"
        >
                  <span class="fs-2 label-Advertise fw-bold"
                  >Sản Phẩm Bán Chạy</span
                  >
        </div>
    </div>
    <div class="row">
        <%
            String pageCurr = request.getAttribute("page") != null ? request.getAttribute("page").toString() : "";
            List<Product> listPro = request.getAttribute("listProduct") != null ? (List<Product>) request.getAttribute("listProduct") : new ArrayList<Product>();
            for (Product p : listPro) {
                if (pageCurr == "contact") {


        %>

        <div class="col-lg-4 col-md-6 col-12  auto-width">
            <jsp:include page="card.jsp">
                <jsp:param name="id" value="<%=p.getId()%>"/>
                <jsp:param name="name" value="<%=p.getName()%>"/>
                <jsp:param name="thumbnail" value="<%=p.getThumbnail()%>"/>
                <jsp:param name="disc_extra" value="<%=p.getDiscExtra()%>"/>
                <jsp:param name="price" value="<%=p.getPrice()%>"/>
                <jsp:param name="desc" value="<%=p.getDesc()%>"/>
                <jsp:param name="price_disc" value="<%=p.getPriceDisc()%>"/>
            </jsp:include>
        </div>


        <% }%>
        <% if (pageCurr != "contact" && pageCurr != "policy") {%>

        <div class="col-lg-3 col-md-6 col-12  auto-width">
            <jsp:include page="card.jsp">
                <jsp:param name="id" value="<%=p.getId()%>"/>
                <jsp:param name="name" value="<%=p.getName()%>"/>
                <jsp:param name="thumbnail" value="<%=p.getThumbnail()%>"/>
                <jsp:param name="disc_extra" value="<%=p.getDiscExtra()%>"/>
                <jsp:param name="price" value="<%=p.getPrice()%>"/>
                <jsp:param name="desc" value="<%=p.getDesc()%>"/>
                <jsp:param name="price_disc" value="<%=p.getPriceDisc()%>"/>
            </jsp:include>
        </div>


        <% }%>
        <% }%>
    </div>
</section>
