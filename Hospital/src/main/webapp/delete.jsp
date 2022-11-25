<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="com.demo.hospital.HospitalManagement" %>

<%
String id=request.getParameter("id");
int i = HospitalManagement.delete(Integer.parseInt(id));

   if(i>0)
   {
	   response.sendRedirect(" view.jsp ");

   }
%>

</body>
</html>