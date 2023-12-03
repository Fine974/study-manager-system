package edu.ft.dao;

import edu.ft.bean.Students;

import java.util.List;

public interface IStuInfoDao {
	/**
	 * 获取首页推荐的朋友
	 * @param stu：sex  sname,sno,sdept,cname,ssex,grade
	 * @return List<Students>
	 */
	public List<Students> getStudent(Students stu);
}
