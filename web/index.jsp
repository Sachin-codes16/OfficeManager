<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Aldi Duzha" />
    <meta name="description" content="Free Bulma Login Template, part of Awesome Bulma Templates" />
    <meta name="keywords" content="bulma, login, page, website, template, free, awesome" />
    <link rel="canonical" href="https://aldi.github.io/bulma-login-template/" />
    <title>Desksavvy</title>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-social@1/bin/bulma-social.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.13.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" />
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        body {
            background-image: url('https://source.unsplash.com/random/1920x1080/?nature,water'); /* Background image */
            background-size: cover;
            background-position: center;
            font-family: 'Quicksand', sans-serif;
            color: #333;
        }
        .navbar {
            background-color: rgba(74, 144, 226, 0.8); /* Semi-transparent navbar */
        }
        .navbar-item {
            color: white;
        }
        .hero {
            background: rgba(0, 0, 0, 0.5); /* Dark overlay for hero section */
            color: white;
        }
        .hero-body {
            padding: 2rem 1rem;
        }
        .box {
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            background-color: rgba(255, 255, 255, 0.9); /* White background with transparency */
        }
        .input, .select {
            border-radius: 5px;
        }
        .button {
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #3273dc; /* Darker blue on hover */
        }
        @media (max-width: 768px) {
            .column {
                width: 90%;
            }
        }
    </style>
</head>
<body>

<nav class="navbar">
    <div class="navbar-brand">
        <a class="navbar-item" href="index.jsp">Desksavvy</a>
    </div>
    <div class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item" href="support.jsp">Employee Log-In</a>
            <a class="navbar-item" href="about.jsp">About Us</a>
            <a class="navbar-item" href="blog.jsp">Blog</a>
            <a class="navbar-item" href="contact.jsp">Contact Us</a>
        </div>
    </div>
</nav>

<section class="hero is-fullheight">
    <div class="hero-body">
        <div class="container has-text-centered">
            <div class="column is-4 is-offset-4">
                <div class="box">
                    <p class="subtitle is-4">Please login to proceed.</p>
                    <br />
                    <form action="login" method="get">
                        <div class="field">
                            <p class="control has-icons-left has-icons-right">
                                <input class="input is-medium" type="text" name="t2" placeholder="User  ID" required />
                                <span class="icon is-medium is-left">
                                    <i class="fas fa-user"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input is-medium" type="password" name="t3" placeholder="Password" required />
                                <span class="icon is-small is-left">
                                    <i class="fas fa-lock"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <div class="control">
                                <div class="select is-fullwidth">
                                    <select name="t1" required>
                                        <option value="" disabled selected>Select User Type</option>
                                        <option value="admin">Admin</option>
                                        <option value="company">Company</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <button class="button is-block is-info is-large is-fullwidth" type="submit">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>