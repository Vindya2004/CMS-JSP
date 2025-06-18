<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #d8b4f8, #fbc2eb, #a6c1ee);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
        }

        .card-container {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            overflow: hidden;
            max-width: 800px;
            width: 100%;
            display: flex;
            flex-direction: row;
        }

        .form-section {
            flex: 1;
            padding: 40px;
        }

        .image-section {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: flex-end;
            background-color: #e9f0fc;
            padding: 20px;
        }

        .image-section img {
            max-width: 250px;
            height: auto;
            border-radius: 10px;
        }

        .btn-submit {
            background-color: #0d6efd;
            color: white;
            width: 100%;
        }

        .btn-submit:hover {
            background-color: #084cdf;
        }
        .btn-info{
            background-color: #0d6efd;
            color: white;
            width: 100%;
        }
        .btn-info:hover {
            background-color: #084cdf;
        }

        @media (max-width: 768px) {
            .card-container {
                flex-direction: column;
            }

            .image-section {
                justify-content: center;
            }

            .image-section img {
                max-width: 200px;
                margin-top: 20px;
            }
        }
    </style>
</head>
<body>
<div class="card-container">
    <div class="form-section">
        <h3 class="mb-4 text-center">Sign In</h3>
        <form method="get" action="/login">
            <div class="mb-3">
                <label for="name" class="form-label">User Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter Your Name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter Your Password" name="password" required>
            </div>
<%--            <div class="col-md-4">--%>
<%--                <label for="inputState" class="form-label">Job-Role</label>--%>
<%--                <select id="inputState" class="form-select" name="user">--%>
<%--                    <option selected>Choose...</option>--%>
<%--                    <option value="admin">Admin</option>--%>
<%--                    <option value="employee">Employee</option>--%>
<%--                </select>--%>
<%--            </div>--%>
            <button type="submit" class="btn btn-submit mt-3">Sign In</button>

            <a href="signup.jsp" type="button" class="btn btn-info mt-3">Sign Up</a>
        </form>
    </div>
    <div class="image-section">
        <img src="https://img.freepik.com/free-vector/customer-feedback-concept-illustration_114360-7885.jpg" alt="Complaint Feedback Image" class="img-fluid" style="max-width: 250px; border-radius: 10px;">
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>