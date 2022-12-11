package controller;

import Entities.User;
import Model.UserModel;
import utils.Utils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user-form")
public class ServletUserForm extends HttpServlet {
    Utils util = new Utils();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        util.passListUserHighLevel(request, 10);
        handleGetUser(request);
        request.getRequestDispatcher("user-form.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        if (key == null) return;

        switch (key) {
            case "create": {
                handleCreateUser(request, response);
                break;
            }
            case "edit": {
                handleEditUser(request, response);
                break;
            }
            default:
                break;
        }
    }

    public void handleCreateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String id = request.getParameter("id");
        String address = request.getParameter("address");
        String surname = request.getParameter("surname");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");
        String statusStr = request.getParameter("status");
        String avatar = request.getParameter("avatar");
        int status = 0;
        if (statusStr != null) status = 1;
        if (email == "" || password == "" || id == "" || address == "" || surname == "" || name == "" || phone == "" || role == "") {
            request.setAttribute("error", "Xin hãy điền đầy đủ thông tin các trường");
            request.getRequestDispatcher("user-form.jsp").forward(request, response);
            return;
        }
        UserModel um = new UserModel();
        um.createUser(email, password, name, surname, phone, Integer.parseInt(role), address, status);
//        request.setAttribute("success", "Bạn đã tạo thành công user");
        response.sendRedirect(request.getContextPath() + "/dashboard-user");
    }

    public void handleEditUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCurrent = request.getParameter("idCurrent");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String id = request.getParameter("id");
        String address = request.getParameter("address");
        String surname = request.getParameter("surname");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");
        String statusStr = request.getParameter("status");
        String avatar = request.getParameter("avatar");
        int status = 0;
        if (statusStr != null) status = 1;
        if (email == "" || password == "" || id == "" || address == "" || surname == "" || name == "" || phone == "" || role == null || idCurrent == null) {
            request.setAttribute("error", "Xin hãy điền đầy đủ thông tin các trường");
            request.getRequestDispatcher("user-form.jsp").forward(request, response);
            return;
        }
        UserModel um = new UserModel();
        um.updateUserAllField(email, password, name, surname, phone, Integer.parseInt(role), address, status, id, idCurrent);
//        request.setAttribute("success", "Bạn đã chỉnh sửa thành công user");
        response.sendRedirect(request.getContextPath() + "/dashboard-user");
    }

    public User handleGetUser(HttpServletRequest request) {
        String id = request.getParameter("id");
        if (id == null) return null;

        UserModel um = new UserModel();

        User user = um.getUserById(id);

        request.setAttribute("userEdit", user);

        return user;
    }
}
