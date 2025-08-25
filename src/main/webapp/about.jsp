<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Me</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: black;
            color: white;
            overflow-x: hidden;
            overflow-y: auto;
            height: 100vh;
        }

        /* Navbar */
        .navbar {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 18px;
            text-align: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            border-bottom: 1px solid rgba(255,255,255,0.2);
        }

        .navbar a {
            color: #C9FA3E;
            text-decoration: none;
            margin: 0 25px;
            font-size: 18px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .navbar a:hover {
            color: #fff;
            text-shadow: 0 0 10px #C9FA3E, 0 0 20px #C9FA3E;
        }

        /* Star animation */
        .stars {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: black;
            z-index: -1;
            animation: animStars 50s linear infinite;
        }

        .stars::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 1px;
            height: 1px;
            background: transparent;
            box-shadow: 
                100px 200px white,
                300px 600px white,
                800px 300px white,
                1200px 150px white,
                700px 400px white,
                150px 700px white,
                900px 800px white,
                500px 500px white;
        }

        @keyframes animStars {
            from { transform: translateY(0px); }
            to { transform: translateY(-1000px); }
        }

        /* About content */
        .about-container {
            margin-top: 120px;
            text-align: center;
            padding: 20px;
            font-size:25px;
        }

        /* This CSS rule is added to align the paragraph text to the left */
        .about-container p {
            text-align: left;
        }

        .profile-pic {
            width: 275px;
            height: 275px;
            border-radius: 50%;
            border: 4px solid #00bfff;
            object-fit: cover;
            opacity: 0; /* initially hidden */
            transform: translateY(20px); /* slight offset for smooth entry */
            animation: fadeInUp 1.5s ease forwards; /* fade + move in */
            transition: transform 0.4s ease-in-out;
        }

        .profile-pic:hover {
            transform: scale(1.1) rotate(5deg);
        }

        /* Social Icons */
        .social-icons {
            margin-top: 20px;
        }

        .social-icons a {
            color: white;
            font-size: 40px;
            margin: 0 15px;
            transition: all 0.3s ease;
            text-decoration: none;
        }

        .social-icons a:hover {
            transform: scale(1.2);
            color: #C9FA3E;
        }

        /* Fade-in animation */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="stars"></div>

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Me</a>
        <a href="resume.jsp">Resume</a>
        <a href="contact.jsp">Contact</a>
    </div>

    <div class="about-container">
        <h1>About Me</h1>
        <img src="images/profile.JPG" alt="Profile Picture" class="profile-pic">
        <p>Hello! I am <strong>Allada Sai Satya Sharan</strong>I’m a recent Computer Science graduate and a passionate web developer.My journey began in college, where I developed my skills in HTML, CSS, JavaScript, and frameworks like React and Bootstrap.
        I have worked on projects, including a fully functional e-commerce website, where I focused on both front-end design and back-end functionality.I believe in writing clean, maintainable code and enjoy collaborating with teams to bring ideas to life.
        I’m eager to stay updated with the latest web development trends and continuously improve my skills.I look forward to the opportunity to contribute to innovative projects while growing as a developer. Thank you for considering my portfolio!</p>

        <div class="social-icons">
            <a href="https://www.linkedin.com/in/sai-satya-sharan-allada-3412752b7/" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin"></i></a>
            <a href="https://www.instagram.com/sharanallada4" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="https://github.com/Sh-aran13" target="_blank" aria-label="GitHub"><i class="fab fa-github"></i></a>
            <a href="https://wa.me/+918074328850" target="_blank" aria-label="WhatsApp"><i class="fab fa-whatsapp"></i></a>
            <a href="https://t.me/Sharanallada" target="_blank" aria-label="Telegram"><i class="fab fa-telegram"></i></a>
        </div>
    </div>
</body>
</html>