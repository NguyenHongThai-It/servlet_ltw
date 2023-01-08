package controller;

import Entities.Product;
import Entities.User;
import Model.ProductModel;
import Model.UserModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/dashboard-product")
public class ServletDashboardProduct extends HttpServlet {
    Utils util = new Utils();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/not-found");
            return;
        }
        util.passListUserHighLevel(request, 10);
        passListUserByFilter(request);
        passProductListWithStatus(request, 999);
        passProductListWithStatus(request, 0);
        passProductListWithStatus(request, 1);
        request.getRequestDispatcher("dashboard-product.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/not-found");
            return;
        }

        String key = request.getParameter("key");
        String id = request.getParameter("id");
        if (key == null) return;
        ProductModel pm = new ProductModel();
        switch (key) {
            case "remove": {
                if (id == null || id == "") return;
                id = id.trim();
                pm.removeProduct(id);
                request.setAttribute("success", "Xóa thành công product với id: " + id);

                break;
            }
            default:
                break;
        }
        doGet(request,response);
//        request.getRequestDispatcher("dashboard-user.jsp").forward(request, response);
//        response.sendRedirect(request.getContextPath() + "/dashboard-product");
    }

    public void passListUserByFilter(HttpServletRequest request) {
        String pageStr = request.getParameter("page");
        int page = 1;
        int recordsPerPage = 5;
        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
            if (Integer.parseInt(pageStr) <= 0) page = 1;
        }
        int offset = (page - 1) * recordsPerPage;
        int noOfRecords = recordsPerPage;
        String name = request.getParameter("name");
        String sort = request.getParameter("sort");
        String id = request.getParameter("id");
        if (name == null) name = "";
        if (sort == null) sort = "";
        if (id == null) id = "";
        ProductModel pm = new ProductModel();
        List<Product> count = pm.getListProductByFilter(name, id, sort, 0, 100000);
        List<Product> lp = pm.getListProductByFilter(name, id, sort, offset, noOfRecords);
        request.setAttribute("listProduct", lp);
        request.setAttribute("countProduct", count.size());


    }

    public void passProductListWithStatus(HttpServletRequest request, int status) {
        ProductModel pm = new ProductModel();
        List<Product> lp = new ArrayList<>();
        lp = pm.getListProductWithStatus(status);

        request.setAttribute("productListWithStatus" + status, lp);
    }

}
