<%-- 
    Document   : UserHome
    Created on : 13 Aug, 2020, 9:56:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yoga and Fitness Center</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background-image: url("img/online.jpg");
            background-size: cover;
            background-color: #cccccc;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .navigation {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }
        .navigation a {
            color: #333;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s ease;
            margin-left: 20px;
        }
        .navigation a:hover {
            color: #f44336; /* Change to your desired hover color */
        }
        .content {
            padding: 20px;
            color: #333;
        }
        .jumbotron {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }
        .jumbotron:hover {
            transform: scale(1.05);
        }
        .tooltip-inner {
            max-width: 200px; /* Adjust as needed */
        }
        .center-box {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .social-links {
            margin-top: 10px;
        }
        .social-links a {
            color: #fff;
            font-size: 24px;
            margin: 0 10px;
            transition: color 0.3s, background-color 0.3s;
            border-radius: 50%;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            width: 40px;
            height: 40px;
        }
        .social-links a:hover {
            color: #fff;
            background-color: #f44336; /* Change to your desired hover background color */
        }
    </style>
</head>
<body>
    <div class="navigation">
        <div>
            <a href="#" class="navbar-brand">
                <img src="img/logo2.jpg" height="30" width="80" alt="Yoga and Fitness Center">
            </a>
        </div>
        <div>
            <a href="index.jsp">Home</a>
            <a href="addMember.jsp">Register</a>
            <a href="listMember.jsp">Member List</a>
        </div>
    </div>
    <div class="container content center-box">
        <div class="jumbotron">
            <h1 class="display-4">Welcome to Yoga and Fitness Center</h1>
            <p class="lead">Yoga is not just a form of exercise; it's a journey towards self-discovery, inner peace, and holistic well-being. Through gentle movements, deep breathing, and mindfulness practices, you'll unlock the hidden potential within you and embark on a transformative journey towards a healthier and happier life.</p>
            <hr class="my-4">
            <p>Join our yoga classes and experience the benefits of a healthy lifestyle.</p>
            <!-- Image with Tooltip -->
            <img src="img/yoga-class.jpg" class="img-fluid" alt="Find your balance, ignite your spirit: Yoga for body and soul." data-toggle="tooltip" data-placement="top" title="">
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="social-links">
            <a href="https://www.facebook.com/" class="fa fa-facebook"></a>
            <a href="https://twitter.com/?lang=en" class="fa fa-twitter"></a>
            <a href="https://www.instagram.com/prajwaalll__/" class="fa fa-instagram"></a>
            <!-- Add more social links as needed -->
        </div>
    </footer>

    <!-- Script to initialize Bootstrap tooltips -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</body>
</html>
