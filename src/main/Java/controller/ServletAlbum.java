package controller;

import Entities.ImgStore;
import Model.ImgStoreModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/album")
public class ServletAlbum extends HttpServlet {
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

        String posTemp = request.getParameter("pos");
        int pos = 2;
        if (posTemp != null) pos = Integer.parseInt(posTemp);
        getListImageAlbum(request, pos + 1);
        getListImageAlbumByPos(request, pos);
        util.passContactInfor(request);

        request.getRequestDispatcher("album.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void getListImageAlbum(HttpServletRequest request, int pos) {
        List<ImgStore> listBlogCarousel = new ArrayList<ImgStore>();

        listBlogCarousel = new ImgStoreModel().getImages(pos);
        request.setAttribute("listImageAlbum", listBlogCarousel);
    }

    private void getListImageAlbumByPos(HttpServletRequest request, int pos) {
        List<ImgStore> listBlogCarousel = new ArrayList<ImgStore>();

        listBlogCarousel = new ImgStoreModel().getImagesByPos(pos);
        request.setAttribute("listImageAlbumByPos", listBlogCarousel);
    }
}
