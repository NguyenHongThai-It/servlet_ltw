package controller;

import Entities.User;
import Model.UserModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/dashboard-user")
public class ServletDashboardUser extends HttpServlet {
    Utils util = new Utils();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/not-found");
            return;
        }
        util.passListUserHighLevel(request, 10);
        passListUserByFilter(request);
        request.getRequestDispatcher("dashboard-user.jsp").forward(request, response);
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
        UserModel um = new UserModel();
        switch (key) {
            case "remove": {
                if (id == null || id == "") return;
                id = id.trim();
                um.removeUser(id);
                request.setAttribute("successAction", "Xóa thành công user với id: " + id);
                break;
            }
            default:
                break;
        }
//        request.getRequestDispatcher("dashboard-user.jsp").forward(request, response);
        response.sendRedirect(request.getContextPath() + "/dashboard-user");
    }

    public void passListUserByFilter(HttpServletRequest request) {
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
        System.out.println(sort);
        if (name == null) name = "";
        if (sort == null) sort = "";
        if (id == null) id = "";
        UserModel um = new UserModel();
        List<User> count = um.getListUserByFilter(name, id, sort, 0, 100000);
        List<User> lu = um.getListUserByFilter(name, id, sort, offset, noOfRecords);
        request.setAttribute("listUser", lu);
        request.setAttribute("countProduct", count.size());


    }


}
