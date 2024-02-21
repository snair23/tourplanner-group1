<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="savePackage1" method="post">
    Enter your custom package name: <input type="text" name="packageName" /><br/>
    Enter package Id: <input type="text" name="packageId" /><br/>
    Select package budget :
    <select name="budget">
        <option value="low">Low</option>
        <option value="medium">Medium</option>
        <option value="high">High</option>
    </select>
    <br/>
    
    Select transportation mode between cities:
    <select name="transport">
        <option value="bus">Bus</option>
        <option value="car">Car</option>
        <option value="train">Train</option>
        <option value="plane">Plane</option>
    </select>
    <br/>
    
    <input type="submit" value="Next" />
</form>

</body>
</html>