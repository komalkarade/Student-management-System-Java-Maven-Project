<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<%@include file="all_css.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Student</p>


						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-success">${errorMsg}</p>
							<c:remove var="errorMsg" />
						</c:if>


						<form action="RegisterStudentServlet" method="POST">

							<div class="mb-3">
								<label class="form-label">First Name</label> <input type="text"
									class="form-control" name="firstname">


							</div>
							<div class="mb-3">
								<label class="form-label">Middle Name</label> <input type="text"
									class="form-control" name="middlename">


							</div>
							<div class="mb-3">
								<label class="form-label">Last Name</label> <input type="text"
									class="form-control" name="lastname">


							</div>
							<div class="mb-3">
								<label class="form-label">Contact Number</label> <input
									type="text" class="form-control" name="contactnumber"
									pattern="[0-9]{10}"
									title="Please enter a 10-digit mobile number" required>
							</div>

							<div class="mb-3">
								<label class="form-label">City</label> <select
									class="form-select" name="city">
									<option value="Mumbai">Mumbai</option>
									<option value="Delhi">Delhi</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Chennai">Chennai</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Ahmedabad">Ahmedabad</option>
									<option value="Pune">Pune</option>
									<option value="Jaipur">Jaipur</option>
									<option value="Lucknow">Lucknow</option>
									<option value="Kanpur">Kanpur</option>
									<option value="Nagpur">Nagpur</option>
									<option value="Indore">Indore</option>
									<option value="Bhopal">Bhopal</option>
									<option value="Patna">Patna</option>
									<option value="Vadodara">Vadodara</option>
									<option value="Coimbatore">Coimbatore</option>
									<option value="Ludhiana">Ludhiana</option>
									<option value="Agra">Agra</option>
									<option value="Nashik">Nashik</option>
								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email ID</label> <input type="text"
									class="form-control" name="emailid"
									title="Please enter a valid email address" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Gender</label>
								<div>

									<input type="radio" name="gender" id="male" value="male"
										checked> <label for="male">Male</label> <input
										type="radio" name="gender" id="female" value="female">
									<label for="female">Female</label> <input type="radio"
										name="gender" id="other" value="female"> <label
										for="female">Other</label>
									<!-- <input type="radio" value="male" required > Male <input
										type="radio" name="gender" value="female" required>
									Female 
									<input type="radio" name="gender" value="other" required>
									other -->

								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">Country</label> <select
									class="form-select" name="country">
									<option value="India">India</option>
									<option value="United States">United States</option>
									<option value="Canada">Canada</option>
									<option value="United Kingdom">United Kingdom</option>
									<option value="Australia">Australia</option>
									<option value="Germany">Germany</option>
									<option value="France">France</option>
									<option value="Brazil">Brazil</option>
									<option value="China">China</option>
									<option value="Japan">Japan</option>
									<option value="South Africa">South Africa</option>
									<option value="Mexico">Mexico</option>
									<option value="Spain">Spain</option>
									<option value="Italy">Italy</option>
									<option value="Russia">Russia</option>
									<option value="Argentina">Argentina</option>
									<option value="Nigeria">Nigeria</option>
									<option value="Saudi Arabia">Saudi Arabia</option>
									<option value="South Korea">South Korea</option>
									<option value="Singapore">Singapore</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Blood Group</label> <select
									class="form-select" name="bloodgroup">
									<option value="A+">A+</option>
									<option value="A-">A-</option>
									<option value="B+">B+</option>
									<option value="B-">B-</option>
									<option value="AB+">AB+</option>
									<option value="AB-">AB-</option>
									<option value="O+">O+</option>
									<option value="O-">O-</option>
								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">User ID</label> <input type="text"
									name="userid" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" class="form-control" name="password">
							</div>
							<div class="mb-3">
								<label class="form-label">Confirm Password</label> <input
									type="password" class="form-control" name="confirmpassword">
							</div>
							<div class="mb-3">
								<label class="form-label">Security Question</label> <select
									class="form-select" name="securityquestion">
									<option value="What is your mother's maiden name?">What
										is your mother's maiden name?</option>
									<option value="In which city were you born?">In which
										city were you born?</option>
									<option value="What is the name of your first pet?">What
										is the name of your first pet?</option>
									<option value="What is your favorite book?">What is
										your favorite book?</option>
									<option value="What is the make and model of your first car?">What
										is the make and model of your first car?</option>
									<option
										value="In which year did you graduate from high school?">In
										which year did you graduate from high school?</option>
									<option value="What is your favorite movie?">What is
										your favorite movie?</option>
									<option value="Who is your favorite historical figure?">Who
										is your favorite historical figure?</option>
									<option
										value="What is the name of your best friend from childhood?">What
										is the name of your best friend from childhood?</option>
									<option value="What is your favorite color?">What is
										your favorite color?</option>
									<option value="What is your favorite holiday destination?">What
										is your favorite holiday destination?</option>
									<option value="What is the name of your favorite teacher?">What
										is the name of your favorite teacher?</option>
									<option
										value="What is the last name of your favorite actor/actress?">What
										is the last name of your favorite actor/actress?</option>
									<option value="What is the name of the street you grew up on?">What
										is the name of the street you grew up on?</option>
									<option value="What is your favorite food?">What is
										your favorite food?</option>
									<option value="What is the name of your childhood hero?">What
										is the name of your childhood hero?</option>
									<option
										value="In which country would you like to live for a year?">In
										which country would you like to live for a year?</option>
									<option value="What is the name of your favorite sports team?">What
										is the name of your favorite sports team?</option>
									<option
										value="What is the name of the first company you worked for?">What
										is the name of the first company you worked for?</option>
									<option value="What is your favorite type of music?">What
										is your favorite type of music?</option>
								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Security Answer</label> <input
									type="text" class="form-control" name="securityanswer">
							</div>
							<button type="submit" class="btn btn-primary col-ms-4">Submit</button>
							<button type="reset" class="btn btn-primary col-ms-4">Reset</button>

						</form>
						<p>
							<a href="index.html">Back to Home</a>
						</p>

						<%-- Display error message if registration fails --%>
						<%
						String error = request.getParameter("error");
						if (error != null && error.equals("1")) {
						%>
						<p style="color: red;">Registration failed. Please try again.</p>
						<%
						}
						%>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>