<%@ page import="java.util.List" %>
<%@ page import="Entities.ImgStore" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<ImgStore> lbc = request.getAttribute("listBlogCarousel") != null ? (List<ImgStore>) request.getAttribute("listBlogCarousel") : new ArrayList<ImgStore>();
%>
<section id="blog" class="blog">
    <div class="content bg-white">
        <div
                class="row mt-5 border-bottom text-start position-relative"
        >
            <div class="col-md-6 col-8 col-lg-5 col-xl-4 col-xxl-3">
                <div
                        class="item-label--goldenBackground item-label--clipPathE p-1 mt-4 m-auto"
                >
                    <div
                            class="item-label--goldTextFeild item-label--clipPathE label-Advertise"
                            style="padding: 0.7rem"
                    >
                        <span
                                class="fs-2 label-Advertise fw-bold ms-md-5 ms-xxl-4"
                        >Blog - Kiến thức - Sức khỏe</span
                        >
                    </div>
                </div>
            </div>
        </div>

        <div class="blog-carousel">
            <%
                for (ImgStore is : lbc) {


            %>
            <div class="blog-carousel__item transform-scale-bigImg">
                <a href="<%=request.getContextPath()%>/album?pos=<%=is.getPosition()%>" class="blog-carousel__link"
                ><img
                        src="<%=is.getImg()%>"
                        alt=""
                        class="block-carousel__img"
                /><%=is.getContent()%>
                </a
                >
            </div>
            <% }%>


        </div>
    </div>
</section>
