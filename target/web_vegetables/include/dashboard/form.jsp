<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/3/2022
  Time: 11:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 1200px">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="edit-form ">
                    <div class="container bg-white rounded-3 py-2" style=" ">
                        <!-- Product Overview -->
                        <h3 class="fw-bold text-primary py-3 border-bottom-2">Sản Phẩm</h3>
                        <div class="row row-cols-auto bg-white pb-5">
                            <div class="col-6">
                                <p class="edit-form__desc">ID</p>
                                <input type="text" name="id" id="id" placeholder="Product id"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Tên Sản Phẩm</p>
                                <input type="text" name="name" id="name" placeholder="Product Name"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Hình Ảnh</p>
                                <input type="text" oninput="checkImg()" name="img" id="img" placeholder="Product Image"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Tên Rút Gọn</p>
                                <input type="text" name="slug" id="slug" placeholder="Product slug"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Xuất xứ</p>
                                <input type="text" name="origin" id="origin" placeholder="Product Origin"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Thương Hiệu</p>
                                <input type="text" name="brand" id="brand" placeholder="Product Brand"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Mô Tả</p>
                                <input type="text" name="descriton" id="descriton" placeholder="Product descriton"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Chi Tiết Sản Phẩm</p>
                                <input type="text" name="content_detail_product" id="content_detail_product"
                                       placeholder="Product Content Detal Product"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Loại</p>
                                <input type="text" oninput="checkType()" name="type" id="type"
                                       placeholder="Product Type"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Thông Số kĩ Thuật</p>
                                <input type="text" name="specification" id="specification"
                                       placeholder="Product Specification"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Số lượng đã bán</p>
                                <input type="text" oninput="checkAmountSold()" name="amount_sold" id="amount_sold"
                                       placeholder="Product Amount Sold" class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">số lượng còn lại</p>
                                <input type="text" oninput="checkAmountRest()" name="amount_rest" id="amount_rest"
                                       placeholder="Product Amount Rest" class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Đánh Giá</p>
                                <input type="text" oninput="checkRate()" name="rate" id="rate"
                                       placeholder="Product rate"
                                       class="edit-form__input filter--rounded">
                            </div>
                        </div>


                        <!-- Product Price -->
                        <h3 class="fw-bold text-primary py-3 border-bottom-2">Giá</h3>
                        <div class="row row-cols-auto bg-white pb-5">
                            <div class="col-6">
                                <p class="edit-form__desc">Giá bán</p>
                                <input type="text" oninput="checkPrice()" name="price" id="price"
                                       placeholder="Product Price"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Giá đã giảm</p>
                                <input type="text" oninput="checkPriceDisc()" name="price_disc" id="price_disc"
                                       placeholder="Product Price Discount" class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Mã Giảm giá</p>
                                <input type="text" name="code_disc" id="code_disc" placeholder="Product Code Discount"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Phần Trăm giảm giá</p>
                                <input type="text" name="dis_extra" id="dis_extra" placeholder="Product Discount Extra"
                                       class="edit-form__input filter--rounded">
                            </div>
                        </div>


                        <!-- Nhóm Cái Này Lại Dùm T, T Ko Biết Cho Nó Vào Nhóm J nx -->
                        <h3 class="fw-bold text-primary py-3 border-bottom-2">give it a name</h3>
                        <div class="row row-cols-auto bg-white pb-4">
                            <div class="col-6">
                                <p class="edit-form__desc">Outstanding</p>
                                <input type="text" name="outstanding" id="outstanding" placeholder="Product Outstanding"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Best Sell</p>
                                <input type="text" oninput="checkBestSell()" name="best_sell" id="best_sell"
                                       placeholder="Product Best Sell"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">forOld</p>
                                <input type="text" name="forOld" id="forOld" placeholder="Product forOld"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Form</p>
                                <input type="text" oninput="checkForm()" name="form" id="form"
                                       placeholder="Product Form"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-12 d-flex gap-3 justify-content-end align-items-end mt-5 pt-5 border-top">
                                <button type="button" class="btn btn-outline-secondary py-2" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-outline-primary py-2">Apply</button>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>