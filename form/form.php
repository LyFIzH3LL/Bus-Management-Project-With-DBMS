<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/5c65e2aa5c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <title>AnywhereBus</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./stylesheet_form.css">
    <title>AnywhereBus</title>
</head>

<body>

    <header class="header">
        <nav class="top nav container">
            <div class="top_nav_data">
                <a href="#" class="nav_logo">
                    <i class="fa-solid fa-bus"></i>AnywhereBus
                </a>

                <div class="nav_toggle" id="nav-toggle">
                    <i class="fa-solid fa-bars nav_burger"></i>
                    <i class="fa-solid fa-x nav_close"></i>
                </div>
            </div>

            <div class="nav_menu" id="nav-menu">
                <ul class="nav_list">
                    <li>
                        <a href="/index/index.php" class="nav_link">Home</a>
                    </li>
                    <li>
                        <a href="#" class="nav_link">View Routes</a>
                    </li>
                    <li>
                        <a href="/form/form.php" class="nav_link">Log In/Sign Up</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>


    <div class="login_form">
        <h1>Login</h1>
        <div class="container">
            <div class="main">
                <div class="content">
                    <h2>Log In</h2>
                    <?php 
                    if (isset($_GET['error'])) {
                    echo '<div class="alert alert-danger" role="alert">';
                    echo htmlspecialchars($_GET['error']);
                    echo '</div>';
                        }
                            ?>

                    <form action="./signup.php" method="post">
                    <input type="text" name="username" id="username" placeholder="User Name">
                    <input type="password" name="password" id="password" placeholder="Password">

                        <button class="btn" type="submit">Login</button>
                        <input type="checkbox" id="showPassword" onclick="togglePassword()">

                    </form>
                    <p class="account">Don't Have an Account?<a href="signup_form.php">Sign Up Here</a></p>
                    <p class="forgot_password">Forgot Your Password?<a href="#">Reset Your Password</a></p>
                </div>
                <div class="form_img">
                    <img src="group-buses-driving-along-road-sunset_157027-4307.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

    
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-logo">
                <a href="#" class="logo-link">
                    <i class="fa-solid fa-bus logo-icon"></i>
                    <span class="logo-text">AnywhereBus</span>
                </a>
                <p class="logo-tagline">Your journey starts here.</p>
            </div>

            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="routes.html">View Routes</a></li>
                    <li><a href="book-ticket.html">Book Ticket</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                    <li><a href="about.html">About Us</a></li>
                </ul>
            </div>

            <div class="footer-contact">
                <h4>Contact Us</h4>
                <p>Email: support@anywherebus.com</p>
                <p>Phone: +1 (234) 567-8901</p>
                <p>Address: 123 Anywhere St, City, Country</p>
            </div>

            <div class="footer-social">
                <h4>Follow Us</h4>
                <div class="social-icons">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <p>&copy; 2024 AnywhereBus. All Rights Reserved.</p>
            <p>
                <a href="privacy-policy.html">Privacy Policy</a> |
                <a href="terms.html">Terms of Service</a>
            </p>
        </div>
    </footer>

</body>


<script src="./JS_form.js"></script>

</html>
