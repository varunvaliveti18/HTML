<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="sapient.css" rel="stylesheet">
<link href="catlog.css" rel="stylesheet">
<style>
table div {
	background-color: orange;
	position: absolute;
	border: 1px solid red;
	padding: 5px;
}

</style>
<script>
	function display(id) {
		document.getElementById(id).style.display = 'block';

	}
</script>
</head>
<body>
	<%@include file="Header.jsp"%>
	<section id="catlog">
		<h2>Employee List</h2>
		<div align="center">
		${msg}
			<h3>Page:${pgno}</h3>
		</div>
		<table>
			<thead>
				<tr>
					<th>Image</th>
					<th>Emp Id</th>
					<th>Emp Name</th>
					<th>Salary</th>
					<th>DOJ</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${emplist}" var="e">
					<tr>
						<td><img src="photos/${e.empId}.jpg" /></td>
						<td>${e.empId}</td>
						<td>${e.empName}</td>
						<td>${e.sal}</td>
						<td>${e.doj}</td>
						<td><input type="button" onclick="display(${e.empId})"
							value="edit" />
							<div id="${e.empId}" style="display: none">
								<h4 align="center" style="background-color: red; color: black">Update
									Employee</h4>
									<form action="update">
										<fieldset>
											Emp ID ${e.empId} <br /> <br />
											 Salary <input type="text" name="txtsal" /><br /><br/> 
											 <input type="hidden" name="hideid" value="${e.empId}"/>
											  <input type="hidden" name="pgid" value="${pgno}"/>
											 <input type="submit" value="update" />
										</fieldset>


									</form>
								
							</div></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3"><c:if test="${pgno>1}">
							<a href="viewall?pg=${pgno-1}">prev</a></td>
					</c:if>
					<td colspan="3" align="right"><c:if
							test="${pgno<applicationScope.esize}">
							<a href="viewall?pg=${pgno+1}">next</a></td>
					</c:if>
				</tr>
			</tbody>
		</table>

	</section>
	<%@include file="Footer.jsp"%>
</body>
</html>