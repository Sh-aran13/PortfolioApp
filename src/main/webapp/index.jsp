<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Portfolio</title>
    <style>
        /* Background animation */
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            color: white;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: linear-gradient(-45deg, #1a2a6c, #b21f1f, #fdbb2d, #12c2e9);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            overflow: hidden;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Navbar */
        .navbar {
            position: absolute;
            top: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.5);
            padding: 15px;
            text-align: center;
            z-index: 10;
        }
        .navbar a {
            color: white;
            margin: 0 20px;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .navbar a:hover, .navbar a.active {
            color: yellow;
            text-shadow: 0 0 10px yellow, 0 0 20px yellow;
        }

        /* Animated text */
        h1 {
            font-size: 50px;
            margin-bottom: 10px;
            animation: fadeInDown 2s ease;
            z-index: 10;
        }
        h3 {
            font-size: 24px;
            margin-top: 0;
            animation: fadeInUp 2s ease;
            z-index: 10;
        }

        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-50px); }
            to   { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(50px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        /* Floating glowing button */
        .btn {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 30px;
            font-size: 18px;
            font-weight: bold;
            color: black;
            background: yellow;
            border-radius: 30px;
            text-decoration: none;
            transition: all 0.3s ease;
            animation: pulse 2s infinite;
            z-index: 10;
        }
        .btn:hover {
            background: white;
            transform: scale(1.1);
        }

        @keyframes pulse {
            0% { box-shadow: 0 0 0 0 rgba(255,255,0,0.7); }
            70% { box-shadow: 0 0 30px 20px rgba(255,255,0,0); }
            100% { box-shadow: 0 0 0 0 rgba(255,255,0,0); }
        }

        /* Canvas for particles */
        #particles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
        }
    </style>
</head>
<body>
    <!-- Particles background -->
    <canvas id="particles"></canvas>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="home" class="active">Home</a>
        <a href="about">About Me</a>
        <a href="resume">Resume</a>
        <a href="${pageContext.request.contextPath}/contact">Contact</a>
    </div>

    <!-- Hero Section -->
    <h1>Welcome to My Portfolio</h1>
    <h3>Creative | Developer | Innovator</h3>
    <a href="about" class="btn">Explore More</a>

    <!-- Particle Animation Script -->
    <script>
        const canvas = document.getElementById('particles');
        const ctx = canvas.getContext('2d');
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;

        let particlesArray;

        // Create particle class
        class Particle {
            constructor() {
                this.x = Math.random() * canvas.width;
                this.y = Math.random() * canvas.height;
                this.size = Math.random() * 3 + 1;
                this.speedX = Math.random() * 1 - 0.5;
                this.speedY = Math.random() * 1 - 0.5;
            }
            update() {
                this.x += this.speedX;
                this.y += this.speedY;
                if (this.x < 0 || this.x > canvas.width) this.speedX *= -1;
                if (this.y < 0 || this.y > canvas.height) this.speedY *= -1;
            }
            draw() {
                ctx.fillStyle = "rgba(255,255,255,0.8)";
                ctx.beginPath();
                ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
                ctx.closePath();
                ctx.fill();
            }
        }

        // Initialize particles
        function init() {
            particlesArray = [];
            for (let i = 0; i < 100; i++) {
                particlesArray.push(new Particle());
            }
        }

        // Animate particles
        function animate() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            for (let i = 0; i < particlesArray.length; i++) {
                particlesArray[i].update();
                particlesArray[i].draw();
            }
            requestAnimationFrame(animate);
        }

        // Resize handling
        window.addEventListener('resize', function(){
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
            init();
        });

        init();
        animate();
    </script>
</body>
</html>
