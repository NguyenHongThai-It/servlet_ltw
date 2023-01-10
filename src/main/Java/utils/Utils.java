package utils;

import Entities.*;
import Model.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Utils {

    public void passProductBestSell(DataSource dataSource, HttpServletRequest request) {

    }

    public void passListNav(HttpServletRequest request) {
        List<Nav> listNavs = new ArrayList<>();
        listNavs = new NavModel().getListNavs();
        request.setAttribute("listNavs", listNavs);
    }

    public void passListMenu(HttpServletRequest request, String name) {
        List<Menu> listMenu = new ArrayList<Menu>();
        listMenu = new MenuModel().getListMenu();
        request.setAttribute(name, listMenu);
    }

    public void passListProductWithKey(HttpServletRequest request, int limit, String key) {
        List<Product> listProduct = new ArrayList<Product>();
        listProduct = new ProductModel().getProductListWithKey(limit, key);
        request.setAttribute("listProduct", listProduct);
    }

    public void passListCatById(HttpServletRequest request, String name, String idParent) {
        List<Category> listRedGinseng = new ArrayList<Category>();

        listRedGinseng = new CategoryModel().getListCatRedGinseng(idParent);
        request.setAttribute(name, listRedGinseng);

    }

    public boolean authentication(HttpServletRequest request) throws IOException, ServletException {
        HttpSession newSession = request.getSession(true);
        if (request == null || newSession.getAttribute("user") == null) return false;
        return true;
    }

    public void passListUserHighLevel(HttpServletRequest request, int lim) {
        List<User> lu = new UserModel().getListUserModAndAdmin(lim);
        request.setAttribute("listUserHighLevel", lu);
    }

    public boolean authorizationForMod(int role) throws IOException, ServletException {
        return role >= 1 && role <= 2;
    }

    public boolean authorizationForAdmin(int role) throws IOException, ServletException {
        return role == 2;
    }

    public void passSystemProductList(HttpServletRequest request, String name) {
        List<SystemProduct> listSP = new ArrayList<SystemProduct>();

        listSP = new SystemProductModel().getListSystemProduct();
        request.setAttribute(name, listSP);
    }

    public void passContactInfor(HttpServletRequest request) {
        ContactInfor ci = new ContactInforModel().getContactInfo();

        request.setAttribute("contact_info", ci);

    }

    public void passListNew(HttpServletRequest request, int lim) {
        List<New> ls = null;

        ls = new NewModel().getListNew(lim);
        request.setAttribute("listNew", ls);
    }

    public Cart passCartWithProductAndUser(String idProduct, String idUser) {
        Cart cart = null;

        return cart;
    }

    public void handlePagination(HttpServletRequest request) {
        int page = 1;
        int recordsPerPage = 5;
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        int offset = (page - 1) * recordsPerPage;
        int noOfRecords = recordsPerPage;
    }

    public void passListProductCartForHeader(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
        List<Product> lp = new ArrayList<Product>();
        ProductModel pm = new ProductModel();
        CartModel cm = new CartModel();
        if (user != null) {
            List<Cart> lc = cm.getListCartWithUserOrProduct(user.getUserId(), 0);
            for (Cart c : lc) {
                Product pro = pm.getProductById(c.getProductId());
                lp.add(pro);
            }
        }

        request.setAttribute("totalCart", lp.size());
    }
}
