package edu.ft.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.ft.bean.Users;
import edu.ft.dao.IUsersDao;
import edu.ft.util.JDBCUtil;

public class IUsersDaoImpl implements IUsersDao {

    @Override
    public int register(Users user) {
        Connection conn = JDBCUtil.getConn();
        String sql = "insert into users(uname,uemail,upsw,utype) values(?,?,?,?)";
        int i = 0;
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUname());
            pstmt.setString(2, user.getuemail());
            pstmt.setString(3, user.getUpsw());
            pstmt.setInt(4, user.getUtype());
            i = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(null, pstmt, null);
        }
        return i;
    }

    @Override
    public int login(Users user) {
        Connection conn = JDBCUtil.getConn();
        String sql = "select uid, utype from users where uname=? and upsw=?";
        int utype = 0;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUname());
            pstmt.setString(2, user.getUpsw());
            rs = pstmt.executeQuery();
            if (rs.next()) {
                utype = rs.getInt("utype");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return utype;
    }

    public List<Users> getUsers(Users stu) {
        Connection conn = JDBCUtil.getConn();
        String sql = "select uname,uemail,upsw,utype from users";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Users> list = null;
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            list = new ArrayList<Users>();
            while (rs.next()) {
                String uname = rs.getString("uname");
                String uemail = rs.getString("uemail");
                String upsw = rs.getString("upsw");
                int utype = rs.getInt("utype");
                list.add(new Users(uname, uemail, upsw, utype));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(null, pstmt, rs);
        }
        return list;
    }
}
