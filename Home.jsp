<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Store</title>
</head>
<body>
<div>

<div>
<%@include file="Navbar.jsp" %>
</div>

<h1 style="text-align: center;">Welcome to Book Store</h1>   

<%
	String msg = (String)request.getAttribute("msg");
	if(msg!=null){
		
        int status = (Integer)request.getAttribute("status");
		%>
		<p><%=msg %></p>
		<% 
	}
    		
	
		
%> 


</div>
<hr>
</body>
</html>