package controller;

import Entities.OrderSuccess;
import Entities.Product;
import Entities.User;
import Model.OrderSuccessModel;
import Model.ProductModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletDashboradOrder", value = "/ServletDashboradOrder")
public class ServletDashboradOrder extends HttpServlet {
    public class ServletDashboardProduct extends HttpServlet {
        Utils util = new Utils();

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            User user = (User) request.getSession().getAttribute("user");
            if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
                response.sendRedirect(request.getContextPath() + "/not-found");
                return;
            }
            util.passListUserHighLevel(request, 10);
            passListOrderByFilter(request);

            request.getRequestDispatcher("dashboard-ordersuccess.jsp").forward(request, response);

        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            User user = (User) request.getSession().getAttribute("user");
            if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
                response.sendRedirect(request.getContextPath() + "/not-found");
                return;
            }

            String key = request.getParameter("key");
            String id = request.getParameter("id");
            if (key == null) return;
            ProductModel pm = new ProductModel();
            switch (key) {
                case "remove": {
                    if (id == null || id == "") return;
                    id = id.trim();
                    pm.removeProduct(id);
                    request.setAttribute("successAction", "Xóa thành công product với id: " + id);

                    break;
                }
                default:
                    break;
            }
//        request.getRequestDispatcher("dashboard-user.jsp").forward(request, response);
            response.sendRedirect(request.getContextPath() + "/dashboard-product");
        }

        public void passListOrderByFilter(HttpServletRequest request) {
            String pageStr = request.getParameter("page");
            int page = 1;
            int recordsPerPage = 5;
            if (pageStr != null) {
                page = Integer.parseInt(pageStr);
                if (Integer.parseInt(pageStr) <= 0) page = 1;
            }
            int offset = (page - 1) * recordsPerPage;
            int noOfRecords = recordsPerPage;
            String name = request.getParameter("name");
            String sort = request.getParameter("sort");
            String id = request.getParameter("id");
            if (name == null) name = "";
            if (sort == null) sort = "";
            if (id == null) id = "";
            OrderSuccessModel om = new OrderSuccessModel();

            ProductModel pm = new ProductModel();
            List<Product> count = pm.getListProductByFilter(name, id, sort, 0, 100000);
            List<Product> lp = pm.getListProductByFilter(name, id, sort, offset, noOfRecords);
            request.setAttribute("listProduct", lp);
            request.setAttribute("countProduct", count.size());


        }

        public void passOrderListWithStatus(HttpServletRequest request, int status) {
            OrderSuccessModel om = new OrderSuccessModel();
            List<Product> lo = new ArrayList<>();
//            lo = om.getListOrderedWithUserOrProduct();
            request.setAttribute("productListWithStatus" + status, lo);
        }
    }
}
