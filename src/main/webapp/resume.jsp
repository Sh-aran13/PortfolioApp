<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resume</title>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: url('https://www.transparenttextures.com/patterns/stardust.png'), #0f2027;
            background: linear-gradient(135deg, #000000, #0f2027, #203a43, #2c5364);
            color: #fff;
            padding-top: 90px;
            min-height: 100vh;
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

        /* Resume Container */
        .resume-container {
            max-width: 950px;
            margin: auto;
            padding: 20px;
        }

        .section {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.15);
            padding: 30px;
            margin-bottom: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.6);
            transition: transform 0.3s ease;
            animation: fadeInUp 1s ease;
        }

        .section:hover {
            transform: translateY(-6px);
        }

        .section h2 {
            color: #C9FA3E;
            margin-bottom: 15px;
            border-left: 4px solid #C9FA3E;
            padding-left: 10px;
            font-size: 22px;
        }

        /* Skills with animated neon bars */
        .skill {
            margin: 20px 0;
        }

        .skill-name {
            margin-bottom: 6px;
            font-weight: bold;
            color: #fff;
        }

        .skill-bar {
            width: 100%;
            height: 20px;
            background: rgba(255,255,255,0.1);
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid rgba(255,255,255,0.2);
        }

        .skill-progress {
            height: 100%;
            width: 0;
            background: linear-gradient(90deg, #C9FA3E, #9ef01a);
            animation: loadSkill 2s forwards;
            box-shadow: 0 0 10px #C9FA3E, 0 0 20px #9ef01a;
        }

        /* Project & Certificate styles */
        .list-item {
            margin: 12px 0;
            padding-left: 20px;
            position: relative;
        }

        .list-item::before {
            content: "✦";
            position: absolute;
            left: 0;
            color: #C9FA3E;
        }

        /* Animations */
        @keyframes loadSkill {
            from { width: 0; }
            to { width: var(--skill-level); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        a {
            color: #C9FA3E;
            text-decoration: none;
        }

        a:hover {
            color: #fff;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Me</a>
        <a href="resume.jsp">Resume</a>
        <a href="contact.jsp">Contact</a>
    </div>

    <!-- Resume Container -->
    <div class="resume-container">

        <!-- Personal Details -->
        <div class="section">
            <h2>Personal Details</h2>
            <p><strong>Name:</strong> Allada Sai Satya Sharan</p>
            <p><strong>Email:</strong> <a href="mailto:sharan.allada07@gmail.com">sharan.allada07@gmail.com</a></p>
            <p><strong>Phone:</strong> <a href="tel:+918074328850">+91 8074328850</a></p>
            <p><strong>Location:</strong> Rajam, Vizianagaram, 532127</p>
        </div>

        <!-- Education -->
        <div class="section">
            <h2>Educational Details</h2>
            <p><strong>B.Tech in Information Technology</strong> - JNTU-GV College of Engineering (2023 - 2027)</p>
            <p><strong>Intermediate</strong> - Tirumala Junior College (2021 - 2023)</p>
            <p><strong>SSC</strong> - Sri Chaitanya Techno School (2020 - 2021)</p>
        </div>

        <!-- Skills -->
        <div class="section">
            <h2>Skills</h2>

            <div class="skill">
                <div class="skill-name">Java</div>
                <div class="skill-bar">
                    <div class="skill-progress" style="--skill-level: 65%;"></div>
                </div>
            </div>

            <div class="skill">
                <div class="skill-name">HTML & CSS</div>
                <div class="skill-bar">
                    <div class="skill-progress" style="--skill-level: 90%;"></div>
                </div>
            </div>

            <div class="skill">
                <div class="skill-name">JavaScript</div>
                <div class="skill-bar">
                    <div class="skill-progress" style="--skill-level: 75%;"></div>
                </div>
            </div>

            <div class="skill">
                <div class="skill-name">SQL</div>
                <div class="skill-bar">
                    <div class="skill-progress" style="--skill-level: 80%;"></div>
                </div>
            </div>

            <div class="skill">
                <div class="skill-name">Python</div>
                <div class="skill-bar">
                    <div class="skill-progress" style="--skill-level: 79%;"></div>
                </div>
            </div>

            <div class="skill">
                <div class="skill-name">C Language</div>
                <div class="skill-bar">
                    <div class="skill-progress" style="--skill-level: 83%;"></div>
                </div>
            </div>
        </div>

        <!-- Projects -->
        <div class="section">
            <h2>Projects</h2>
            <div class="list-item"><strong>Student Attendance Management System</strong> – Java Servlets, JSP, PostgreSQL</div>
            <div class="list-item"><strong>Quiz Application</strong> – Java Servlets, JSP, PostgreSQL</div>
            <div class="list-item"><strong>eCommerce Website</strong> – Node.js, Express, MongoDB</div>
        </div>

        <!-- Certifications -->
        <div class="section">
            <h2>Certifications</h2>
            <div class="list-item">🌐 Web Development Bootcamp - Udemy</div>
            <div class="list-item">☕ Java Programming Essentials - Coursera</div>
            <div class="list-item">🐍 Python for Everybody - Coursera</div>
        </div>

    </div>
</body>
</html>
