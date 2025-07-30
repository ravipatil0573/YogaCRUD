<%-- 
    Document   : UserHome
    Created on : 13 Aug, 2020, 9:56:36 AM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
        <script
        src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script
        src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <style>
    body {
        background-image: url("img/y8.jpg");
        background-size: cover;
        background-color: #cccccc;
        height: 100%;
        margin: 0;
        font-family: 'Arial', sans-serif; /* Use a suitable font */
    }

    #sidebar {
        padding-left: 0;
    }

    .card {
        overflow: hidden;
        border: 1px solid #ddd; /* Add border for a clean look */
        margin: 20px;
        position: relative;
        transition: transform 0.3s ease-in-out;
        cursor: pointer;
    }

    .card:hover {
        transform: scale(1.05); /* Scale up on hover for a subtle pop-out effect */
    }

    .card-block {
        position: relative;
        z-index: 1;
    }

    .rotate {
        position: absolute;
        top: 10px;
        right: 10px;
        z-index: 2;
        transition: transform 0.3s ease-in-out;
    }

    .card:hover .rotate {
        transform: rotate(-45deg); /* Rotate the icon on hover */
    }

    .rotate i {
        color: rgba(20, 20, 20, 0.8);
        font-size: 20px;
    }

    a {
        color: white;
        text-decoration: none; /* Remove underline from links */
    }
    /* Navbar styling */
    .navbar {
        background-color: #2c3e50; /* Dark blue background */
        border-bottom: 1px solid #34495e; /* Darker blue border bottom */
        padding: 10px 20px; /* Add padding */
        display: flex;
        justify-content: center; /* Center the navbar */
    }

    .navbar-brand img {
        margin-right: 10px; /* Add some space between the logo and text */
        transition: transform 0.3s; /* Smooth transition for logo */
    }

    .navbar-brand img:hover {
        transform: rotate(360deg); /* Rotate logo on hover */
    }

    .navbar-nav {
        margin: 0 auto; /* Center the menu items */
    }

    .navbar-nav .nav-item {
        position: relative; /* Relative positioning for dropdown */
    }

    .navbar-nav .dropdown-menu {
        display: none; /* Hide dropdown menu by default */
        position: absolute;
        top: 100%;
        left: 0;
        background-color: #34495e; /* Dark blue background */
        border: 1px solid #2c3e50; /* Darker blue border */
        transition: display 0.3s ease; /* Smooth transition for dropdown */
    }

    .navbar-nav .nav-item:hover .dropdown-menu {
        display: block; /* Show dropdown menu on hover */
    }

    .navbar-nav .nav-link {
        color: #ecf0f1; /* Light gray text color */
        font-weight: bold; /* Bold text */
        transition: color 0.3s; /* Smooth color transition */
    }

    .navbar-nav .nav-link:hover {
        color: #fff; /* White text color on hover */
    }

    .navbar-nav .dropdown-toggle {
        cursor: pointer; /* Change cursor to pointer for the dropdown toggle */
    }

    .dropdown-menu .dropdown-item {
        color: #ecf0f1; /* Light gray text color */
        transition: background-color 0.3s, color 0.3s; /* Smooth transitions */
    }

    .dropdown-menu .dropdown-item:hover {
        background-color: #2c3e50; /* Darken background color on hover */
        color: #fff; /* White text color */
    }
</style>

    

</style>
    </head>
    <body>
        <%
            Connection con = null;
        %>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/logo2.jpg"
                                                   height="30" width="80" alt="Yoga and Fitness Center">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <h3>
                    <b>Yoga and Fitness Center</b>
                </h3>
                <ul class="navbar-nav ml-auto" style="margin-right: 70px;">

                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Member
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addMember.jsp">Add Member</a>
                            <a class="dropdown-item" href="adminMemberList.jsp">Member List</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Trainer
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addTrainer.jsp">Add Trainer</a>
                            <a class="dropdown-item" href="adminTrainerList.jsp">View Trainer</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Receptionist
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addRecp.jsp">Add Receptionist</a>
                            <a class="dropdown-item" href="adminRecpList.jsp">View Receptionist</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Counsellor
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addCounsellor.jsp">Add Counsellor</a>
                            <a class="dropdown-item" href="adminCounsellorList.jsp">View Counsellor</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <%
            try {
                con = DatabaseConnection.initializeDatabase();
                Statement st = (Statement) con.createStatement();
                String query = "select count(*) from member";
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    int member = rs.getInt(1);
        %>

        <div class="row mb-3">
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px; ">
                <div class="card card-inverse card-success">
                    <div class="card-block bg-success">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center; "><a href="adminMemberList.jsp">Member</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= member%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from trainer";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int trainer = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-danger">
                    <div class="card-block bg-danger">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminTrainerList.jsp">Trainer</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= trainer%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from recp";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int recp = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-info">
                    <div class="card-block bg-info">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminRecpList.jsp">Receptionist</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= recp%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from Counsellor";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int Counsellor = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-warning">
                    <div class="card-block bg-warning">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminCounsellorList.jsp">Counsellor</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= Counsellor%></h1>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>
</html>
