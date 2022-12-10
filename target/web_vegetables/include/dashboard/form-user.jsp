<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/3/2022
  Time: 11:55 PM
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
                <div class="edit-form">
                    <div class="container bg-white rounded-3 py-2">
                        <!-- Product Overview -->
                        <h3 class="fw-bold text-primary py-3 border-bottom-2">Profile</h3>
                        <div class="row row-cols-auto bg-white pb-5">
                            <div class="col-6">
                                <p class="edit-form__desc">Họ</p>
                                <input type="text" name="surname" id="surname" placeholder="Họ"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Tên</p>
                                <input type="text" name="name" id="name" placeholder="Tên"
                                       class="edit-form__input filter--rounded">
                            </div>
                            <div class="col-6">
                                <p class="edit-form__desc">ID</p>
                                <input type="text" name="id" id="id" placeholder="id"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">SDT</p>
                                <input type="text" oninput="checkPhone()" name="phone" id="phone"
                                       placeholder="Số Điện Thoại"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Email</p>
                                <input type="text" name="email" id="email" placeholder="Địa Chỉ Email"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Mật Khẩu</p>
                                <div class="d-flex align-items-center border-dark border pe-3 filter--rounded">
                                    <input type="password" name="password" id="password" placeholder="Mật Khẩu"
                                           class="edit-form__input border-0 filter--rounded" style="outline: none;">
                                    <a href="#" class="text-dark"><i class="fa-solid fa-eye"></i></a>
                                </div>
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Địa Chỉ</p>
                                <input type="text" name="address" id="address" placeholder="Địa Chỉ"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-6">
                                <p class="edit-form__desc">Quyền Hạn</p>
                                <input type="text" name="role" id="role" placeholder="Quyền Hạn"
                                       class="edit-form__input filter--rounded">
                            </div>

                            <div class="col-12 mt-5">
                                <p class="edit-form__desc">Ảnh Đại Diện</p>
                                <div class="py-2 border-bottom-2 d-flex align-items-center">
                                    <button type="button" class="btn btn-outline-dark px-2 py-1">Chọn Tệp</button>
                                    <!-- Truyền Tên File Ảnh Được Chọn Vào Đây -->
                                    <span id="edit-avatar__desc">&nbsp; Không có tệp nào được chọn</span>
                                </div>
                                <div class="edit-avatar__img my-5 mx-auto">
                                    <img src="https://via.placeholder.com/150x150" alt="">
                                </div>
                                <p>Tỷ lệ ảnh tối ưu: 1:1 (plugin cắt ảnh sẽ được cập nhật sau)</p>
                                <button type="button" class="btn btn-success px-3 py-2 my-3">Submit</button>
                            </div>

                            <div class="col-12 d-flex justify-content-end align-items-end mt-5 pt-5 border-top">
                                <button type="button" class="btn btn-outline-primary py-2">Apply</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
