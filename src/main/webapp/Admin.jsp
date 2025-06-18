<%@ page import="org.example.complaint_management_system_jsp.dto.ComplaintDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.complaint_management_system_jsp.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/16/2025
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            background: #f1f5f9;
            font-family: 'Segoe UI', sans-serif;
        }

        .styled-heading {
            background: linear-gradient(to right, #7c3aed, #6d28d9);
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

<div class="title-bar styled-heading position-relative text-center">
    <div class="heading-content">
        <h2>Admin Dashboard</h2>
        <h4>Manage All Complaints</h4>
    </div>
    <a href="index.jsp" class="logout-btn position-absolute top-50 end-0 translate-middle-y me-4">
        <i class="fas fa-sign-out-alt"></i> Logout
    </a>
</div>


<div class="container px-2 my-4">
<div class="para">
    <p>Welcome to your Admin dashboard</p>
    <h4><i class="fas fa-pen"></i> You can manage and edit your complaints</h4>
    <p> Review all  complaint records</p>
</div>
</div>

<div class="container my-4">
    <div class="row text-center">
        <div class="col-md-3">
            <div class="bg-white rounded-4 shadow-sm p-4">
                <h5 class="text-muted">Total Complaints</h5>
                <h3 class="text-primary fw-bold">00</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="bg-white rounded-4 shadow-sm p-4">
                <h5 class="text-muted">In Progress</h5>
                <h3 class="text-warning fw-bold">00</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="bg-white rounded-4 shadow-sm p-4">
                <h5 class="text-muted">Pending</h5>
                <h3 class="text-danger fw-bold">00</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="bg-white rounded-4 shadow-sm p-4">
                <h5 class="text-muted">Resolved</h5>
                <h3 class="text-success fw-bold">00</h3>
            </div>
        </div>
    </div>
</div>

<div class="container my-4">
<table class="table table-bordered table-hover shadow-sm rounded">
    <thead>
    <tr>
        <th scope="col"><i class="fas fa-hashtag text-dark me-2"></i>Complaint ID</th>
        <th scope="col"><i class="fas fa-user-tie text-dark me-2"></i>Employee ID</th>
        <th scope="col"><i class="fas fa-file-alt text-warning me-2"></i>Complaint Title</th>
        <th scope="col"><i class="fas fa-calendar-alt text-info me-2"></i>Date</th>
        <th scope="col"><i class="fas fa-info-circle text-danger me-2"></i>Status</th>
        <th scope="col"><i class="fas fa-comments text-success me-2"></i>Comment</th>
        <th scope="col"><i class="fas fa-tools text-secondary me-2"></i>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<ComplaintDTO> complaintDTOS = new ComplaintModel().getAllComplaints(request.getServletContext());
        for (ComplaintDTO complaintDTO:complaintDTOS){
    %>

    <tr>
        <th scope="row"><%=complaintDTO.getId()%></th>
        <td><%=complaintDTO.getEmployee_id()%></td>
        <td><%=complaintDTO.getDescription()%></td>
        <td><%=complaintDTO.getDate()%></td>
        <td><%=complaintDTO.getStatus()%></td>
        <td><%=complaintDTO.getComment()%></td>
        <td>
            <a class="btn btn-info" href="AdminComplaint.jsp?id=<%= complaintDTO.getId()%>">Update</a>
            <a class="btn btn-danger" href="AdminDeleteComplaint.jsp?id=<%= complaintDTO.getId()%>">Delete</a>
        </td>
    </tr>

    <% } %>
    </tbody>
</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

</body>
</html>
