package controller;

import Entities.Category;
import Entities.New;
import Model.CategoryModel;
import Model.NewModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contact")
public class ServletContact extends HttpServlet {
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
        util.passListProductWithKey(request, 3, "bestsell");
        passListNew(request, 3);
        util.passContactInfor(request);
        util.passListProductCartForHeader(request);

        request.setAttribute("page", "contact");
        request.getRequestDispatcher("contact.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    private void passListNew(HttpServletRequest request, int lim) {
        List<New> ls = null;

        ls = new NewModel().getListNew(lim);
        request.setAttribute("listNew", ls);
    }
}

