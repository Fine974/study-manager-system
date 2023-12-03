package edu.ft.services.impl;

import edu.ft.bean.Users;
import edu.ft.dao.IUsersDao;
import edu.ft.dao.impl.IUsersDaoImpl;
import edu.ft.services.IUsersServices;

import java.util.List;

public class IUsersServicesImpl implements IUsersServices {

    // 创建IUsersDao层对象
    private IUsersDao iuserDao = new IUsersDaoImpl();

    public boolean register(Users user) {
        // 调用Dao层入库
        int i = iuserDao.register(user); // 数据处理结果
        return i > 0; // 业务逻辑的结果：根据数据处理结果得到业务逻辑结果
    }


    @Override
    public int login(Users user) {
        return iuserDao.login(user);
    }

    @Override
    public List<Users> getUsers(Users user) {
        return iuserDao.getUsers(user);
    }
}
