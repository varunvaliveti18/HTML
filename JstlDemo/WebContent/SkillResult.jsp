<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file = "Header.jsp" %>
	<h1 align="center">your updated Profile</h1>
	
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto">
		<tr>
			<td>Name</td>
			<td>${param.txtname}</td>
		</tr>
		<tr>
			<td>Team</td>
			<td>${param.gen}</td>
		</tr>
		<tr>
			<td>Skills</td>
			<td>
				<ul>
					<c:forEach items="${paramValues.chkskills}" var="str">
						<li>${str}</li>
					</c:forEach>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Images</td>
			<td><c:forEach begin ="1" end="3" var = "idx">
					<img src="images/image${idx}.jpg" height="50" width="50" />

				</c:forEach></td>
		</tr>
	</table>
</body>
</html>