<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Form Styling</title>
    <style>
        body {
            font-family: Times New Roman, serif;
            font-size: 20px;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            background-color: #f4f4f4;
        }

        .left-side,
        .right-side {
            width: 50%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-size: cover;
            background-position: center;
        }

        .left-side {
            background-image: url('https://th.bing.com/th/id/OIP.LtkUGQnVg0ncDCG7UKmckQAAAA?rs=1&pid=ImgDetMain');
        }

        .right-side {
            background-color: rgba(255, 255, 255, 0.7);
        }

        form {
            width: 50%; /* Adjust the width as needed */
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 0 50px rgba(0, 0, 0, 0.8);
        }

        form input[type="text"],
        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function displayMessage() {
            var city = document.getElementById("city").value.trim();
            var days = document.getElementById("days").value.trim();

            if (city === "") {
                alert("City cannot be empty.");
                return false;
            }
            if (days === "") {
                alert("Days cannot be empty.");
                return false;
            }

            return true;
        }
    </script>
</head>

<body>
    <div class="left-side"></div>
    <div class="right-side">
        <form action="savePackage2" method="post" onsubmit="return displayMessage()">
            <label for="city">Enter City:</label><br>
            <input type="text" id="city" name="city"><br>
            <label for="days">Enter days:</label><br>
            <input type="text" id="days" name="days"><br>
            <input type="submit" value="Add city">
        </form>

<form action="booking">
<input type="submit" value="Book->" />
</form>
</div>
</body>
</html>