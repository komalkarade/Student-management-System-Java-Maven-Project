<%@page import="com.dao.StudentDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Student"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
<%@include file="all_css.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Student</p>


						<%
						String userIdParam = request.getParameter("id");
						if (userIdParam == null || userIdParam.isEmpty()) {
							// Handle the case where userIdParam is null or empty
							out.println("Invalid user ID");
							return;
						}

						int id = Integer.parseInt(userIdParam);
						StudentDAO dao = new StudentDAO(DBConnect.getConn());
						Student s = dao.getStudentById(id);
						%>


						<form action="UpdateStudentServlet" method="post">
							<div class="mb-3">
								<label class="form-label">First Name</label> <input type="text"
									value="<%=s.getFirstname()%>" class="form-control"
									name="firstname">


							</div>
							<div class="mb-3">
								<label class="form-label">Middle Name</label> <input type="text"
									value="<%=s.getMiddlename()%>" class="form-control"
									name="middlename">


							</div>
							<div class="mb-3">
								<label class="form-label">Last Name</label> <input type="text"
									value="<%=s.getLastname()%>" class="form-control"
									name="lastname">


							</div>
							<div class="mb-3">
								<label class="form-label">Contact Number</label> <input
									type="text" value="<%=s.getContactnumber()%>"
									class="
									form-control" name="contactnumber"
									pattern="[0-9]{10}"
									title="Please enter a 10-digit mobile number" required>
							</div>

							<div class="mb-3">
								<label class="form-label">City</label> <select
									class="form-select" name="city">
									<option value="Mumbai"
										<%=s.getCity().equals("Mumbai") ? "selected" : ""%>>Mumbai</option>
									<option value="Delhi"
										<%=s.getCity().equals("Delhi") ? "selected" : ""%>>Delhi</option>
									<option value="Bangalore"
										<%=s.getCity().equals("Bangalore") ? "selected" : ""%>>Bangalore</option>
									<option value="Hyderabad"
										<%=s.getCity().equals("Hyderabad") ? "selected" : ""%>>Hyderabad</option>
									<option value="Chennai"
										<%=s.getCity().equals("Chennai") ? "selected" : ""%>>Chennai</option>
									<option value="Kolkata"
										<%=s.getCity().equals("Kolkata") ? "selected" : ""%>>Kolkata</option>
									<option value="Ahmedabad"
										<%=s.getCity().equals("Ahmedabad") ? "selected" : ""%>>Ahmedabad</option>
									<option value="Pune"
										<%=s.getCity().equals("Pune") ? "selected" : ""%>>Pune</option>
									<option value="Jaipur"
										<%=s.getCity().equals("Jaipur") ? "selected" : ""%>>Jaipur</option>
									<option value="Lucknow"
										<%=s.getCity().equals("Lucknow") ? "selected" : ""%>>Lucknow</option>
									<option value="Kanpur"
										<%=s.getCity().equals("Kanpur") ? "selected" : ""%>>Kanpur</option>
									<option value="Nagpur"
										<%=s.getCity().equals("Nagpur") ? "selected" : ""%>>Nagpur</option>
									<option value="Indore"
										<%=s.getCity().equals("Indore") ? "selected" : ""%>>Indore</option>
									<option value="Bhopal"
										<%=s.getCity().equals("Bhopal") ? "selected" : ""%>>Bhopal</option>
									<option value="Patna"
										<%=s.getCity().equals("Patna") ? "selected" : ""%>>Patna</option>
									<option value="Vadodara"
										<%=s.getCity().equals("Vadodara") ? "selected" : ""%>>Vadodara</option>
									<option value="Coimbatore"
										<%=s.getCity().equals("Coimbatore") ? "selected" : ""%>>Coimbatore</option>
									<option value="Ludhiana"
										<%=s.getCity().equals("Ludhiana") ? "selected" : ""%>>Ludhiana</option>
									<option value="Agra"
										<%=s.getCity().equals("Agra") ? "selected" : ""%>>Agra</option>
									<option value="Nashik"
										<%=s.getCity().equals("Nashik") ? "selected" : ""%>>Nashik</option>
								</select>
							</div>


							<div class="mb-3">
								<label class="form-label">Email ID</label> <input type="text"
									class="form-control" name="emailid" value="<%=s.getEmailid()%>"
									pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
									title="Please enter a valid email address" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Gender</label>
								<div>
									<input type="radio" name="gender" value="male"
										<%=s.getGender().equals("male") ? "checked" : ""%> required>
									Male <input type="radio" name="gender" value="female"
										<%=s.getGender().equals("female") ? "checked" : ""%> required>
									Female <input type="radio" name="gender" value="other"
										<%=s.getGender().equals("other") ? "checked" : ""%> required>
									Other
								</div>
							</div>

							<div class="mb-3">
								<label class="form-label">Country</label> <select
									class="form-select" name="country">
									<option value="India"
										<%=s.getCountry().equals("India") ? "selected" : ""%>>India</option>
									<option value="United States"
										<%=s.getCountry().equals("United States") ? "selected" : ""%>>United
										States</option>
									<option value="Canada"
										<%=s.getCountry().equals("Canada") ? "selected" : ""%>>Canada</option>
									<option value="United Kingdom"
										<%=s.getCountry().equals("United Kingdom") ? "selected" : ""%>>United
										Kingdom</option>
									<option value="Australia"
										<%=s.getCountry().equals("Australia") ? "selected" : ""%>>Australia</option>
									<option value="Germany"
										<%=s.getCountry().equals("Germany") ? "selected" : ""%>>Germany</option>
									<option value="France"
										<%=s.getCountry().equals("France") ? "selected" : ""%>>France</option>
									<option value="Brazil"
										<%=s.getCountry().equals("Brazil") ? "selected" : ""%>>Brazil</option>
									<option value="China"
										<%=s.getCountry().equals("China") ? "selected" : ""%>>China</option>
									<option value="Japan"
										<%=s.getCountry().equals("Japan") ? "selected" : ""%>>Japan</option>
									<option value="South Africa"
										<%=s.getCountry().equals("South Africa") ? "selected" : ""%>>South
										Africa</option>
									<option value="Mexico"
										<%=s.getCountry().equals("Mexico") ? "selected" : ""%>>Mexico</option>
									<option value="Spain"
										<%=s.getCountry().equals("Spain") ? "selected" : ""%>>Spain</option>
									<option value="Italy"
										<%=s.getCountry().equals("Italy") ? "selected" : ""%>>Italy</option>
									<option value="Russia"
										<%=s.getCountry().equals("Russia") ? "selected" : ""%>>Russia</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Blood Group</label> <select
									class="form-select" name="bloodgroup">
									<option value="A+"
										<%=s.getBloodgroup().equals("A+") ? "selected" : ""%>>A+</option>
									<option value="A-"
										<%=s.getBloodgroup().equals("A-") ? "selected" : ""%>>A-</option>
									<option value="B+"
										<%=s.getBloodgroup().equals("B+") ? "selected" : ""%>>B+</option>
									<option value="B-"
										<%=s.getBloodgroup().equals("B-") ? "selected" : ""%>>B-</option>
									<option value="AB+"
										<%=s.getBloodgroup().equals("AB+") ? "selected" : ""%>>AB+</option>
									<option value="AB-"
										<%=s.getBloodgroup().equals("AB-") ? "selected" : ""%>>AB-</option>
									<option value="O+"
										<%=s.getBloodgroup().equals("O+") ? "selected" : ""%>>O+</option>
									<option value="O-"
										<%=s.getBloodgroup().equals("O-") ? "selected" : ""%>>O-</option>
								</select>
							</div>


							<div class="mb-3">
								<label class="form-label">User ID</label> <input type="text"
									name="userid" class="form-control" value=<%=s.getUserid()%>
									readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" class="form-control"
									value="<%=s.getPassword()%>" name="password">
							</div>
							<div class="mb-3">
								<label class="form-label">Confirm Password</label> <input
									type="password" class="form-control" name="confirmpassword"
									value="<%=s.getConfirmpassword()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Security Question</label> <select
									class="form-select" name="securityquestion">
									<option value="What is your mother's maiden name?"
										<%=s.getSecurityquestion().equals("What is your mother's maiden name?") ? "selected" : ""%>>What
										is your mother's maiden name?</option>
									<option value="In which city were you born?"
										<%=s.getSecurityquestion().equals("In which city were you born?") ? "selected" : ""%>>In
										which city were you born?</option>
									<option value="What is the name of your first pet?"
										<%=s.getSecurityquestion().equals("What is the name of your first pet?") ? "selected" : ""%>>What
										is the name of your first pet?</option>
									<option value="What is your favorite book?"
										<%=s.getSecurityquestion().equals("What is your favorite book?") ? "selected" : ""%>>What
										is your favorite book?</option>
									<option value="What is the make and model of your first car?"
										<%=s.getSecurityquestion().equals("What is the make and model of your first car?") ? "selected" : ""%>>What
										is the make and model of your first car?</option>
									<option
										value="In which year did you graduate from high school?"
										<%=s.getSecurityquestion().equals("In which year did you graduate from high school?") ? "selected" : ""%>>In
										which year did you graduate from high school?</option>
									<option value="What is your favorite movie?"
										<%=s.getSecurityquestion().equals("What is your favorite movie?") ? "selected" : ""%>>What
										is your favorite movie?</option>
									<option value="Who is your favorite historical figure?"
										<%=s.getSecurityquestion().equals("Who is your favorite historical figure?") ? "selected" : ""%>>Who
										is your favorite historical figure?</option>
									<option
										value="What is the name of your best friend from childhood?"
										<%=s.getSecurityquestion().equals("What is the name of your best friend from childhood?") ? "selected" : ""%>>What
										is the name of your best friend from childhood?</option>
									<option value="What is your favorite color?"
										<%=s.getSecurityquestion().equals("What is your favorite color?") ? "selected" : ""%>>What
										is your favorite color?</option>
									<option value="What is your favorite holiday destination?"
										<%=s.getSecurityquestion().equals("What is your favorite holiday destination?") ? "selected" : ""%>>What
										is your favorite holiday destination?</option>
									<option value="What is the name of your favorite teacher?"
										<%=s.getSecurityquestion().equals("What is the name of your favorite teacher?") ? "selected" : ""%>>What
										is the name of your favorite teacher?</option>
									<option
										value="What is the last name of your favorite actor/actress?"
										<%=s.getSecurityquestion().equals("What is the last name of your favorite actor/actress?") ? "selected" : ""%>>What
										is the last name of your favorite actor/actress?</option>
									<option value="What is the name of the street you grew up on?"
										<%=s.getSecurityquestion().equals("What is the name of the street you grew up on?") ? "selected" : ""%>>What
										is the name of the street you grew up on?</option>
								</select>
							</div>


							<div class="mb-3">
								<label class="form-label">Security Answer</label> <input
									type="text" class="form-control"
									value="<%=s.getSecurityanswer()%>" name="securityanswer">
							</div>

							<input type="hidden" name="userid" value="<%= s.getUserid() %>">
							<button type="submit" class="btn btn-primary  col-md-12">Update</button>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>