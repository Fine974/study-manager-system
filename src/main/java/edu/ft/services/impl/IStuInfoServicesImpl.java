package edu.ft.services.impl;

import edu.ft.bean.Students;
import edu.ft.dao.IStuInfoDao;
import edu.ft.dao.impl.IStuInfoDaoImpl;
import edu.ft.services.IStuInfoServices;

import java.util.List;

public class IStuInfoServicesImpl implements IStuInfoServices {
    private IStuInfoDao stuInfoDao = new IStuInfoDaoImpl();

    @Override
    public List<Students> getStudent(Students stu) {
        return stuInfoDao.getStudent(stu);
    }
}
