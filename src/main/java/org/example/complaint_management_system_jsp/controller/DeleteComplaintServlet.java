package org.example.complaint_management_system_jsp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.complaint_management_system_jsp.model.ComplaintModel;

import java.io.IOException;

@WebServlet("/delete-complaint")
public class DeleteComplaintServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String id = req.getParameter("id");
            String eid = req.getParameter("eid");

            if (ComplaintModel.deleteComplaint(req.getServletContext(), Integer.parseInt(id))) {
                resp.sendRedirect(req.getContextPath() + "/Employee.jsp?id=" + eid);
            }
    }
}
