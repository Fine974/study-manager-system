package edu.ft.services;

import java.util.List;

import edu.ft.bean.Students;

public interface IStuInfoServices {
    /**
     * 获取学生信息
     * @param stu：sname,sno,sdept,cname,ssex,grade
     * @return List<Students>
     */
    public List<Students> getStudent(Students stu);
}
