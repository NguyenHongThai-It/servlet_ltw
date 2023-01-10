package controller;

import Entities.Cart;
import Entities.Product;
import Entities.User;
import Model.CartModel;
import Model.ProductModel;
import Service.CartService;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart")
public class ServletCart extends HttpServlet {
    Utils util = new Utils();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (!util.authentication(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        util.passListNav(request);
        util.passListMenu(request, "listMenu");
        util.passListCatById(request, "listRedGinseng", "1");
        util.passListCatById(request, "listCordyceps", "2");
        util.passListCatById(request, "listGanoderma", "3");
        util.passListCatById(request, "listHerbal", "4");
        util.passListCatById(request, "listCatSP", "5");
        util.passListCatById(request, "listCatNew", "6");
        util.passListProductCartForHeader(request);

        getListProductCart(request);

        util.passContactInfor(request);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!util.authentication(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        String quantity = request.getParameter("quantity");
        String idProduct = request.getParameter("idProduct");
        String key = request.getParameter("key");

        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
        CartModel cm = new CartModel();

        if ("plus".equalsIgnoreCase(key)) cm.addOrUpdateCart(idProduct, user.getUserId(), 1);
        if ("minus".equalsIgnoreCase(key)) cm.minusCart(idProduct, user.getUserId(), Integer.parseInt(quantity) - 1);
        if ("remove".equalsIgnoreCase(key)) cm.removeCart(idProduct, user.getUserId());
        response.sendRedirect(request.getContextPath() + "/cart");
    }

    public List<Product> getListProductCart(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
        List<Product> lp = new ArrayList<Product>();
        ProductModel pm = new ProductModel();
        CartService cs = new CartService();
        CartModel cm = new CartModel();
        int total = 0;
        if (user != null) {
            List<Cart> lc = cm.getListCartWithUserOrProduct(user.getUserId(), 0);
            for (Cart c : lc) {
                Product pro = pm.getProductById(c.getProductId());
                int temp = cs.handleTotalPriceRow(pro.getId());
                lp.add(pro);
                total += temp;
                request.setAttribute("quantity" + pro.getId(), c.getQuantity());

                request.setAttribute("total" + pro.getId(), temp);
            }
        }
        request.setAttribute("total", total);

        request.setAttribute("listProduct", lp);
        return lp;
    }

    public int handleTotal(List<Product> lp) {
        int total = 0;
        for (Product p : lp) {
            total += p.getPriceDisc();
        }
        return total;

    }
}
