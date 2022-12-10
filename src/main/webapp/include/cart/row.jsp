<%@ page import="Entities.Product" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/18/2022
  Time: 6:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String desc = request.getParameter("desc");
    String spec = request.getParameter("spec");
    String price = request.getParameter("price");
    String thumbnail = request.getParameter("thumbnail");
    String total = (request.getParameter("total"));
    String quantity = (request.getParameter("quantity"));
    String isShowInput = (request.getParameter("isShowInput"));

%>
<tbody>
<tr class="row-item">
    <td class="product-name" data-title="Sản phẩm">
        <a
                href="<%=request.getContextPath()%>/detail-product?id=<%=id%>"
        ><img
                width="300"
                height="300"
                src="https://kgin.com.vn/wp-content/uploads/2021/09/kgin-nam-linh-chi-nui-dai-dien--300x300.jpg"
                class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                alt=""
                decoding="async"
                loading="lazy"
                srcset="
                                        https://kgin.com.vn/wp-content/uploads/2021/09/kgin-nam-linh-chi-nui-dai-dien--300x300.jpg 300w,
                                        https://kgin.com.vn/wp-content/uploads/2021/09/kgin-nam-linh-chi-nui-dai-dien--150x150.jpg 150w,
                                        https://kgin.com.vn/wp-content/uploads/2021/09/kgin-nam-linh-chi-nui-dai-dien--100x100.jpg 100w,
                                        https://kgin.com.vn/wp-content/uploads/2021/09/kgin-nam-linh-chi-nui-dai-dien-.jpg         500w
                                      "
                sizes="(max-width: 30rem) 100vw, 30rem"
        /></a>
        <div class="cart-name-checkout">
            <a
                    class="title-product"
                    href="<%=request.getContextPath()%>/detail-product?id=<%=id%>"
            ><%=name%>
            </a
            >
            <div class="quy-cach">
                <span>Quy cách: </span><%=spec%>
            </div>
            <div>
                <%=desc%>
            </div>
        </div>
    </td>

    <td class="product-price" data-title="Giá">
                                  <span class="row-price"
                                  ><bdi
                                  >
                                      <fmt:formatNumber value="<%=price%>" type="currency"/>
                                      <span class="row-price__item"
                                      ></span
                                      ></bdi
                                  ></span
                                  >
    </td>

    <td
            class="product-quantity"
            data-title="Số lượng"
    >
        <div
                class="d-flex justify-content-around">
                                    <span class="d-inline-block d-lg-none"
                                    >Số lượng</span
                                    >
            <%
                if (!"hidden".equalsIgnoreCase(isShowInput)) {

            %>

            <div
                    class="item-label--goldenBackground kgin-sharp d-flex align-items-center sl-sp"
            >
                <form action="<%=request.getContextPath()%>/cart" method="post">
                    <button
                            type="submit"
                            class=" border-0 input-number-decrement kgin-sharp-no-right"
                    >
                        <i class="fa-solid fa-minus"></i>
                    </button>
                    <input type="hidden" value="<%=quantity%>" name="quantity"/>
                    <input type="hidden" value="<%=id%>" name="idProduct"/>
                    <input type="hidden" value="minus" name="key"/>


                </form>
                <b class="bg-white d-flex justify-content-center align-items-center"
                   id="quantity"
                   style="outline: none"
                ><%=quantity%>
                </b>
                <form action="<%=request.getContextPath()%>/cart" method="post">

                    <button
                            class=" border-0 input-number-increment kgin-sharp-no-left"
                    >
                        <i class="fa-solid fa-plus"></i>
                    </button>
                    <input type="hidden" value="<%=quantity%>" name="quantity"/>
                    <input type="hidden" value="<%=id%>" name="idProduct"/>
                    <input type="hidden" value="plus" name="key"/>


                </form>

            </div>
            <%}%>
            <%
                if ("hidden".equalsIgnoreCase(isShowInput)) {

            %>
            <%=quantity%>
            <%}%>
        </div>
    </td>

    <td class="product-subtotal" data-title="Tổng">
        <div
                class="d-lg-block d-flex align-items-center justify-content-around"
        >
                                    <span class="d-inline-block d-lg-none"
                                    >Giá</span
                                    >
            <span class="product-name"
            ><bdi
            >
                <fmt:formatNumber value="<%=total%>" type="currency"/>
                <span class="row-price__item"
                ></span
                ></bdi
            ></span
            >
        </div>
    </td>
    <%
        if (!"hidden".equalsIgnoreCase(isShowInput)) {

    %>
    <td class="product-remove">
        <form action="<%=request.getContextPath()%>/cart" method="post">


            <button
                    class="remove border-0"
                    aria-label="Xóa sản phẩm này"
                    data-product_id="99"
                    data-product_sku=""
                    data-cart_item_key="ac627ab1ccbdb62ec96e702f07f6425b"
            ><i class="fas fa-times-circle"></i
            ></button>
            <input type="hidden" value="remove" name="key"/>
            <input type="hidden" value="<%=quantity%>" name="quantity"/>
            <input type="hidden" value="<%=id%>" name="idProduct"/>
        </form>
    </td>
    <% }%>
</tr>
</tbody>
