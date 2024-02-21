<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Form Styling</title>
    <style>
        body {
            background-image: url('https://championins.com/wp-content/uploads/2019/06/travel-e1560968324657.jpeg');
            background-size: cover;
            background-position: center;
            font-family: Times New Roman, serif;
            font-size: 20px;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f4;
        }

        form {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form input[type="text"],
        form input[type="date"],
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
        function validateForm() {
            var pID = document.getElementById("pID").value.trim();
            var startDate = document.getElementById("startDate").value.trim();

            if (pID === "") {
                alert("Package ID cannot be empty.");
                return false;
            }
            if (startDate === "") {
                alert("Start date cannot be empty.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <form action="saveBooking1" method="post" onsubmit="return validateForm()">
        <label for="pID">Enter package ID:</label>
        <input type="text" id="pID" name="pID">

        <label for="startDate">Enter start date:</label>
        <input type="date" id="startDate" name="startDate">
        
        <input type="submit" value="Next">
    </form>
</body>
</html>