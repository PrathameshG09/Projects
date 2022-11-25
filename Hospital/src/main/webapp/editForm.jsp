<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	a:link,a:visited{
	text-decoration:none;
	
	
	}
	</style>

</head>
<body>
	<%@ page
		import="com.demo.hospital.HospitalManagement,com.demo.hospital.GetSet"%>

	<%
	String id = request.getParameter("id");
	GetSet gt = HospitalManagement.getPatientById(Integer.parseInt(id));
	%>
	<div>
		<div class="card">
			<div class="card-body">
				<h1>Hospital Management</h1>
			</div>
		</div>

	</div>

	<form action="Update.jsp" method="post">
		<div class="row g-3 align-items-center mt-5 m-5">
			<div class="col-auto">
				<label class="col-form-label">Patient Name :</label>
			</div>
			<div class="col-auto">
				<input type="text" class="form-control" name="pname"
					value="<%=gt.getPname()%>">
			</div>
		</div>

		<div class="row g-3 align-items-center mt-5 m-5">
			<div class="col-auto">
				<label class="col-form-label">Patient Bill :</label>
			</div>
			<div class="col-auto">
				<input type="text" class="form-control" name="bill"
					value="<%=gt.getBill()%>">
			</div>
		</div>

		<div class="row g-3 align-items-center mt-5 m-5">
			<div class="col-auto">
				<label class="col-form-label">Patient Disease :</label>
			</div>
			<div class="col-auto">
				<input type="text" class="form-control" name="disease"
					value="<%=gt.getDisease()%>">
			</div>
		</div>


		<div class="row g-3 align-items-center mt-5 m-5">
			<div class="col-auto">
				<input type="hidden" class="form-control" name="id"
					value="<%=gt.getId()%>">
			</div>
		</div>

		<button type="submit" class="btn btn-success">Update</button>
	</form>

</body>
</html>