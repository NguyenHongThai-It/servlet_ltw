<%@ page import="Entities.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entities.Product" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Category> listCat = request.getAttribute("listGanoderma") != null ? (List<Category>) request.getAttribute("listGanoderma") : new ArrayList<Category>();
    List<Product> listPro = request.getAttribute("listProductBy3") != null ? (List<Product>) request.getAttribute("listProductBy3") : new ArrayList<Product>();

%>
<section id="ganoderma">
    <!-- Nấm Linh Chi -->
    <div class="row mt-5 pt-3">
        <div class="col col-lg-3 col-md-0 mt-4 col-12">
            <div
                    class="category category-img bg-leather_1 height-auto border"
                    style="
                      background-image: url(./asset/img/home/herbal-category-background.png);
                    "
            >
                <div class="list-group text-start">
                    <div
                            class="border text-bg-gray_1 border-red_medium border-4 d-flex align-items-center"
                    >
                        <div
                                class="special-banner p-2 d-flex align-items-center justify-content-center"
                        >
                            <span><b class="fs-2">Nấm Linh Chi</b></span>
                        </div>
                    </div>
                    <%
                        for (Category cat : listCat) {


                    %>
                    <a
                            href="<%=request.getContextPath()%>/product?type=<%=cat.getTypes()%>&cond=cat"
                            class="border-bottom border-gray_4 category-item list-group-item list-group-item-action"
                    >
                        <li><%=cat.getName()%>
                        </li>
                    </a>
                    <% }%>


                    <a href="<%=request.getContextPath()%>/product?type=<%=listCat.get(0).getParentId()%>&cond=menu&parentId=<%=listCat.get(0).getParentId()%>" class="category-btn">
                        <div class="category-btn--border">
                            <div class="category-btn--textField">Xem Tất Cả</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="col col-lg-9 col-md-12 col-12">
            <div class="row row-cols-number-auto">
                <%
                    for (Product p : listPro) {


                %>
                <div class="col-lg-4 col-md-6 col-12  auto-width">
                    <jsp:include page="../common/card.jsp">
                        <jsp:param name="id" value="<%=p.getId()%>"/>
                        <jsp:param name="desc" value="<%=p.getDesc()%>"/>

                        <jsp:param name="name" value="<%=p.getName()%>"/>
                        <jsp:param name="price" value="<%=p.getPrice()%>"/>
                        <jsp:param name="price_disc" value="<%=p.getPriceDisc()%>"/>
                        <jsp:param name="disc_extra" value="<%=p.getDiscExtra()%>"/>
                        <jsp:param name="thumbnail" value="<%=p.getThumbnail()%>"/>
                    </jsp:include>
                </div>
                <%} %>


            </div>
        </div>
    </div>
</section>
