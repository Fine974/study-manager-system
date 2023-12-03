package edu.ft.dao;

import edu.ft.bean.Students;
import edu.ft.bean.Users;

import java.util.List;

public interface IUsersDao {
	
	/**
	 * 用户注册信息入库
	 * @param user 用户对象
	 * @return int >0:success
	 */
	public int register(Users user);

	/**
	 * 用户登录功能
	 * @param user
	 * @return int >0:success
	 */
	public int login(Users user);

	/**
	 * 获取首页推荐的朋友
	 * @param user：sex  sname,sno,sdept,cname,ssex,grade
	 * @return List<Users>
	 */
	public List<Users> getUsers(Users user);
}
