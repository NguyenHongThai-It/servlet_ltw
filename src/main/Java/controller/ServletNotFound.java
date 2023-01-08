package controller;

import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/not-found")
public class ServletNotFound extends HttpServlet {
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

        util.passContactInfor(request);

        request.getRequestDispatcher("not-found.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
