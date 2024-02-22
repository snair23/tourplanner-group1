<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tour Planner Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .container {
            display: flex;
            width: 100%;
            max-width: 800px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .background {
            flex: 1;
            background-image: url('https://images4.alphacoders.com/665/thumb-1920-665825.jpg');
            background-size: cover;
            background-position: center;
        }

        .form-container {
            flex: 1;
            background-color: #fff;
            padding: 20px;
        }

        .form {
            width: 100%;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="background"></div>
        <div class="form-container">
            <h2>Register for Tour Planner</h2>
            <form id="registrationForm" class="form" action="register" method="post">
                <div class="form-group">
                    <label for="fullName">Full Name:</label>
                    <input type="text" id="fullName" name="fullName">
                    <div class="error" id="fullNameError"></div>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                    <div class="error" id="emailError"></div>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password">
                    <div class="error" id="passwordError"></div>
                </div>
                <!-- 
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword">
                    <div class="error" id="confirmPasswordError"></div>
                </div>
                -->
                <input type="submit" value="Register">
            </form>
        </div>
    </div>

    <script>
        document.getElementById('registrationForm').addEventListener('submit', function (event) {
            var fullName = document.getElementById('fullName').value;
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            var fullNameError = document.getElementById('fullNameError');
            var emailError = document.getElementById('emailError');
            var passwordError = document.getElementById('passwordError');

            // Reset error messages
            fullNameError.textContent = '';
            emailError.textContent = '';
            passwordError.textContent = '';

            if (!fullName) {
                fullNameError.textContent = 'Please enter your full name.';
                event.preventDefault();
            }

            if (!email) {
                emailError.textContent = 'Please enter your email address.';
                event.preventDefault();
            }

            if (!password) {
                passwordError.textContent = 'Please enter a password.';
                event.preventDefault();
            }
        });
    </script>
</body>
</html>
