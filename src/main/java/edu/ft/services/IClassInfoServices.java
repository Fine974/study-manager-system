package edu.ft.services;

import java.util.List;

import edu.ft.bean.Classes;

public interface IClassInfoServices {
    /**
     * 获取班级信息
     * @param Class：cname,cdept,count
     * @return List<Classes>
     */
    public List<Classes> getClass(Classes Class);
}
