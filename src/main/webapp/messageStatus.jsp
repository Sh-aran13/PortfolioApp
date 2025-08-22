<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Message Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            animation: fadeIn 0.8s ease;
        }

        .icon {
            font-size: 60px;
            margin-bottom: 15px;
            animation: pop 0.6s ease;
        }

        .success { color: #28a745; }
        .error { color: #dc3545; }

        h2 {
            margin: 10px 0;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #667eea;
            color: white;
            border-radius: 10px;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn:hover {
            background: #5640d8;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes pop {
            0% { transform: scale(0.5); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="icon <%= request.getAttribute("status") %>">
            <%= "success".equals(request.getAttribute("status")) ? "✔️" : "❌" %>
        </div>
        <h2><%= request.getAttribute("msg") %></h2>
        <a href="contact.jsp" class="btn">Back to Contact</a>
    </div>
</body>
</html>
