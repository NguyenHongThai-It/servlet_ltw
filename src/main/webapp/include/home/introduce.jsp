<%@ page import="Entities.NewContentDetail" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    NewContentDetail newNcd = request.getAttribute("ncd") != null ? (NewContentDetail) request.getAttribute("ncd") : new NewContentDetail();
%>

<section id="introduce" class="introduce">
    <c:out value="<%=newNcd.getContent()%>" escapeXml="false"/>
</section>