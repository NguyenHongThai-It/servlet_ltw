<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/16/2022
  Time: 10:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="card mt-4" style="background: var(--light_1)">
    <div
            class="item__img--hover d-flex align-items-center justify-content-center"
    >
        <img
                src="<%=request.getParameter("thumbnail").toString()%>"
                class="img-ani card-img-top"
                alt="..."
        />
    </div>
    <div class="card-body">
        <h5 class="item__tittle--hover card-title mb-4 fs-4">
            <b
            ><%=request.getParameter("name").toString()%>
            </b
            >
        </h5>
        <div class="card-text d-flex mt-3">
            <p>
                <%=request.getParameter("description").toString()%>
            </p>
        </div>
    </div>
    <div class="card-body p-4 pt-3">
        <div class="row">
            <div class="col-6 col-md-6 col-lg-6">
                <div class="item-btn--goldenBackground">
                    <div
                            class="item-btn--textFeild"
                            style="padding: 0.2rem 1rem"
                    >
                        <a
                                href="#"
                                class="media-fontsize-sm btn btn-light_1"
                                role="button"
                                data-bs-toggle="button"
                        >
                            <b
                            >Xem chi tiết<i
                                    class="fa-solid fa-angles-right ms-2"
                            ></i></b
                            ></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

