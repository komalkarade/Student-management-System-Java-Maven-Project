package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDAO;
import com.entity.Student;

public class RegisterStudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterStudentServlet() {
        super();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String firstName = req.getParameter("firstname");
            String middleName = req.getParameter("middlename");
            String lastName = req.getParameter("lastname");
            String contactNumber = req.getParameter("contactnumber");
            String city = req.getParameter("city");
            String email = req.getParameter("emailid");
            String gender = req.getParameter("gender");
            String country = req.getParameter("country");
            String bloodgroup = req.getParameter("bloodgroup");
            Integer userId = Integer.parseInt(req.getParameter("userid"));
            String password = req.getParameter("password");
            String confirmPassword = req.getParameter("confirmpassword");
            String securityQuestion = req.getParameter("securityquestion");
            String securityAnswer = req.getParameter("securityanswer");

            if (!password.equals(confirmPassword)) {
                resp.getWriter().println("Password and Confirm Password do not match.");
                return;
            }

            Student student = new Student(firstName, middleName, lastName, contactNumber, city, email, gender, country, bloodgroup, userId, password, confirmPassword, securityQuestion, securityAnswer);
            StudentDAO dao = new StudentDAO(DBConnect.getConn());
            boolean f = dao.addStudent(student);
            HttpSession session = req.getSession();

            try {
                if (f) {
                    session.setAttribute("succMsg", "Student Details submitted successfully");
                    resp.sendRedirect("index.jsp?registration=success");
                } else {
                    session.setAttribute("errorMsg", "Registration failed. Please check your inputs and try again.");
                    resp.sendRedirect("add_student.jsp?error=Registration failed. Please try again.");
                }
            } catch (Exception e) {
                e.printStackTrace();
                resp.sendRedirect("error.jsp?error=An unexpected error occurred during registration.");
            }
        } catch (NumberFormatException e) {
            resp.getWriter().println("Error: Invalid number format.");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("error.jsp?error=An unexpected error occurred during registration.");
        }
    }
}
