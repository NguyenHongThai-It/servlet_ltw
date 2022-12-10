package controller;

import Entities.Product;
import Model.ProductModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class ServletSearch extends HttpServlet {
    Utils util = new Utils();
    int page = 1;
    int recordsPerPage = 3;

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

        handleSearch(request);

        util.passContactInfor(request);

        request.getRequestDispatcher("search.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public boolean handleSearch(HttpServletRequest request) {
        String pageStr = request.getParameter("page");

        if (pageStr != null) {
            page = Integer.parseInt(pageStr);
            if (Integer.parseInt(pageStr) <= 0) page = 1;
        }
        int offset = (page - 1) * recordsPerPage;
        int noOfRecords = recordsPerPage;

        String action = request.getParameter("action");
        String name = request.getParameter("name");
        if (name == null) name = "";
        boolean temp = action.equalsIgnoreCase("search");
        List<Product> lp = new ProductModel().getListProductByName(name, offset, noOfRecords);
        List<Product> count = new ProductModel().getListProductByName(name, 0, 1000000000);

        request.setAttribute("countProduct", count);
        request.setAttribute("listProduct", lp);
        return temp;
    }
}
