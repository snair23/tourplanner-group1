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
            width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 15px;
            box-shadow: 0 0 50px rgba(0, 0, 0, 0.8);
        }

        form input[type="text"],
        form input[type="submit"],
        form select {
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
            var packageName = document.getElementById("packageName").value.trim();
            var packageId = document.getElementById("packageId").value.trim();

            if (packageName === "") {
                alert("Custom Package Name cannot be empty.");
                return false;
            }
            if (packageId === "") {
                alert("Package Id cannot be empty.");
                return false;
            }

            return true;
        }
    </script>
</head>

<body>
    <form action="savePackage1" method="post" onsubmit="return validateForm()">
        <label for="packageName">Custom Package Name:</label><br>
        <input type="text" id="packageName" name="packageName" /><br>
        <label for="packageId">Package Id:</label><br>
        <input type="text" id="packageId" name="packageId" /><br>
        <label for="budget">Select package budget:</label><br>
        <select name="budget">
            <option value="low">Low</option>
            <option value="medium">Medium</option>
            <option value="high">High</option>
        </select><br>
        <label for="transport">Select transportation mode between cities:</label><br>
        <select name="transport">
            <option value="bus">Bus</option>
            <option value="car">Car</option>
            <option value="train">Train</option>
            <option value="plane">Plane</option>
        </select><br>
        <input type="submit" value="Next" />
    </form>
</body>

</html>