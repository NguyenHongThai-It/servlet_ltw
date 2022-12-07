package controller;

import Entities.Cart;
import Entities.Product;
import Entities.User;
import Model.CartModel;
import Model.OrderSuccessModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/checkout")
public class ServletCheckout extends HttpServlet {
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

        util.passContactInfor(request);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!util.authentication(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        handleAddOrder(request);
        response.sendRedirect(request.getContextPath() + "/thank-you");

    }

    public List<String> handleRemoveCart(User user) {
        List<String> lpi = new ArrayList<String>();
        CartModel cm = new CartModel();

        if (user != null) {
            List<Cart> lc = cm.getListCartWithUserOrProduct(user.getUserId(), 0);
            for (Cart c : lc) {
                if (c.getUserId().equals(user.getUserId())) {
                    lpi.add(c.getProductId());
                    cm.removeCart(c.getProductId(), c.getUserId());
                }

            }
        }
        return lpi;
    }

    public List<Integer> getListQuantity(User user) {
        List<Integer> lpq = new ArrayList<Integer>();
        CartModel cm = new CartModel();

        if (user != null) {
            List<Cart> lc = cm.getListCartWithUserOrProduct(user.getUserId(), 0);
            for (Cart c : lc) {
                if (c.getUserId().equals(user.getUserId())) {
                    lpq.add(c.getQuantity());
                }

            }
        }
        return lpq;
    }

    public void handleAddOrder(HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        List<Integer> lpq = getListQuantity(user);
        List<String> lpi = handleRemoveCart(user);

        for (int i = 0; i < lpq.size(); i++) {
            new OrderSuccessModel().addOrder(lpi.get(i), user.getUserId(), lpq.get(i));
        }
    }
}
