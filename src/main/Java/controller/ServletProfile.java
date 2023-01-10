package controller;

import Entities.User;
import Model.UserModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/profile")
public class ServletProfile extends HttpServlet {
    Utils util = new Utils();

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!util.authentication(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        util.passListNav(request);
        util.passListMenu(request, "listMenu");
        util.passListCatById(request, "listRedGinseng", "1");
        util.passListCatById(request, "listCordyceps", "2");
        util.passListCatById(request, "listGanoderma", "3");
        util.passListCatById(request, "listHerbal", "4");
        util.passListCatById(request, "listCatSP", "5");
        util.passListCatById(request, "listCatNew", "6");
        util.passListProductCartForHeader(request);


        util.passContactInfor(request);

        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!util.authentication(request)) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        String action = request.getParameter("action");
        UserModel um = new UserModel();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (action != null) {
            switch (action) {
                case "updateName": {
                    String name = request.getParameter("name");
                    um.updateUser(session, user, name, action, "");
                    request.setAttribute("success", "Cập nhật tên thành công");

                    break;
                }
                case "updateSurname": {
                    String name = request.getParameter("surname");
                    um.updateUser(session, user, name, action, "");
                    request.setAttribute("success", "Cập nhật họ thành công");

                    break;
                }
                case "updateEmail": {
                    String name = request.getParameter("email");
                    um.updateUser(session, user, name, action, "");
                    request.setAttribute("success", "Cập nhật email thành công");

                    break;
                }
                case "updateAddress": {
                    String name = request.getParameter("address");
                    um.updateUser(session, user, name, action, "");
                    request.setAttribute("success", "Cập nhật địa chỉ thành công");

                    break;
                }
                case "updateTel": {
                    String name = request.getParameter("tel");
                    um.updateUser(session, user, name, action, "");
                    request.setAttribute("success", "Cập nhật số điện thoại thành công");

                    break;
                }
                case "updatePassword": {
                    String pass = request.getParameter("password");
                    String currentPass = request.getParameter("currentPass");
                    User tempUser = um.getUser(user.getEmail(),currentPass);
                    System.out.println(pass);

                    if(tempUser==null){
                        request.setAttribute("error", "Password sai.");
                    break;
                    }

                    um.updateUser(session, user, pass, action, currentPass);
                    request.setAttribute("success", "Cập nhật mật khẩu thành công");

                    break;
                }
                default:
                    break;
            }
        }
        doGet(request,response);
//        request.getRequestDispatcher("profile.jsp").forward(request, response);
//        response.sendRedirect(request.getContextPath() + "/profile");
    }
}
