<%@ page import="Entities.SystemProduct" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row p-5 bg-white">
    <div class="col-12 pb-4 pb-md-0 col-md-6 pe-md-4">
        <h2 class="fw-bold">
            <i class="fa-solid fa-store"></i>
            Cửa hàng Hồng Sâm KGIN 51 Võ Thị Sáu - Phường 6 - Quận 3 -
            TP.HCM
        </h2>
        <br/>
        <p>
            Giao hàng nội thành: Miễn phí vận chuyển với đơn hàng từ
            500.000đ
        </p>
        <p>Giao nhanh trong 2h – Nhận hàng thanh toán</p>
        <p>
            Hotline: <span class="fw-bold">19004625</span> (Zalo, sms:
            <span class="fw-bold"> 0936.319.818</span>)
        </p>
    </div>

    <div class="col-12 col-md-6 pt-5 pt-md-0 ps-md-4 auto-border">
        <h2 class="fw-bold">Hệ thống cửa hàng</h2>
        <br/>
        <%
            List<SystemProduct> listSystemProduct = request.getAttribute("listSP") != null ? (List<SystemProduct>) request.getAttribute("listSP") : new ArrayList<SystemProduct>();
            for (SystemProduct sp : listSystemProduct) {


        %>
        <p class="shop-system--click " data-img="<%=sp.getImgMap()%>">
        <span class="shop-system--branch pointer">
                <i class="fa-solid fa-store"></i>
                <%=sp.getName()%>  <%=sp.getLocation()%>
            </span>
        </p>
        <% }%>


    </div>
</div>
<%--<p>--%>
<%--    <a href="#" class="shop-system--branch">--%>
<%--        <i class="fa-solid fa-store"></i>--%>
<%--        Cửa hàng Hồng Sâm KGIN 577 Nguyễn Trãi - Thanh Xuân Nam ---%>
<%--        Thanh Xuân - Hà Nội ( Đối diện Pico Trung Văn)--%>
<%--    </a>--%>
<%--</p>--%>
<%--<p>--%>
<%--    <a href="#" class="shop-system--branch">--%>
<%--        <i class="fa-solid fa-store"></i>--%>
<%--        Cửa hàng Hồng Sâm KGIN 149 Cầu Giấy - Quan Hoa - Cầu Giấy ---%>
<%--        Hà Nội--%>
<%--    </a>--%>
<%--</p>--%>
<%--<p>--%>
<%--    <a href="#" class="shop-system--branch">--%>
<%--        <i class="fa-solid fa-store"></i>--%>
<%--        Cửa hàng Hồng Sâm KGIN 21 Tây Sơn - Quan Trung- Đống Đa - Hà--%>
<%--        Nội--%>
<%--    </a>--%>
<%--</p>--%>
<%--<p>--%>
<%--    <a href="#" class="shop-system--branch">--%>
<%--        <i class="fa-solid fa-store"></i>--%>
<%--        Cửa hàng Hồng Sâm KGIN 121A Phố Huế - Hai Bà Trưng - Hà Nội--%>
<%--        (Ngã tư Phố Huế - Tuệ Tĩnh)--%>
<%--    </a>--%>
<%--</p>--%>