<%@page import="dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<div>
<div>
<%@include file="Navbar.jsp" %>
</div>

<h1 style="text-align: center;">Rutuja's Book Store</h1> 
<hr>  
</div>

<div>
		
<%
   BookDAO dao = new BookDAO();
   	
%>	
<form action="AddBookServlet" method="post">
<%
	System.out.println("Book Id : "+dao.getBookId());
%>
Book Id : <input type="text" name="bkId" value="<%= dao.getBookId()%>" readonly="readonly">
<br>
<br>
Book Name : <input type="text" name="bkName">
<br>
<br>
Book Price : <input type="text" name="bkPrice">
<br>
<br>
Publication : <input type="text" name="bkPublication">
<br>
<br>
Author Name : <input type="text" name="bkAuthor">
<br>
<br>
Total Quantity :<input type="text" name="bkQty">
<br>
<br>

<div>
<input class="btn btn-success" type="submit" value="Add">

<input class="btn btn-primary" type="reset" value="Clear">

</div> 

</form>
</div>
</body>
</html>