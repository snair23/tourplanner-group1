<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        background-image: url('https://wallpaperaccess.com/full/2028728.jpg');
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f4f4f4;
    }
    
    .form-container {
        width: 300px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    .form-container form {
        width: 100%;
    }
    
    .form-container input[type="text"],
    .form-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }
    
    .form-container input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    
    .form-container input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
<script>
    function validateForm() {
        var name = document.forms["memberForm"]["name"].value;
        var age = document.forms["memberForm"]["age"].value;
        var gender = document.forms["memberForm"]["gender"].value;
        var mobile = document.forms["memberForm"]["mobile"].value;

        if (name.trim() === "") {
            alert("Name cannot be empty.");
            return false;
        }
        if (age.trim() === "") {
            alert("Age cannot be empty.");
            return false;
        }
        if (gender.trim() === "") {
            alert("Gender cannot be empty.");
            return false;
        }
        if (mobile.trim() === "") {
            alert("Mobile cannot be empty.");
            return false;
        }
        if (mobile.trim().length < 10) {
            alert("Mobile number should have at least 10 digits.");
            return false;
        }

        return true;
    }
</script>
</head>
<body>
<div class="form-container">
    <form name="memberForm" action="saveMember" method="post" onsubmit="return validateForm()">
        	Name : <input type="text" name="name" />
            Age : <input type="text" name="age" />
            Gender : <input type="text" name="gender" />
            Mobile Number : <input type="text" name="mobile" />
        <input type="submit" value="Add member"/>
    </form>
    
    <form action="createBooking" method="post">
        <input type="submit" value="BOOK"/>
    </form>
</div>    
</body>
</html>