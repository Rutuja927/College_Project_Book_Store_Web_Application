<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Store</title>
</head>
<body style="background-color:pink;">
<div>
<div>
<%@include file="Navbar.jsp" %>
</div>

<h1 style="text-align: center;">Rutuja's Book Store</h1>   
<hr>
</div>

<form action="">

<fieldset>
    <legend>Customer Details:</legend>
    Invoice ID : <input type="text" name="invoiceNo">
    <br>
    <br>
    Customer Name : <input type="text" name="custName">
    <br>
    <br>
    Customer Number :<input type="text" name="custMno">
    <br>
    <br>
    Date : <input type="date" name="saleDate">
    <br>
    <br>
</fieldset>     
<fieldset>
    <legend>Sale Details:</legend>
    
    Book Name : <input type="text" name="bkName">
    <br>
    <br>
    Publication : <input type="text" name="bkPublication">
    <br>
    <br>
    Author : <input type="text" name="bkAuthor">
    <br>
    <br>
    Quantity : <input type="text" name="bkQty">
    <br>
    <br>
    Price : <input type="text" name="bkPrice">
    <br>
    <br>
          
     Bill Amount : <input type="text" name="billamt">
     <br>
     <br>
    
    <input type="submit" value="Sale">
    <input type="reset" value="Clear">
      
</fieldset> 



</form>
</body>
</html>