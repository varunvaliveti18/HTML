<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
  .heading{
     text-align: center;
     font-size:48px;
     font-family:Arial;
     text-shadow: 5px 5px 5px black;
     color:red;
     text-decoration:underline;
  }
  
  #menu{
  list-style:none;
  }
  
  
  #menu li{
    float:left;margin:10px;
  
  }
  
  #menu li a{
  background-color:blue;
  color:white;
  text-decoration:none;
  padding: 5px;
  border-radius: 5px;
  box-shadow: 5px 5px 5px grey;
  }
  
  #menu li a:hover{
     background-color:yellow;
     color:black;
     text-decoration:underline;
  }
  
  
</style>
</head>
<body>
<%@include file = "Header.jsp" %>
<h1 align ="center">Home Page</h1>

<hr/>
<table cellpadding ="10" style = "margin :0 auto">



<tr>
<td><a href = "SkillFrm.jsp">Update Profile</a></td>
</tr>
<tr>
<td><a href = "QuizFrm.jsp">Play the Quiz</a></td>
</tr>


<tr>
<td><a href = "EligibleFrm.jsp">Eligible for java Developer</a></td>
</tr>
<tr>
<td><a href = "HtmlTutorial.jsp">Html Tutorial</a></td>
</tr>
</table>
</body>
</html>