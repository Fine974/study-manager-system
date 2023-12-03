package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class jdbctest {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // jdbc:mysql://localhost:3306/?user=root
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/studymanagersystem?serverTimezone=GMT",
                    "root",
                    "11235813");

            int sid = 2;
            String sname = "KKK";
            String sno = "202101030215";
            String sql = "insert into student(sid, sname, sno) values("+sid+",'"+sname+"','"+sno+"');";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            int i = pstmt.executeUpdate();
            System.out.println(i);
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
