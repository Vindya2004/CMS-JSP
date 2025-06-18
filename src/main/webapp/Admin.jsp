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

</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Complaint Id</th>
        <th scope="col">Employee Id</th>
        <th scope="col">Complaint Title</th>
        <th scope="col">date</th>
        <th scope="col">status</th>
        <th scope="col">comment</th>
        <th scope="col">Action</th>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

</body>
</html>
