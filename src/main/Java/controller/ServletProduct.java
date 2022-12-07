package controller;

import Entities.Product;
import Model.ProductModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/product")
public class ServletProduct extends HttpServlet {
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

        passListProductByCat(request, 12);
        util.passContactInfor(request);

        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void passListProductByCat(HttpServletRequest request, int lim) {
        String condition = request.getParameter("cond");
        ProductModel pm = new ProductModel();
        List<Product> lp = null;
        if (condition == null) condition = "";
        switch (condition) {
            case "cat": {
                String temp1 = request.getParameter("type");
                int type = 0;
                if (temp1 != null) {
                    type = Integer.parseInt(temp1);
                    lp = pm.getListProductByCatPageProduct(type);
                }
                break;
            }
            case "menu": {
                String parentId = request.getParameter("parentId");
                String temp2 = request.getParameter("type");
                int type = 0;

                if (parentId != null && temp2 != null) {
                    type = Integer.parseInt(temp2);
                    lp = pm.getListProductByCat(type, parentId);
                }
                break;
            }
            case "filter": {
                String[] listNameCheckbox = request.getParameterValues("type");
                String[] listNameRadio = request.getParameterValues("money");

                String str = "";
                String s = null;
                if (listNameRadio != null) s = listNameRadio[0];
                if (listNameCheckbox != null) {
                    for (int i = 0; i < listNameCheckbox.length; i++) {
                        if (i == listNameCheckbox.length - 1) str += listNameCheckbox[i];
                        else str = str + listNameCheckbox[i] + ",";
                    }
                }
                System.out.println(str);
                lp = pm.getListProductByFilter(str, s);
                break;
            }
            default:
                lp = pm.getListProduct(lim);
        }


        request.setAttribute("listProduct", lp);
    }
}
