package controller;

import Entities.Cart;
import Entities.OrderSuccess;
import Entities.Product;
import Entities.User;
import Model.CartModel;
import Model.OrderSuccessModel;
import Model.ProductModel;
import Service.CartService;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/thank-you")
public class ServletThankYou extends HttpServlet {
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

        getListProductOrdered(request);
        util.passContactInfor(request);

        request.getRequestDispatcher("thank-you.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public List<Product> getListProductOrdered(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
        List<Product> lp = new ArrayList<Product>();
        ProductModel pm = new ProductModel();
        OrderSuccessModel osm = new OrderSuccessModel();
        int total = 0;
        if (user != null) {
            List<OrderSuccess> los = osm.getListOrderedWithUserOrProduct(user.getUserId(), 0);
            for (OrderSuccess os : los) {
                Product pro = pm.getProductById(os.getProductId());
                lp.add(pro);
                total += os.getNum() * pro.getPriceDisc();
                request.setAttribute("quantity" + os.getId(), os.getNum());


                request.setAttribute("total" + os.getId(), os.getNum() * pro.getPriceDisc());
            }
            request.setAttribute("listProductOrdered", los);
        }
        request.setAttribute("total", total);
        request.setAttribute("listProduct", lp);
        return lp;
    }

}
