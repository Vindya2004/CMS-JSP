<%@ page import="org.example.complaint_management_system_jsp.dto.ComplaintDTO" %>
<%@ page import="org.example.complaint_management_system_jsp.model.ComplaintModel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/16/2025
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }

        .nav {
            background-color: #343a40;
            padding: 10px;
        }

        .nav-link {
            color: #ffffff;
            font-weight: 500;
            margin-right: 15px;
        }

        .nav-link:hover {
            color: #ffc107;
        }

        .container {
            margin-top: 40px;
        }

        .table thead {
            background-color: #0d6efd;
            color: white;
        }

        .table tbody tr:hover {
            background-color: #e9ecef;
        }

        .btn-info, .btn-danger {
            margin-right: 5px;
        }

        .title-bar {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .title-bar h2 {
            font-weight: 600;
            color: #0d6efd;
        }
        .para {
            background-color: #fff3e0;
            padding: 25px;
            border-left: 8px solid #c97a40;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 35px;
            transition: all 0.3s ease-in-out;
        }

        .para p {
            font-size: 17px;
            color: #4e342e;
            font-weight: 600;
            margin-bottom: 12px;
            display: flex;
            align-items: center;
        }

        .para p i {
            font-size: 22px;
            margin-right: 12px;
            color: #ff6f00;
        }
    </style>
</head>
<body>
<ul class="nav">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="CreateComplaint.jsp?id=<%= request.getParameter("id")%>">Create Complaint</a>
    </li>
</ul>

<div class="container">
    <div class="title-bar">
        <h2>User DashBoard</h2>
        <h4>View all Complaint</h4>
    </div>

    <div class="para">
        <p>Welcome to your complaint dashboard</p>
        <h4><i class="fas fa-pen"></i> You can submit and edit your complaints</h4>
        <p> Review all your complaint records</p>
    </div>

    <table class="table table-bordered table-hover shadow-sm rounded">
        <thead>
        <tr>
            <th>Complaint ID</th>
            <th>Employee ID</th>
            <th>Description</th>
            <th>Date Submitted</th>
            <th>Status</th>
            <th>Comment</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            String empId = request.getParameter("id");
            List<ComplaintDTO> complaintDTOS = new ArrayList<>();

            if (empId != null && !empId.isEmpty()) {
                complaintDTOS = new ComplaintModel().getById(request.getServletContext(), empId);
            }

            for (ComplaintDTO complaintDTO : complaintDTOS){
        %>
        <tr>
            <td><%=complaintDTO.getId()%></td>
            <td><%=complaintDTO.getEmployee_id()%></td>
            <td><%=complaintDTO.getDescription()%></td>
            <td><%=complaintDTO.getDate()%></td>
            <td><%=complaintDTO.getStatus()%></td>
            <td><%=complaintDTO.getComment()%></td>
            <td>
                <a class="btn btn-info btn-sm" href="UpdateComplaint.jsp?id=<%=complaintDTO.getId()%>">Update</a>
                <a class="btn btn-danger btn-sm" href="DeleteComplaint.jsp?id=<%=complaintDTO.getId()%>">Delete</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>
