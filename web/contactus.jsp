<%-- 
    Document   : contactus
    Created on : 20 Feb, 2024, 12:12:23 AM
    Author     : kolur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Yoga and Fitness Center</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Add your custom styles here */
        body {
            font-family: Gotham Narrow Black, Gotham Narrow Black;
            background-color: #f5f5f5;
        }
        .container {
            padding: 50px 0;
        }
        .contact-info {
            margin-bottom: 30px;
        }
        .contact-info p {
            margin-bottom: 10px;
        }
        .social-links {
            margin-top: 20px;
        }
        .social-links a {
            display: inline-block;
            margin-right: 15px;
            color: #333;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Yoga and Fitness Center</a>
            <!-- Add your navigation links here if needed -->
        </div>
    </nav>
    <div class="container">
        <h1>Contact Us</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="contact-info">
                    <p><strong>Address:</strong> YFC Shop No:20 Kharghar Sec:16, 400701</p>
                    <p><strong>Email:</strong> info@yogafitnesscenter.com</p>
                    <p><strong>Phone:</strong> +91 9834248447</p>
                </div>
            </div>
            <div class="col-md-6">
                <form>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter your email">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" id="message" rows="5" placeholder="Enter your message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <footer class="footer mt-auto py-3 bg-light">
        <div class="container text-center">
            <div class="social-links">
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-instagram"></a>
                <!-- Add more social links as needed -->
            </div>
        </div>
    </footer>
</body>
</html>
