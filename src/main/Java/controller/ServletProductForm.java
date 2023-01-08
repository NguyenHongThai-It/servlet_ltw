package controller;

import Entities.Product;
import Entities.User;
import Model.ProductModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/product-form")
public class ServletProductForm extends HttpServlet {
    Utils util = new Utils();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/not-found");
            return;
        }
        util.passListUserHighLevel(request, 10);
        handleGetProduct(request);
        request.getRequestDispatcher("product-form.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/not-found");
            return;
        }
        String key = request.getParameter("key");
        if (key == null) return;

        switch (key) {
            case "create": {
                handleCreateProduct(request, response);
                break;
            }
            case "edit": {
                handleEditProduct(request, response);
                break;
            }
            default:
                break;
        }
    }

    public void handleCreateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String thumbnail = request.getParameter("img");
//        String id = request.getParameter("id");
        String slug = request.getParameter("slug");
        String origin = request.getParameter("origin");
        String brand = request.getParameter("brand");
        String description = request.getParameter("description");
        String content_detail_product = request.getParameter("content_detail_product");
        String type = request.getParameter("type");
        String specification = request.getParameter("specification");
        String amount_sold = request.getParameter("amount_sold");
        String amount_rest = request.getParameter("amount_rest");
        String rate = request.getParameter("rate");
        String price = request.getParameter("price");
        String price_disc = request.getParameter("price_disc");
        String code_disc = request.getParameter("code_disc");
        String dis_extra = request.getParameter("dis_extra");
        String best_sell = request.getParameter("specification");
        String outstanding = request.getParameter("outstanding");
        String forOld = request.getParameter("forOld");
        String form = request.getParameter("form");
        if (name == "" || thumbnail == "" || slug == "" || origin == "" ||
                brand == "" || description == "" || content_detail_product == "" || type == ""
                || specification == "" || amount_sold == "" || amount_rest == ""
                || rate == "" || price == "" || price_disc == "" || code_disc == "" || dis_extra == "" || best_sell == "" || outstanding == ""
                || forOld == "" || form == "") {
            request.setAttribute("error", "Xin hãy điền đầy đủ thông tin các trường");
            request.getRequestDispatcher("product-form.jsp").forward(request, response);
            return;
        }
        Product product = new Product("", name, slug, description, Integer.parseInt(rate), Integer.parseInt(amount_sold), Integer.parseInt(price), specification, origin, brand, Integer.parseInt(price_disc), Integer.parseInt(amount_rest), code_disc, Integer.parseInt(dis_extra), content_detail_product, 0, Integer.parseInt(type), Integer.parseInt(outstanding), Integer.parseInt(best_sell), Integer.parseInt(forOld), Integer.parseInt(form), thumbnail, 1);
        ProductModel pm = new ProductModel();
        System.out.println(product.toString());
        pm.createProduct(product);
        request.setAttribute("success", "Bạn đã tạo thành công product với tên: " + name);
        doGet(request,response);

//        response.sendRedirect(request.getContextPath() + "/dashboard-product");
    }

    public void handleEditProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCurrent = request.getParameter("idCurrent");
        String name = request.getParameter("name");
        String thumbnail = request.getParameter("img");
//        String id = request.getParameter("id");
        String slug = request.getParameter("slug");
        String origin = request.getParameter("origin");
        String brand = request.getParameter("brand");
        String description = request.getParameter("description");
        String content_detail_product = request.getParameter("content_detail_product");
        String type = request.getParameter("type");
        String specification = request.getParameter("specification");
        String amount_sold = request.getParameter("amount_sold");
        String amount_rest = request.getParameter("amount_rest");
        String rate = request.getParameter("rate");
        String price = request.getParameter("price");
        String price_disc = request.getParameter("price_disc");
        String code_disc = request.getParameter("code_disc");
        String dis_extra = request.getParameter("dis_extra");
        String best_sell = request.getParameter("specification");
        String outstanding = request.getParameter("outstanding");
        String forOld = request.getParameter("forOld");
        String form = request.getParameter("form");
        if (name == "" || thumbnail == "" || idCurrent == "" || slug == "" || origin == "" ||
                brand == "" || description == "" || content_detail_product == "" || type == ""
                || specification == "" || amount_sold == "" || amount_rest == ""
                || rate == "" || price == "" || price_disc == "" || code_disc == "" || dis_extra == "" || best_sell == "" || outstanding == ""
                || forOld == "" || form == "") {
            request.setAttribute("error", "Xin hãy điền đầy đủ thông tin các trường");
            request.getRequestDispatcher("product-form.jsp").forward(request, response);
            return;
        }
        Product product = new Product(idCurrent, name, slug, description, Integer.parseInt(rate), Integer.parseInt(amount_sold), Integer.parseInt(price), specification, origin, brand, Integer.parseInt(price_disc), Integer.parseInt(amount_rest), code_disc, Integer.parseInt(dis_extra), content_detail_product, 0, Integer.parseInt(type), Integer.parseInt(outstanding), Integer.parseInt(best_sell), Integer.parseInt(forOld), Integer.parseInt(form), thumbnail, 1);
        ProductModel pm = new ProductModel();
        System.out.println(product.toString());
        pm.updateProductAllField(product, idCurrent);
        request.setAttribute("success", "Bạn đã edit thành công product với id: " + idCurrent);
        doGet(request,response);
//        request.getRequestDispatcher("product-form.jsp").forward(request, response);

//        response.sendRedirect(request.getContextPath() + "/dashboard-product");
    }

    public Product handleGetProduct(HttpServletRequest request) {
        String id = request.getParameter("id");
        if (id == null) return null;

        ProductModel pm = new ProductModel();

        Product product = pm.getProductById(id);

        request.setAttribute("productEdit", product);

        return product;
    }
}
