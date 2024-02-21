<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function displayMessage() {
    alert("Added city successfully");
}
</script>
</head>
<body>
<form action="savePackage2" method="post" onsubmit="displayMessage()">
    Enter City: <input type="text" name="city" /><br/>
    Enter days: <input type="text" name="days" /><br/>
    
    <input type="submit" value="Add city" />
</form>

<form action="addMember">
<input type="submit" value="Book->" />
</form>
</body>
</html>