package controller;

import Entities.User;
import Model.UserModel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String status = request.getParameter("status");
        if (status == null) {
            response.sendRedirect(request.getContextPath() + "/home");

            return;
        }
        request.getRequestDispatcher("newPassword.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;

        if (session.getAttribute("email") == null) {
            response.sendRedirect(request.getContextPath() + "/not-found");
            return;
        }

        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        if (!newPassword.equals(confPassword)) {
            request.setAttribute("errorPassword", "Mật khẩu không trùng khớp.");
            request.setAttribute("status", "success");
            request.getRequestDispatcher("newPassword.jsp").forward(request, response);
            return;
        }
        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

            User user = new UserModel().forgetPasswrod(newPassword, (String) session.getAttribute("email"));
            if (user != null) {
                request.setAttribute("status", "Lấy lại mật khẩu thành công");
                dispatcher = request.getRequestDispatcher("/login");
                dispatcher.forward(request, response);
                return;

            } else {
                request.setAttribute("errorTake", "Lấy lại mật khẩu thất bại");
                dispatcher = request.getRequestDispatcher("/login");
                dispatcher.forward(request, response);
                return;

            }
        }
    }

}
