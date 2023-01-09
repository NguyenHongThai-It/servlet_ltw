package controller;

import Entities.Nav;
import Entities.User;
import Model.NavModel;
import Model.UserModel;
import utils.GooglePojo;
import utils.GoogleUtils;
import utils.Utils;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/login")
public class ServletLogin extends HttpServlet {

    Utils util = new Utils();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ss = request.getSession(true);
        if (new Utils().authentication(request) || ss.getAttribute("code") != null) {
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }

        util.passListMenu(request, "listMenu");
        util.passListCatById(request, "listRedGinseng", "1");
        util.passListCatById(request, "listCordyceps", "2");
        util.passListCatById(request, "listGanoderma", "3");
        util.passListCatById(request, "listHerbal", "4");
        util.passListCatById(request, "listCatSP", "5");
        util.passListCatById(request, "listCatNew", "6");
        util.passListNav(request);

        String code = request.getParameter("code");
        System.out.println(code);
        if (code != null) {

            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            HttpSession newSession = request.getSession(true);
//            newSession.setAttribute("id", googlePojo.getId());
//            newSession.setAttribute("name", googlePojo.getName());
//            newSession.setAttribute("email", googlePojo.getEmail());
            UserModel um = new UserModel();
            User u = um.getUser(googlePojo.getEmail(), googlePojo.getId(), "");
            if (u == null) {
               u= um.createUser(googlePojo.getId(), googlePojo.getEmail(), "user google");
            }
            newSession.setAttribute("user", u);
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }

        request.getRequestDispatcher("login.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleLogin(request, response);
    }

    public void handleLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new UserModel().getUser(email, password);
        if (email == "" || password == "") {
            request.setAttribute("errorLogin", "Vui lòng điền đầy đủ các trường!");
            doGet(request, response);

            return;
        }
        if (user == null) {
            request.setAttribute("errorLogin", "Mật khẩu hoặc tài khoản sai");
            doGet(request, response);

            return;
        }
        request.getSession().invalidate();
        HttpSession newSession = request.getSession(true);
        newSession.setAttribute("user", user);
        try {
            response.sendRedirect(request.getContextPath() + "/home");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
