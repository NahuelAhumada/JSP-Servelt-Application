<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.nahuel.hibernate.entity.Files" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listing Images</title>
</head>
<body>
listing images
<%	
	List<Files> files= (List<Files>)request.getAttribute("files");
	for(Files file: files){
		out.print("<br>"+file+"</br>");
	}
%>
</body>
</html>