package org.example.complaint_management_system_jsp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.complaint_management_system_jsp.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/admin-delete")
public class AdminDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String id = req.getParameter("id");

            if (ComplaintModel.deleteComplaint(req.getServletContext(), Integer.parseInt(id))) {
                resp.sendRedirect(req.getContextPath() + "/Admin.jsp");
            }

    }
}
