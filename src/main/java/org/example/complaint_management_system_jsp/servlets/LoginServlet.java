package org.example.complaint_management_system_jsp.servlets;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.complaint_management_system_jsp.dto.UserDTO;
import org.example.complaint_management_system_jsp.model.UserModel;

import java.io.IOException;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
//        String job = req.getParameter("user");

        ServletContext servletContext = getServletContext();
        UserDTO user = UserModel.findUser(servletContext,new UserDTO(name,password));

        if (user == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else if (user.getJobRole().equals("admin")) {
            resp.sendRedirect(req.getContextPath()+"/Admin.jsp"+"?id="+user.getId());
        } else if (user.getJobRole().equals("employee")) {
            resp.sendRedirect(req.getContextPath()+"/Employee.jsp"+"?id="+user.getId());
        }

    }
}
