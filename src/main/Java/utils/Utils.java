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


}
