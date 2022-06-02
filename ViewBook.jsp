<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Book"%>
<%@page import="java.util.List"%>
<%@page import="dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Store</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="background-color:pink;">
<div>
<div>
<%@include file="Navbar.jsp" %>
</div>

<h1 style="text-align: center;">Rutuja's Book Store</h1> 
<hr>  
</div>

<div>
<table class="table">

	<thead>
		<tr>
			<th style="text-align: center;">Sr.No</th>
			<th style="text-align: center;">Book Name</th>
			<th style="text-align: center;">Publication</th>
			<th style="text-align: center;">Author Name</th>
			<th style="text-align: center;">Available Quantity</th>
			<th style="text-align: center;">Price</th>
			<th style="text-align: center;">Action</th>
		</tr>
	</thead>
	<tbody>
	<%
	String msg = (String)request.getAttribute("msg");
	if(msg!=null){
		
        int status = (Integer)request.getAttribute("status");
		%>
		<p><%=msg %></p>
		<% 
	}
 
		BookDAO dao = new BookDAO();
	
		List<Book> bookList = dao.getAllBooks();
		
		if(!bookList.isEmpty()){
			int i =0 ;
			for(Book b :bookList){
				i++;
				%>
				
				<tr>
					<td style="text-align: center;"><%= i %></td>
					<td style="text-align: center;"><%= b.getBookName() %></td>
					<td style="text-align: center;"><%= b.getBookPublication()%></td>
					<td style="text-align: center;"><%= b.getBookAuthor() %></td>
					<td style="text-align: center;"><%= b.getBookQty() %></td>
					<td style="text-align: center;"><%= b.getBookPrice() %></td>
					<td style="text-align: center;">
					<a href="deleteBookServlet?bkId=<%=b.getBookId()%>"><button class="btn btn-danger">Delete</button></a>
						 / 
					<a href="toupdateBookServlet"><button class="btn btn-success">Update</button></a>	
					</td>
		</tr>
				
				<% 
			}
		}
	%>
	
		
	</tbody>
</table>

</div>


</body>
</html>