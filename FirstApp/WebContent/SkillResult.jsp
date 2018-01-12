<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">your updates Profile</h1>
<hr/>
<table cellpadding ="10" bgcolor="wheat" style="margin: 0 auto">
		<tr>
			<td>Name</td>
			<td><%=request.getParameter("txtname") %></td>
		</tr>
		<tr>
			<td>Team</td>
			<td><%=request.getParameter("gen") %></td>
		</tr>
		<tr>
			<td>Skills</td>
			<td>
			<ul>
			<% String[] skills = request.getParameterValues("chkskills");	
			for(String str:skills){
				out.println("<li>" + str + "</li>");
			}
			%>></ul></td>
		</tr>
</body>
</html>