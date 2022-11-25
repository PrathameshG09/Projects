<%@page import="com.demo.hospital.HospitalManagement"%>
<jsp:useBean id="set" class="com.demo.hospital.GetSet"></jsp:useBean>
<jsp:setProperty property="*" name="set" />

<%
int i = HospitalManagement.update(set);

response.sendRedirect(" view.jsp ");
%>