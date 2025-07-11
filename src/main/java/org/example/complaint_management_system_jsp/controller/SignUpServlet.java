package org.example.complaint_management_system_jsp.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.complaint_management_system_jsp.dto.UserDTO;
import org.example.complaint_management_system_jsp.model.UserModel;

import java.io.IOException;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String job = req.getParameter("user");


        ServletContext servletContext = req.getServletContext();

        if (UserModel.saveUser(new UserDTO(name, email, password,job), servletContext)){
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        }

    }
}
