<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<style>
	body{
	background-image:url("hospital.jpg");
	background-size:cover;
	background-position:center;
	}
	button:hover{
	color:blue;
	
	
	}
	a:link,a:visited{
	text-decoration:none;
	
	
	}
	</style>
</head>
<body>

	<%@ page
		import="com.demo.hospital.HospitalManagement,com.demo.hospital.GetSet,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h1 style="font-family:monospace">Patient Data</h1>
	<%
	List<GetSet> li = HospitalManagement.select();
	request.setAttribute("l", li);
	%>
	<table class="table table-bordered border-primary" border="1" width="90%" >
		<tr class="table-warning">
			<th>Patient Id</th>
			<th>Patient Name</th>

			<th>Patient Disease</th>
			<th>Patient Bill</th>

			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach items="${l}" var="b">
			<tr class="table-success">
				<td>${b.getId()}</td>
				<td>${b.getPname()}</td>

				<td>${b.getDisease()}</td>

				<td>${b.getBill()}</td>

				<td><button type="submit" class="btn btn-warning" ><a href="editForm.jsp?id=${b.getId()} "style="color:white">Edit</a></button></td>
				<td><button type="submit" class="btn btn-danger" ><a href="delete.jsp?id=${b.getId()}"style="color:white">Delete</a></button></td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
	<br>
	
	<button type="submit" class="btn btn-success" >
		<a href="index.html"  style="color:white ">Go To Hospital Management</a>

</body>
</html>