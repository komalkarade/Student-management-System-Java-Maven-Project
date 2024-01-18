package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDAO;

public class DeleteStudentServlet extends HttpServlet  {


	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer userid = Integer.parseInt(req.getParameter("userid"));
             
        
        StudentDAO dao = new StudentDAO(DBConnect.getConn());
        boolean f = dao.deleteStudent(userid);
        
        HttpSession session = req.getSession();
        if (f) {
            session.setAttribute("succMsg", "Student Details Delete Successfully");
            resp.sendRedirect("index.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong");
            resp.sendRedirect("index.jsp");
        }
}

	}


