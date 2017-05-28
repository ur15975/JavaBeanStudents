package com.jikexueyuan.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jikexueyuan.conn.Dbconnection;
import com.jikexueyuan.model.Usertable;

/**
 * Created by ur15975@outlook.com on 2017/5/27.
 */
public class UserService {
    private Connection connection;
    private PreparedStatement preparedStatement;

    public UserService() {
        connection = new Dbconnection().getConnection();
    }

    public boolean valiUser(Usertable user)  {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM usertable WHERE username = ? AND password = ?");
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getPassword());

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }


    }
}
