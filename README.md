# 🛠️ Complaint Management System (CMS) – JSP Based Web Application

This is a full-stack, role-based Complaint Management System (CMS) developed as an individual project for the Graduate Diploma in Software Engineering (GDSE). It simulates an internal system for managing employee complaints within a municipal IT division using Jakarta EE, Servlets, JSP, and follows the MVC architecture

---

## 📋 Project Overview

The CMS enables internal employees and administrative staff to submit, manage, and resolve complaints in a secure and structured manner.

- Built using Jakarta EE (Servlets & JSP)
- Follows the Model-View-Controller (MVC) architecture
- Uses synchronous form submissions (`GET`/`POST`) only
- Clean separation of concerns between frontend, backend, and database logic

---

## 🔐 Role-Based Access Control

### 👨‍💼 Employee Role:
- Register a new account (Sign Up)
- Login to the system
- Submit new complaints
- View own submitted complaints
- Edit or delete their own complaints

### 👨‍💻 Admin Role:
- Login with admin credentials
- View all submitted complaints
- Update complaint statuses and add comments
- Delete any complaint in the system

---

## ⚙️ Key Features

- ✅ User registration & authentication with session handling
- 🧠 MVC architecture (Servlets, JSP, JavaBeans, DAO)
- 🔐 Role-based dashboard and permissions
- 📝 Complaint submission with edit/delete capabilities
- 🗂️ Admin dashboard for full complaint management
- 🌐 Synchronous request handling only (No AJAX)
- 📛 Proper error handling via `error.jsp`

---

## 💻 Technology Stack

| Layer       | Technologies Used                    |
|------------- |-------------------------------------	|
| Frontend    | JSP, HTML, CSS, Bootstrap 5 |
| Backend     | Jakarta EE (Servlets, JSP)      |
| Database    | MySQL 8                                 |
| Server         | Apache Tomcat 11                   |
| Build Tool    | Apache Maven                         |
| DB Conn     | Apache Commons DBCP2     |

---

## 📁 Project Structure

Complaint_Management_System_JSP/
├── src/
│   └── main/
│       ├── java/
│       │   └── org/
│       │       └── example/
│       │           └── complaint_management_system_jsp/
│       │               ├── controller/         # Servlet Controllers
│       │               │   ├── AdminComplaintServlet.java
│       │               │   ├── AdminDeleteServlet.java
│       │               │   ├── ComplaintServlet.java
│       │               │   ├── DeleteComplaintServlet.java
│       │               │   ├── LoginServlet.java
│       │               │   ├── SignUpServlet.java
│       │               │   └── UpdateComplaintServlet.java
│       │               ├── db/                 # Database Connection
│       │               │   └── DBCP.java
│       │               ├── dto/                # Data Transfer Objects
│       │               │   ├── ComplaintDTO.java
│       │               │   └── UserDTO.java
│       │               └── model/              # Business Logic Layer
│       │                   ├── ComplaintModel.java
│       │                   └── UserModel.java
│       └── resources/      # (optional resources directory)
│
├── webapp/
│   ├── WEB-INF/
│   │   └── web.xml          # Deployment Descriptor
│   ├── Admin.jsp
│   ├── AdminComplaint.jsp
│   ├── AdminDeleteComplaint.jsp
│   ├── CreateComplaint.jsp
│   ├── DeleteComplaint.jsp
│   └── Employee.jsp
│   └── index.jsp
│     └── signup.jsp
│     └── UpdateComplaint.jsp
│
├── pom.xml                  # Maven Build Configuration
└── .gitignore

## 🚀 How to Run

1. Clone the repository.
2. Import into your favorite IDE (e.g., IntelliJ IDEA, Eclipse).
3. Set up MySQL database using the provided SQL dump.
4. Configure `DBCP2` settings in the connection utility class.
5. Deploy the project on Apache Tomcat 11
6. Access via `http://localhost:8080/CMS-JAVAEE/`.

---

## 🧑‍💻 Author

Vindya Madubhashini 
Graduate Diploma in Software Engineering – GDSE-71  
Individual Full-Stack JSP Assignment

🔗 GitHub-[ https://github.com/Vindya2004/CMS-JSP](https://github.com/Vindya2004/CMS-JSP)
