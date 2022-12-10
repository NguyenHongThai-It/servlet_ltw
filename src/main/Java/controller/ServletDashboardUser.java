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
            response.sendRedirect(request.getContextPath() + "/not-found.jsp");
            return;
        }
        util.passListUserHighLevel(request, 10);
        passListUserByFilter(request, 10);
        request.getRequestDispatcher("dashboard-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        if (!util.authentication(request) || !util.authorizationForAdmin(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/not-found.jsp");
            return;
        }
    }

    public void passListUserByFilter(HttpServletRequest request, int lim) {
        String name = request.getParameter("name");
        String sort = request.getParameter("sort");
        String id = request.getParameter("id");
        System.out.println(sort);
        if (name == null) name = "";
        if (sort == null) sort = "";
        if (id == null) id = "";

        UserModel um = new UserModel();
        List<User> lu = um.getListUserByFilter(name, id, sort, lim);
        request.setAttribute("listUser", lu);


    }
}
