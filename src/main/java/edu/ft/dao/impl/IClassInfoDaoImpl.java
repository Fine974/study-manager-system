package edu.ft.dao.impl;

import edu.ft.bean.Classes;
import edu.ft.dao.IClassInfoDao;
import edu.ft.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IClassInfoDaoImpl implements IClassInfoDao {
    @Override
    public List<Classes> getClass(Classes Class) {
        Connection conn = JDBCUtil.getConn();
        String sql = "select cname,cdept,count from class";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Classes> list = null;
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            list = new ArrayList<Classes>();
            while (rs.next()) {
                String cname = rs.getString("cname");
                String cdept = rs.getString("cdept");
                int count = rs.getInt("count");
                list.add(new Classes(cname, cdept, count));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(null, pstmt, rs);
        }
        return list;
    }
}