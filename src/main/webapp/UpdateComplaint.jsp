<%@ page import="org.example.complaint_management_system_jsp.dto.ComplaintDTO" %>
<%@ page import="org.example.complaint_management_system_jsp.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/17/2025
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Complaint</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }

        .container {
            max-width: 700px;
            margin-top: 80px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: 500;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #0d6efd;
            font-weight: 600;
        }

        .btn-primary {
            width: 100%;
            font-weight: 500;
        }
    </style>
</head>
<body>
<% ComplaintDTO complaintDTO = ComplaintModel.findById(request.getServletContext(), request.getParameter("id"));%>
<<div class="container">
    <h2>Update Complaint</h2>
    <form class="row g-3" action="/complaint-update?id=<%= complaintDTO.getId() %>&eid=<%= complaintDTO.getEmployee_id() %>" method="post">
        <div class="col-md-12">
            <label for="description" class="form-label">Description</label>
            <input type="text" class="form-control" id="description" name="description" required value="<%= complaintDTO.getDescription() %>">
        </div>
        <div class="col-md-12">
            <label for="date" class="form-label">Date</label>
            <input type="date" class="form-control" id="date" name="date" required value="<%= complaintDTO.getDate() %>">
        </div>
        <div class="col-12">
            <button class="btn btn-primary" type="submit">Update</button>
        </div>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>
