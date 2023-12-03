package edu.ft.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ft.bean.Users;
import edu.ft.services.IUsersServices;
import edu.ft.services.impl.IUsersServicesImpl;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    IUsersServices iuserServices = new IUsersServicesImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String uname = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String upsw = request.getParameter("upsw");
        String utype = request.getParameter("utype");
        // 把注册信息构建成一个对象进行传输
        Users user = new Users(1, uname, uemail, upsw, Integer.parseInt(utype));
        boolean result = iuserServices.register(user);
        if (result) {
            response.sendRedirect("index.jsp");
        } else {
            // 把结果响应前端-no ok ：跳转到注册页重新注册，并提示错误信息
            // 请求转发, 附带数据
            request.setAttribute("info", "网络原因，注册失败，请重新注册");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}