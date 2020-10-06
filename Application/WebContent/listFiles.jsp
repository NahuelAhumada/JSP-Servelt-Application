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
<%! String form; int fileId;%>
<% 
	%>
<h1>Listing images</h1>

<table border="1">
<tr>
<th>Preview</th>
<th>Available information</th>
<th>Update information</th>
<th>Available Action</th>
<%	
	String path=(String)request.getAttribute("path");
	List<Files> files= (List<Files>)request.getAttribute("files");
	for(Files file: files){
		out.print("<tr><td><img src="+path+file.getFile_name()+" height='200'></td>");
		fileId=file.getId();
		out.print("<td><ul> "+
				"<li> File id: "+file.getId()+"</li>"+
				"<li> File name: "+file.getFile_name()+"</li>"+
				"<li> File label: "+file.getLabel()+"</li>"+
				"<li> File caption: "+file.getCaption()+"</li>"+
				"</ul></td>");
		String form="<form action='FilesHandler' method='post'>"+
				"Label: <input type='text' name='label'/><br></br>"+
				"Caption: <input type='text' name='caption'/><br></br>"+
				"<input type='hidden' name='fileId' value='"+fileId+"'/>"+
				"<input type='hidden' name='fileName' value='"+file.getFile_name()+"'/>"+
				"<input type='hidden' name='action' value='updateInformation'/>"+
				"<input type='submit' value='Update'/>";
		out.print("<td>"+form+"</td>");
		out.print("<td><ul><li><a href='"+request.getContextPath()+"/FilesHandler?action=viewImage&fileId="+
				file.getId()+"'>View Image</a></li>");
		out.print("<li><a href='"+request.getContextPath()+"/FilesHandler?action=deleteImage&fileId="+
				file.getId()+"'>Delete Image</a></li></ul></td></tr>");
				
	}
%>




</table>
</body>
</html>