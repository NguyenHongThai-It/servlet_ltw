<%@ page import="Entities.ImgStore" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/15/2022
  Time: 7:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="mt-5 row text-center">
    <h1 class="text-red_1 content mb-2 fw-bold text-center">
        THƯ VIỆN ẢNH
    </h1>
    <%
        List<ImgStore> la = request.getAttribute("listImageAlbum") != null ? (List<ImgStore>) request.getAttribute("listImageAlbum") : new ArrayList<ImgStore>();
        for (ImgStore img : la) {


    %>

    <div class="col-6 col-md-4 col-lg-3 mt-4">
        <a href="<%=request.getContextPath()%>/album?pos=<%=img.getPosition()%>">
            <div class="transform-scale-bigImg p-2">
                <img
                        src="<%=img.getImg()%>"
                        width="90%"
                        alt=""
                />
            </div>
            <h3 class="text-red_1 fw-bold">
                <%=img.getContent()%>
            </h3>
        </a>
    </div>


    <%} %></div>