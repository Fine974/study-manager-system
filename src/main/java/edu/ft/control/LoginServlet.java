package edu.ft.control;

import edu.ft.bean.Users;
import edu.ft.services.IUsersServices;
import edu.ft.services.impl.IUsersServicesImpl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    IUsersServices iuserServices = new IUsersServicesImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String uname = request.getParameter("uname");
        String upsw = request.getParameter("upsw");
        Users user = new Users(uname, upsw);
        int utype = iuserServices.login(user);
        if (utype > 0) {
            request.getSession().setAttribute("utype", utype);
            request.getSession().setAttribute("uname", uname);
            response.sendRedirect("index.jsp");
        } else {
            // 登录失败：跳转到登录页面
            request.setAttribute("info", "用户名或密码错误");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}