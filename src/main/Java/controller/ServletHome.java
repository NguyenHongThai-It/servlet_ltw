package controller;

import Entities.*;
import Model.*;
import utils.Utils;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/home")
public class ServletHome extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Utils util = new Utils();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        util.passListNav(request);

        util.passListMenu(request, "listMenu");

        getListProductWithKey(request, 4, "bestsell", "listProduct");
        getListProductWithKey(request, 3, "forOld", "listProductForOld");


        getListService(request);

        util.passListCatById(request, "listRedGinseng", "1");
        util.passListCatById(request, "listCordyceps", "2");
        util.passListCatById(request, "listGanoderma", "3");
        util.passListCatById(request, "listHerbal", "4");
        util.passListCatById(request, "listCatSP", "5");
        util.passListCatById(request, "listCatNew", "6");
        util.passListProductCartForHeader(request);
        getListProductByCat(request, 1, "1", "listProductBy1");
        getListProductByCat(request, 2, "2", "listProductBy2");
        getListProductByCat(request, 3, "3", "listProductBy3");
        getListProductByCat(request, 4, "4", "listProductBy4");

        getHTMLNew(request);

        util.passSystemProductList(request, "listSP");
        getListBlogCarousel(request, 10);

        util.passContactInfor(request);

        request.getRequestDispatcher("index.jsp").forward(request, response);


    }

    private void getListService(HttpServletRequest request) {
        List<Service> listService = new ArrayList<>();

        listService = new ServiceModel().getListService();
        request.setAttribute("listService", listService);

    }


    private void getHTMLNew(HttpServletRequest request) {
        NewContentDetail ncd = new NewModel().getHTMLNew();
        request.setAttribute("ncd", ncd);

    }


    private void getListBlogCarousel(HttpServletRequest request, int pos) {
        List<ImgStore> listBlogCarousel = new ArrayList<ImgStore>();

        listBlogCarousel = new ImgStoreModel().getImages(pos);
        request.setAttribute("listBlogCarousel", listBlogCarousel);
    }

    private void getListProductByCat(HttpServletRequest request, int catId, String idMenu, String name) {
        List<Product> listPro = new ArrayList<Product>();

        listPro = new ProductModel().getListProductByCat(catId, idMenu, 0, 6);
        request.setAttribute(name, listPro);
    }

    private void getListProductWithKey(HttpServletRequest request, int limit, String key, String name) {
        List<Product> listProduct = new ArrayList<Product>();
        listProduct = new ProductModel().getProductListWithKey(limit, key);
        request.setAttribute(name, listProduct);
    }
}

