<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Yoga and Fitness Center</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-image: url("img/y12.jpg");
        background-size: cover;
        background-color: #cccccc;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #333;
        width: 100%;
        padding: 10px 20px;
    }

    .navbar .navbar-brand {
        display: flex;
        align-items: center;
    }

    .logo {
        margin-right: 10px;
    }

    .navbar-links .nav-item {
        color: white;
        text-decoration: none;
        margin-right: 20px;
        transition: color 0.3s;
    }

    .navbar-links .nav-item:hover {
        color: #ddd;
    }

    h1 {
        color: black;
        font-family: "Lemon Days", cursive;
        margin-top: 50px;
    }

    .wrapper {
        width: 100%;
        max-width: 350px;
        text-align: center;
    }

    #formContent {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease-in-out;
        width: 400px;
        position: absolute;
        top: 100px;
        right: 0px;
    }

    #formContent:hover {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    h2 {
        font-size: 28px;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: calc(100% - 40px);
        padding: 15px 20px;
        margin: 20px 0;
        display: inline-block;
        border: none;
        border-radius: 25px;
        background-color: #f2f2f2;
    }

    input[type="submit"] {
        width: 50%;
        background-color: #4CAF50;
        color: white;
        padding: 15px;
        margin: 20px auto;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        transition: background-color 0.3s ease-in-out;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    #formFooter {
        font-size: 16px;
    }

    #formFooter a {
        color: #1F76BD;
        text-decoration: none;
        transition: color 0.3s ease-in-out;
    }

    #formFooter a:hover {
        color: #0d47a1;
    }


</style>
<body>
<nav class="navbar">
    <div class="navbar-brand">
        <a href="#" class="logo"> <img src="img/logo.jpg" height="50" width="50" alt="Yoga and Fitness Center"></a>
    </div>
    <div class="navbar-links">
        <a href="#" class="nav-item">Home</a>
        <a href="adminLogin.jsp" class="nav-item">Admin</a>
        <a href="aboutus.jsp" class="nav-item">About Us</a>
        <a href="contactus.jsp" class="nav-item">Contact Us</a>
    </div>
</nav>
<div>
    <h1>
        <b>Yoga and Fitness Center</b>
    </h1>
</div>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->
        <h2>User Login</h2>
        <!-- Icon -->
        <div class="fadeIn first"></div>

        <!-- Login Form -->
        <form action="<%=request.getContextPath()%>/UserLogin" method="post" id="login-form">
            <input type="text" id="Username" class="fadeIn second" name="username" placeholder="Username">
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="Password">
            <input type="submit" class="fadeIn fourth" value="Log In">
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <a class="underlineHover" href="userRegister.jsp">Create Account</a>
        </div>
        <div class="message" id="message"></div>
    </div>
</div>

</body>
</html>
