package edu.ft.services;

import edu.ft.bean.Students;
import edu.ft.bean.Users;

import java.util.List;

public interface IUsersServices {

	/**
	 * 用户注册功能
	 * @param user 用户对象
	 * @return true:success
	 */
	boolean register(Users user);
	
	/**
	 * 用户登录功能
	 * @param user
	 * @return true:success
	 */
	int login(Users user);

	/**
	 * 获取用户信息
	 * @param user：sname,sno,sdept,cname,ssex,grade
	 * @return List<Users>
	 */

	List<Users> getUsers(Users user);
}
