<%@ page import="com.demo.hospital.HospitalManagement"%>

<jsp:useBean id="u" class="com.demo.hospital.GetSet"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
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

<%
int i = com.demo.hospital.HospitalManagement.insert(u);

if (i > 0) {
	out.print("<h1>record inserted</h1>");
} else {
	out.print("<h1>record not inserted</h1>");
}
%>
<button type="submit" class="btn btn-primary m-3" >
		<a href="view.jsp"  style="color:white ">View</a>
	</button>
</body>
</html>