<%-- 
    Document   : UserHome
    Created on : 15 Aug, 2020, 3:56:36 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yoga List</title>
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
        <link rel="stylesheet" type="text/css" href="css/adddataform.css">
        <link rel="stylesheet" type="text/css" href="css/adddatafrm1.css">
        <link rel="stylesheet" type="text/css" href="css/table.css">
        <style>
            body {
    background-image: url("img/y3.jpg");
    background-size: cover;
    background-color: #cccccc;
    margin: 0;
    padding: 0;
    font-family: Gotham Ultra Black, Gotham Narrow Black;
}

.searchbar {
    width: 60%;
    margin-top: 2%;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    position: relative;
}

.search {
    width: 100%;
    height: 40px;
    border-radius: 20px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    transition: all 0.3s ease;
    outline: none;
}

.search:focus {
    border-color: #f44336; /* Change to your desired focus color */
    box-shadow: 0 0 10px rgba(244, 67, 54, 0.5); /* Change to your desired shadow */
}

.search::placeholder {
    text-align: center;
    color: #999; /* Change to your desired placeholder color */
}

.search-button {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    background-color: #f44336; /* Change to your desired button color */
    color: #fff;
    border: none;
    border-radius: 50%;
    width: 30px;
    height: 30px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.search-button:hover {
    background-color: #ff7043; /* Change to your desired hover color */
}

        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/logo.jpg"
                                                   height="30" width="100" alt="Yoga And Fitness Center">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Member
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addMember.jsp">Add Member</a>
                            <a class="dropdown-item" href="listMember.jsp">Member List</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Billing
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Add Bill</a>
                            <a class="dropdown-item" href="#">View Bill</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="serchbar">
            <form action=" " method="post">
                <input class="search" type="text" name="search" placeholder="Search Here..."/>
            </form>
        </div>
        <%
            Connection con = null;
        %>
        <div>
            <div class="container-table100">
                <div class="wrap-table100">
                    <div class="table100 ver3 m-b-110">
                        <div class="table100-head">
                            <table>
                                <thead>
                                    <tr class="row100 head">
                                        <th class="cell100 column1">First Name</th>
                                        <th class="cell100 column2">Last Name</th>
                                        <th class="cell100 column3">Gender</th>
                                        <th class="cell100 column4">City</th>
                                        <th class="cell100 column5">Email</th>
                                        <th class="cell100 column6">Age</th>
                                        <th class="cell100 column7">Address</th>
                                        <th class="cell100 column8">Date</th>
                                        <th class="cell100 column9">Mobile</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        <%
                            try {
                                con = DatabaseConnection.initializeDatabase();
                                Statement st = (Statement) con.createStatement();
                                String sql = "";
                                String query = request.getParameter("search");
                                if (query != null) {
                                    sql = "select * from member where fname like '%" + query + "%' or lname like '%" + query + "%' ";
                                } else {
                                    sql = "select * from member";
                                }
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                        %>
                        <div class="table100-body js-pscroll">
                            <table>
                                <tbody>
                                    <tr class="row100 body">
                                        <td class="cell100 column1"><%=rs.getString(1)%></td>
                                        <td class="cell100 column2"><%=rs.getString(2)%></td>
                                        <td class="cell100 column3"><%=rs.getString(3)%></td>
                                        <td class="cell100 column4"><%=rs.getString(4)%></td>
                                        <td class="cell100 column5"><%=rs.getString(5)%></td>
                                        <td class="cell100 column6"><%=rs.getString(6)%></td>
                                        <td class="cell100 column7"><%=rs.getString(7)%></td>
                                        <td class="cell100 column8"><%=rs.getString(8)%></td>
                                        <td class="cell100 column9"><%=rs.getString(9)%></td>
                                    </tr>
                                </tbody>
                                <%
                                        }
                                        con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </body>
</html>
