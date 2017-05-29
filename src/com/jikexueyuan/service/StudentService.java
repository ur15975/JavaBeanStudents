package com.jikexueyuan.service;

import com.jikexueyuan.conn.Dbconnection;
import com.jikexueyuan.model.Studentinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ur15975@outlook.com on 2017/5/29.
 */
public class StudentService {
    private Connection connection;
    private PreparedStatement preparedStatement;

    public StudentService() {
        connection = new Dbconnection().getConnection();
    }

    public boolean addStudent(Studentinfo studentinfo) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO studentinfo " +
                    "(nicheng, truename, xb, csrq, zy, kc, xq, bz) " +
                    "VALUES (?,?,?,?,?,?,?,?);");
            preparedStatement.setString(1,studentinfo.getNicheng());
            preparedStatement.setString(2,studentinfo.getTruename());
            preparedStatement.setByte(3,studentinfo.getXb());
            preparedStatement.setString(4,studentinfo.getCsrq().toString());
            preparedStatement.setString(5,studentinfo.getZy());
            preparedStatement.setString(6,studentinfo.getKcs());
            preparedStatement.setString(7,studentinfo.getXqs());
            preparedStatement.setString(8,studentinfo.getBz());

            preparedStatement.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List queryAllStudent() {
        List students = new ArrayList();
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM studentinfo;");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Studentinfo studentinfo = new Studentinfo();
                studentinfo.setId(resultSet.getInt(1));
                studentinfo.setNicheng(resultSet.getString(2));
                studentinfo.setTruename(resultSet.getString(3));
                studentinfo.setXb(resultSet.getByte(4));
                if (resultSet.getDate(5) != null) {
                    studentinfo.setCsrq(resultSet.getDate(5).toString());
                }
                studentinfo.setZy(resultSet.getString(6));
                if (resultSet.getString(7) != null) {
                    studentinfo.setKc(resultSet.getString(7).split("&"));
                }
                if (resultSet.getString(8) != null) {
                    studentinfo.setXq(resultSet.getString(8).split("&"));
                }
                studentinfo.setBz(resultSet.getString(9));
                students.add(studentinfo);
            }
            return students;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Studentinfo queryOneStudent(int id) {
        try {
            preparedStatement = connection.prepareStatement("select * from jikexueyuanstudent.studentinfo WHERE id=?;");
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            Studentinfo studentinfo = new Studentinfo();
            if (resultSet.next()) {
                studentinfo.setId(resultSet.getInt(1));
                studentinfo.setNicheng(resultSet.getString(2));
                studentinfo.setTruename(resultSet.getString(3));
                studentinfo.setXb(resultSet.getByte(4));
                if (resultSet.getDate(5) != null) {
                    studentinfo.setCsrq(resultSet.getDate(5).toString());
                }
                studentinfo.setZy(resultSet.getString(6));
                if (resultSet.getString(7) != null) {
                    studentinfo.setKc(resultSet.getString(7).split("&"));
                }
                if (resultSet.getString(8) != null) {
                    studentinfo.setXq(resultSet.getString(8).split("&"));
                }
                studentinfo.setBz(resultSet.getString(9));
            }
            return studentinfo;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean updateStudent(Studentinfo studentinfo) {
        try {
            preparedStatement = connection.prepareStatement("update jikexueyuanstudent.studentinfo set nicheng = ?, truename=?, xb=?, csrq=?, zy=?, kc=?, xq=?, bz=? where id = ?;");
            preparedStatement.setString(1,studentinfo.getNicheng());
            preparedStatement.setString(2,studentinfo.getTruename());
            preparedStatement.setByte(3,studentinfo.getXb());
            preparedStatement.setString(4,studentinfo.getCsrq().toString());
            preparedStatement.setString(5,studentinfo.getZy());
            preparedStatement.setString(6,studentinfo.getKcs());
            preparedStatement.setString(7,studentinfo.getXqs());
            preparedStatement.setString(8,studentinfo.getBz());
            preparedStatement.setInt(9,studentinfo.getId());
            preparedStatement.execute();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
