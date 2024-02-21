<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action = "saveMember" method="post">
		Enter name : <input type = "text" name = "name" />
		Enter age : <input type = "text" name = "age" />
		Enter gender : <input type = "text" name = "gender" />
		Enter mobile : <input type = "text" name = "mobile" />
<!-- 		Enter groupId : <input type = "text" name = "groupId" /> -->
		<input type = "submit" value="Add member"/>
	</form>
	
<form action = "createBooking" method = "post">
<input type = "submit" value="BOOK"/>
</form>	
</body>
</html>