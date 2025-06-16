package org.example.complaint_management_system_jsp.model;

import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;
import org.example.complaint_management_system_jsp.dto.UserDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserModel {
    public static UserDTO findUser(ServletContext servletContext, UserDTO userDTO) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");
        try {
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from users where username = ? and password = ? and job = ?");
            preparedStatement.setString(1,userDTO.getUsername());
            preparedStatement.setString(2,userDTO.getPassword());
            preparedStatement.setString(3,userDTO.getJobRole());
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return new UserDTO(
                        resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static boolean saveUser(UserDTO employee, ServletContext servletContext) {
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("ds");

        try {
            Connection connection = ds.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("Insert into users(username, password, email, job) values (?,?,?,?)");
            preparedStatement.setString(1,employee.getUsername());
            preparedStatement.setString(2,employee.getPassword());
            preparedStatement.setString(3,employee.getEmail());
            preparedStatement.setString(4,employee.getJobRole());
            int i = preparedStatement.executeUpdate();

            if (i > 0) {
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return false;
    }
}
