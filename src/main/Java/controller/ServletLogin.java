package controller;

import Entities.Nav;
import Entities.User;
import Model.NavModel;
import Model.UserModel;
import utils.GooglePojo;
import utils.GoogleUtils;
import utils.Utils;

import javax.annotation.Resource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

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
        util.passContactInfor(request);
        util.passListProductCartForHeader(request);

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
                u = um.createUser(googlePojo.getId(), googlePojo.getEmail(), "user google");
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.socketFactory.port", "465");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.port", "465");
                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("tranvotam123@gmail.com", "udnzqgrnzacudaja");// Put your email
                        // id and
                        // password here
                    }
                });
                try {
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(googlePojo.getEmail()));// change accordingly
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(googlePojo.getEmail()));
                    message.setSubject("Hello");
                    message.setText("your password is: 123456");
                    message.setText("Please change your password to secure than more!");

                    // send message
                    Transport.send(message);
                    System.out.println("message sent successfully");
                } catch (MessagingException e) {
                    throw new RuntimeException(e);
                }
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
