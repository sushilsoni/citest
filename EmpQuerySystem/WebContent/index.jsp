<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accenture Online Employee Query System</title>
</head>
<body>
Wellcome to Accenture Online Query System

<form action="SearchEmployee.jsp" method="post">
<br><br><br>
Employee name :<input type="text" name="Name" /><br>
Employee ID :<input type="password" name="ID" /><br>
<input type="submit" name="Search Empoyee"/>

</form>

<form action="/QueryServelet" method="get">
<input type="submit" name="Show Exiting Employee Data"/>
</form>


</body>
</html>