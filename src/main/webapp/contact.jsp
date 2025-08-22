<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Me</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: linear-gradient(270deg, #ff7eb3, #ff758c, #42e695, #3bb2b8, #6a11cb, #2575fc);
            background-size: 1000% 1000%;
            animation: bgShift 18s ease infinite;
        }
        @keyframes bgShift {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }

        /* 🌟 Navbar Styling */
        nav {
            width: 100%;
            background: rgba(0,0,0,0.6);
            backdrop-filter: blur(10px);
            padding: 15px 0;
            display: flex;
            justify-content: center;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999;
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
        }
        nav ul {
            list-style: none;
            display: flex;
            gap: 40px;
            margin: 0;
            padding: 0;
        }
        nav ul li a {
            text-decoration: none;
            font-size: 18px;
            color: #fff;
            font-weight: bold;
            position: relative;
            transition: color 0.3s ease;
        }
        nav ul li a:after {
            content: '';
            position: absolute;
            left: 0;
            bottom: -6px;
            width: 100%;
            height: 3px;
            background: #ffeb3b;
            transform: scaleX(0);
            transition: transform 0.3s ease;
            transform-origin: right;
        }
        nav ul li a:hover {
            color: #ffeb3b;
        }
        nav ul li a:hover:after {
            transform: scaleX(1);
            transform-origin: left;
        }

        .form-box {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(14px);
            padding: 40px 30px;
            border-radius: 18px;
            width: 400px;
            box-shadow: 0px 0px 30px rgba(0,0,0,0.35);
            color: white;
            animation: fadeUp 1.4s ease;
            margin-top: 100px; /* push below navbar */
        }
        @keyframes fadeUp {
            from {opacity: 0; transform: translateY(60px);}
            to {opacity: 1; transform: translateY(0);}
        }

        .form-box h2 { 
            text-align:center; 
            margin-bottom:28px; 
            font-size: 2rem;
            text-shadow: 0 0 15px rgba(255,255,255,0.7);
        }

        .input-group {
            position: relative;
            margin-bottom: 25px;
            animation: fadeIn 1.2s ease;
        }
        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(25px);}
            to {opacity: 1; transform: translateY(0);}
        }

        .input-group input,
        .input-group textarea {
            width: 100%;
            padding: 16px 12px;
            border: 2px solid rgba(255,255,255,0.2);
            border-radius: 10px;
            outline: none;
            font-size: 15px;
            background: rgba(255,255,255,0.08);
            color: #fff;
            transition: all 0.4s ease;
            resize: none;
        }
        .input-group input:focus,
        .input-group textarea:focus {
            border-color: #ffeb3b;
            box-shadow: 0 0 12px #ffeb3b;
        }

        .input-group label {
            position: absolute;
            left: 14px;
            top: 16px;
            color: #ddd;
            font-size: 14px;
            pointer-events: none;
            transition: 0.3s;
        }
        .input-group input:focus ~ label,
        .input-group input:valid ~ label,
        .input-group textarea:focus ~ label,
        .input-group textarea:valid ~ label {
            top: -10px;
            left: 10px;
            font-size: 12px;
            color: #ffeb3b;
        }

        button {
            width: 100%; 
            padding: 15px;
            border: none; 
            border-radius: 10px;
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
            color: white; 
            font-size: 16px;
            font-weight: bold;
            cursor: pointer; 
            transition: 0.4s;
            overflow: hidden;
            position: relative;
        }
        button:hover {
            transform: scale(1.05);
            box-shadow: 0 0 25px rgba(255,65,108,0.9);
        }
        button:after {
            content: "";
            position: absolute;
            background: rgba(255,255,255,0.4);
            height: 100%;
            width: 0;
            top: 0;
            left: 0;
            opacity: 0;
            transition: 0.5s;
        }
        button:active:after {
            width: 100%;
            opacity: 1;
            transition: 0s;
        }
    </style>
</head>
<body>
    <!-- 🌟 Navbar -->
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/about.jsp">About Me</a></li>
            <li><a href="${pageContext.request.contextPath}/resume.jsp">Resume</a></li>
            <li><a href="${pageContext.request.contextPath}/contact.jsp">Contact</a></li>
        </ul>
    </nav>

    <!-- Contact Form -->
    <div class="form-box">
        <h2>📩 Contact Me</h2>
        <form action="${pageContext.request.contextPath}/sendMessage" method="post">
            <div class="input-group">
                <input type="text" name="name" required>
                <label>Your Name</label>
            </div>
            <div class="input-group">
                <input type="email" name="email" required>
                <label>Your Email</label>
            </div>
            <div class="input-group">
                <textarea name="message" rows="4" required></textarea>
                <label>Your Message</label>
            </div>
            <button type="submit">🚀 Send Message</button>
        </form>
    </div>
</body>
</html>
