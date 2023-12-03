package edu.ft.dao.impl;

import edu.ft.bean.Students;
import edu.ft.dao.IStuInfoDao;
import edu.ft.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IStuInfoDaoImpl implements IStuInfoDao {
    @Override
    public List<Students> getStudent(Students stu) {
        Connection conn = JDBCUtil.getConn();
        String sql = "select sname,sno,sdept,cname,ssex,grade from student";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Students> list = null;
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            list = new ArrayList<Students>();
            while (rs.next()) {
                String sname = rs.getString("sname");
                String sno = rs.getString("sno");
                String sdept = rs.getString("sdept");
                String cname = rs.getString("cname");
                int ssex = rs.getInt("ssex");
                double grade = rs.getDouble("grade");
                list.add(new Students(sname, sno, sdept, cname, ssex, grade));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(null, pstmt, rs);
        }
        return list;
    }
}