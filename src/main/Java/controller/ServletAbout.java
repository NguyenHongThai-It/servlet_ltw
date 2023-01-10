package controller;

import Entities.ImgStore;
import Entities.Nav;
import Entities.Product;
import Model.ImgStoreModel;
import Model.NavModel;
import Model.ProductModel;
import utils.Utils;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/about")
public class ServletAbout extends HttpServlet {
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
        util.passListProductCartForHeader(request);

        getListImageAlbum(request, 10);
        util.passSystemProductList(request, "listSP");

        util.passContactInfor(request);
        request.getRequestDispatcher("about.jsp").forward(request, response);
    }

    private void getListImageAlbum(HttpServletRequest request, int pos) {
        List<ImgStore> listBlogCarousel = new ArrayList<ImgStore>();

        listBlogCarousel = new ImgStoreModel().getImages(pos);
        request.setAttribute("listImageAlbum", listBlogCarousel);
    }

}
