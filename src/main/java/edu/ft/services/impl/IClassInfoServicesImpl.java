package edu.ft.services.impl;

import edu.ft.bean.Classes;
import edu.ft.dao.IClassInfoDao;
import edu.ft.dao.impl.IClassInfoDaoImpl;
import edu.ft.services.IClassInfoServices;

import java.util.List;

public class IClassInfoServicesImpl implements IClassInfoServices{
    private IClassInfoDao classInfoDao = new IClassInfoDaoImpl();

    @Override
    public List<Classes> getClass(Classes Class) {
        return classInfoDao.getClass(Class);
    }
}
