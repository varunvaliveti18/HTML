<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Tax Calculation</h1>
	<div align = "center">
<%=application.getInitParameter("headstr") %><br/>
<a href = "<%=application.getInitParameter("homepg")%>">Home</a>
</div>
	<hr />
	<form action="tax">
		<table>
			<tr>
				<td>Employee name</td>
				<td><input type="text" name ="txtname"/></td>
			</tr>
<tr>
				<td>Annual Income</td>
				<td><input type="text" name = "txtincome"/></td>
			</tr>

<tr>
				<td colspan="2" align="center"></td>
				<td><input type="submit" value="col tax"/></td>
			</tr>
		</table>

	</form>
</body>
</html>