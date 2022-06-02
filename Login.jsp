<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Store</title>
</head>
<body style="background-color:pink;">
<h1 text align="center" >Welcome to Book Store</h1>

<form text align="center"  action="LoginServlet" method="post">
	UserName : <input type="text" name="uname">
	<br>
	<br>	
       Password : <input type="password" name="upass">
	<br>
	<br>

<%
	String msg = (String)request.getAttribute("lmsg");

	if(msg!=null){
		%>
		
		<p style="color: red;"><%=msg %></p>
		<% 
	}
%> 
	<input type="submit" value="Login">
</form>

</body>
</html>