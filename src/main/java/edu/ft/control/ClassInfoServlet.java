package edu.ft.control;

import edu.ft.bean.Classes;
import edu.ft.services.IClassInfoServices;
import edu.ft.services.impl.IClassInfoServicesImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/classinfo")
public class ClassInfoServlet extends HttpServlet{

    private IClassInfoServices classInfoServices = new IClassInfoServicesImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
         * 首页：
         *  ① 需要问service要一个List，学生信息
         *  ② 把集合传送到stuInfo.jsp
         */
        Classes Class = new Classes();
        List<Classes> listClass = classInfoServices.getClass(Class);

        request.setAttribute("listClass", listClass);
        request.getRequestDispatcher("classinfo.jsp").forward(request, response);
    }
}