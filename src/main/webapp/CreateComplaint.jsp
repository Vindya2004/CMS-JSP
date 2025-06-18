<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/16/2025
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">

    <style>
        body {
            background: linear-gradient(to right, #e0f2fe, #bae6fd, #a5d8ff, #c7d2fe, #e0e7ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .custom-navbar {
            background: linear-gradient(to right, #7c3aed, #6d28d9);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
            color: white;
        }

        .container {
            max-width: 700px;
            margin-top: 50px;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: 600;
            color: #374151;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #6d28d9;
            font-weight: 700;
        }

        .btn-primary {
            width: 100%;
            font-weight: 600;
            padding: 10px;
            background-color: #6d28d9;
            border: none;
        }

        .btn-primary:hover {
            background-color: #5b21b6;
        }
    </style>
</head>
<body>
<nav class="navbar custom-navbar d-flex justify-content-center align-items-center px-4 py-4">
    <span class="fs-3 fw-bold text-white">Create Your New Complaint</span>
</nav>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 form-container">
            <h2>Create Complaint</h2>
            <form class="row g-3" action="/create_complaint?id=<%= request.getParameter("id")%>" method="post">
                <div class="col-md-12">
                    <label for="description" class="form-label">Complaint Title</label>
                    <input type="text" class="form-control" id="description" name="description" required>
                </div>
                <div class="col-md-6">
                    <label for="date" class="form-label">Date</label>
                    <input type="date" class="form-control" id="date" name="date" required>
                </div>
                <div class="col-12 mt-4">
                    <button class="btn btn-primary" type="submit">Submit Complaint</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

</body>
</html>
