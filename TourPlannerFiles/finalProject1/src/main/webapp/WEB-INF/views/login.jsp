<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

 <!DOCTYPE html> 

 <html lang="en"> 

 <head> 

<meta charset="UTF-8"> 

<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

<title>Login</title> 
 <style>
        body {
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }

        .background {
            flex: 1;
            background-image: url('https://images4.alphacoders.com/665/thumb-1920-665825.jpg');
            background-size: cover;
        }

        .login-page {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form {
            width: 360px;
            padding: 45px;
            background-color: #FFFFFF;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .form input {
            width: 100%;
            padding: 15px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 14px;
        }

        .form button {
            width: 100%;
            padding: 15px;
            background-color: #328f8a;
            color: #FFFFFF;
            border: none;
            cursor: pointer;
            font-size: 14px;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
        }

        .form button:hover {
            background-color: #08ac4b;
        }

        .form .message {
            margin-top: 15px;
            color: #b3b3b3;
            font-size: 12px;
        }

        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }
    </style>
 </head> 
<body>
    <div class="background"></div>
    <div class="login-page">
        <div class="form">
            <div class="login-header">
                <h3>LOGIN</h3>
                <p>Please enter your credentials to login.</p>
            </div>
            <form action="checkUser" method="post" class="login-form">
                <label for="fullName">FullName:</label>
                <input type="fullName" id="fullName" name="fullName" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
<!--                 <button>Login</button> -->
				<input type="submit" value="Login">
                <p class="message">Not registered? <a href="http://localhost:8081/registration">Create an account</a></p>
            </form>
        </div>
    </div>
</body>
 

 </html> 