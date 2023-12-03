package edu.ft.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ft.bean.Students;
import edu.ft.services.IStuInfoServices;
import edu.ft.services.impl.IStuInfoServicesImpl;

@WebServlet("/stuinfo")
public class StuInfoServlet extends HttpServlet {

    private IStuInfoServices stuInfoServices = new IStuInfoServicesImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
         * 首页：
         *  ① 需要问service要一个List，学生信息
         *  ② 把集合传送到stuInfo.jsp
         */
        Students stu = new Students();
        List<Students> listStu = stuInfoServices.getStudent(stu);

        request.setAttribute("listStu", listStu);
        request.getRequestDispatcher("stuinfo.jsp").forward(request, response);
    }
}