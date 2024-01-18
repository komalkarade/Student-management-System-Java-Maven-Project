<%@page import="com.dao.StudentDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Student"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>


	<div class="container p-3">

		<p class="text-center fs-1">All Student Details</p>
		<c:if test="${not empty succMsg}">
			<p class="text-center text-success">${succMsg}</p>
			<c:remove var="succMsg" />
		</c:if>

		<c:if test="${not empty errorMsg}">
			<p class="text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" />
		</c:if>


		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">firstname</th>
					<th scope="col">middlename</th>
					<th scope="col">lastname</th>
					<th scope="col">contactnumber</th>
					<th scope="col">city</th>
					<th scope="col">emailid</th>
					<th scope="col">gender</th>
					<th scope="col">country</th>
					<th scope="col">bloodgroup</th>
					<th scope="col">userid</th>
					<th scope="col">password</th>
					<th scope="col">confirmpassword</th>
					<th scope="col">securityquestion</th>
					<th scope="col">securityanswer</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>

				<%
				StudentDAO dao = new StudentDAO(DBConnect.getConn());
				List<Student> list = dao.getAllStudent();
				int counter = 1;
				for (Student s : list) {
				%>
				<tr>
					<th scope="row"><%=counter%></th>
					<td><%=s.getFirstname()%></td>
					<td><%=s.getMiddlename()%></td>
					<td><%=s.getLastname()%></td>
					<td><%=s.getContactnumber()%></td>
					<td><%=s.getCity()%></td>
					<td><%=s.getEmailid()%></td>
					<td><%=s.getGender()%></td>
					<td><%=s.getCountry()%></td>
					<td><%=s.getBloodgroup()%></td>
					<td><%=s.getUserid()%></td>
					<td><%=s.getPassword()%></td>
					<td><%=s.getConfirmpassword()%></td>
					<td><%=s.getSecurityquestion()%></td>
					<td><%=s.getSecurityanswer()%></td>
					<td><a href="edit_student.jsp?id=<%=s.getUserid()%>"
						class="btn btn-sm btn-primary">Edit</a></td>
					<td><a href="delete?userid=<%=s.getUserid()%>"
						class="btn btn-sm btn-danger ms-1">Delete</a></td>
				</tr>

				<%
				counter++;

				}
				%>

				<tr>
					<th scope="row">2</th>
					<td colspan="2">Jacob</td>
					<td>Thornton</td>
					<td>9876543210</td>
					<td>Chicago</td>
					<td>jacob@example.com</td>
					<td>Male</td>
					<td>United States</td>
					<td>A-</td>
					<td>jacob_user</td>
					<td>********</td>
					<td>********</td>
					<td>What is your favorite animal?</td>
					<td>Dog</td>
					<td><a href="edit_student.jsp" class="btn btn-sm btn-primary">Edit</a></td>
					<td><a href="" class="btn btn-sm btn-danger ms-1">Delete</a></td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td colspan="2">Larry</td>
					<td>Bird</td>
					<td>8765432109</td>
					<td>Seattle</td>
					<td>larry@example.com</td>
					<td>Male</td>
					<td>United States</td>
					<td>B+</td>
					<td>larry_user</td>
					<td>********</td>
					<td>********</td>
					<td>What is your favorite food?</td>
					<td>Pizza</td>
					<td><a href="edit_student.jsp" class="btn btn-sm btn-primary">Edit</a></td>
					<td><a href="" class="btn btn-sm btn-danger ms-1">Delete</a></td>
				</tr>
			</tbody>
		</table>

	</div>

</body>
</html>
