package edu.ft.dao;

import edu.ft.bean.Classes;

import java.util.List;

public interface IClassInfoDao {
	/**
	 * 获取班级信息
	 * @param Class：cname,cdept,count
	 * @return List<Classes>
	 */
	public List<Classes> getClass(Classes Class);
}
