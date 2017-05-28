package com.jikexueyuan.conn;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by ur15975@outlook.com on 2017/5/27.
 */
public class Dbconnection {
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/jikexueyuanstudent?useUnicode=true&characterEncoding=utf-8";
            String user = "root";
            String password = "123456";

            Connection connection = DriverManager.getConnection(url,user,password);
            System.out.println(connection.getMetaData().getURL());
            return connection;

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
