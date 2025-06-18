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
            background: #f1f5f9;
            font-family: 'Segoe UI', sans-serif;
        }

        .custom-navbar {
            background: linear-gradient(to right, #7c3aed, #6d28d9);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            font-size: 18px;
        }

        .nav-link {
            color: #ffffff;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #fbbf24; /* amber hover */
            text-decoration: none;
        }

        .logout-btn {
            background-color: #ef4444;
            color: white !important;
            text-decoration: none;
            padding: 8px 20px;
            border-radius: 20px;
            font-weight: 600;
            transition: background-color 0.3s ease;
            font-size: 16px;
            display: inline-block;
        }

        .logout-btn:hover {
            background-color: #dc2626;
        }

        .container {
            margin-top: 40px;
        }

        .styled-heading {
            background: linear-gradient(to right, #60a5fa, #3b82f6);
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            color: white;
            text-align: center;
        }

        .styled-heading h2 {
            font-weight: 700;
            margin-bottom: 10px;
            font-size: 32px;
        }

        .styled-heading h4 {
            font-weight: 400;
            font-size: 18px;
            margin: 0;
        }

        .para {
            background-color: #fff;
            padding: 15px;
            border-left: 5px solid #3b82f6;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.05);
            margin-bottom: 30px;
        }

        .para p {
            font-size: 15px;
            color: #334155;
            font-weight: 600;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        .para p i {
            font-size: 18px;
            margin-right: 10px;
            color: #3b82f6;
        }

        .table {
            background-color: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.05);
        }

        .table thead th {
            background-color: #3b82f6;
            color: white;
            text-align: center;
            vertical-align: middle;
        }

        .table tbody td {
            text-align: center;
            vertical-align: middle;
        }

        .btn-info, .btn-danger {
            margin: 2px;
            padding: 5px 12px;
            border-radius: 12px;
        }

        .btn-info {
            background-color: #0ea5e9;
            border: none;
        }

        .btn-danger {
            background-color: #ef4444;
            border: none;
        }

        .btn-info:hover {
            background-color: #0284c7;
        }

        .btn-danger:hover {
            background-color: #dc2626;
        }
    </style>
</head>
<body>
<nav class="navbar custom-navbar d-flex justify-content-between align-items-center px-4 py-3">
    <div class="nav-left d-flex align-items-center gap-4">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="CreateComplaint.jsp?id=<%= request.getParameter("id")%>">Create Complaint</a>
    </div>
    <div class="nav-right">
        <a href="index.jsp" class="logout-btn">
            <i class="fas fa-sign-out-alt"></i> Logout
        </a>
    </div>
</nav>



<div class="container">
    <div class="title-bar styled-heading">
        <div class="heading-content">
            <h2>User Dashboard</h2>
            <h4>View All Complaints</h4>
        </div>
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
