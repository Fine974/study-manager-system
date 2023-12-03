package edu.ft.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ft.bean.Users;
import edu.ft.services.IUsersServices;
import edu.ft.services.impl.IUsersServicesImpl;

@WebServlet("/userinfo")
public class UserInfoServlet extends HttpServlet {

    private IUsersServices iuserServices = new IUsersServicesImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
         * 首页：
         *  ① 需要问service要一个List，用户信息
         *  ② 把集合传送到userinfo.jsp
         */
        Users user = new Users();
        List<Users> listUser = iuserServices.getUsers(user);

        request.setAttribute("listUser", listUser);
        request.getRequestDispatcher("userinfo.jsp").forward(request, response);
    }
}