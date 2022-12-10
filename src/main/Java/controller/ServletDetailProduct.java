package controller;

import Entities.ContentDetailProduct;
import Entities.Product;
import Entities.User;
import Model.CartModel;
import Model.ContentDetailProductModel;
import Model.ProductModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/detail-product")
public class ServletDetailProduct extends HttpServlet {
    Utils util = new Utils();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        util.passListNav(request);
        util.passListMenu(request, "listMenu");
        util.passListCatById(request, "listRedGinseng", "1");
        util.passListCatById(request, "listCordyceps", "2");
        util.passListCatById(request, "listGanoderma", "3");
        util.passListCatById(request, "listHerbal", "4");
        util.passListCatById(request, "listCatSP", "5");
        util.passListCatById(request, "listCatNew", "6");
        Product product = new ProductModel().getProductById(request.getParameter("id"));
        setProduct(request, product, "product");
        util.passListProductWithKey(request, 4, "bestsell");
        if (product != null) getContentDetailProduct(request, product.getContentDetailProduct(), 1);

        util.passContactInfor(request);

        request.getRequestDispatcher("detail-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!util.authentication(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }


        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
        String productId = request.getParameter("productId");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        response.getWriter().print(user);
        response.getWriter().print(productId);
        updateOrAddCart(request, productId, user.getUserId(), quantity);
        response.sendRedirect(request.getContextPath() + "/cart");

    }

    private void getProductById(HttpServletRequest request, String id) {
        Product pro = new ProductModel().getProductById(id);
        request.setAttribute("product", pro);

    }

    private void setProduct(HttpServletRequest request, Product pro, String name) {
        request.setAttribute(name, pro);

    }

    private void getContentDetailProduct(HttpServletRequest request, String id, int status) {
        ContentDetailProduct cdp = new ContentDetailProductModel().getContentDetailProduct(id, status);
        request.setAttribute("cdp", cdp);
    }

    private void updateOrAddCart(HttpServletRequest request, String idProduct, String idUser, int quantity) {
        new CartModel().addOrUpdateCart(idProduct, idUser, quantity);

    }

}
