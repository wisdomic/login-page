<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }
        .login-container {
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            color: #fff;
            width: 300px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-container img {
            width: 80px;
            margin-bottom: 20px;
        }
        .login-container input[type="text"], 
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }
        .login-container button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #28a745;
            color: #fff;
            cursor: pointer;
            width: 100%;
        }
        .login-container button:hover {
            background-color: #218838;
        }
        .error-message {
            color: #ff0000;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="https://via.placeholder.com/80" alt="Avatar">
        <h2>Login</h2>
        <input type="text" id="username" placeholder="Enter Email">
        <input type="password" id="password" placeholder="Password">
        <button onclick="login()">LOGIN</button>
        <p class="error-message" id="error-message"></p>
    </div>

    <script>
        let attemptCount = 0;

        function login() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const errorMessage = document.getElementById('error-message');

            if (username === '@dmin' && password === 'Pk32140') {
                window.location.href = 'https://script.google.com/macros/s/AKfycbyQWNZ_Lrwy7lf4wAV_3GjcDLlj45xfRZrbNiSO8chHUtxkYMlntD6wCw16tP_1aAfyXw/exec';
            } else {
                attemptCount++;
                if (attemptCount >= 3) {
                    errorMessage.textContent = 'ท่านป้อนรหัสผิดพลาดเกิน 3 ครั้ง กรุณาลองใหม่อีกครั้งภายหลัง';
                    setTimeout(() => {
                        window.close();
                    }, 3000);
                } else {
                    errorMessage.textContent = 'ท่านป้อนรหัสผิดพลาด กรุณาตรวจสอบและป้อนข้อมูลใหม่';
                }
            }
        }
    </script>
</body>
</html>
