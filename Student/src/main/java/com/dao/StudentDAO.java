package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Student;

public class StudentDAO {

	private Connection conn;

	public StudentDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addStudent(Student student) {

		boolean f = false;

		try {
			String sql = "insert into student (firstname, middlename, lastname, contactnumber, city, emailid, gender, country, bloodgroup, userid, password,confirmpassword, securityquestion, securityanswer) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, student.getFirstname());
			ps.setString(2, student.getMiddlename());
			ps.setString(3, student.getLastname());
			ps.setString(4, student.getContactnumber());
			ps.setString(5, student.getCity());
			ps.setString(6, student.getEmailid());
			ps.setString(7, student.getGender());
			ps.setString(8, student.getCountry());
			ps.setString(9, student.getBloodgroup());
			ps.setInt(10, student.getUserid());
			ps.setString(11, student.getPassword());
			ps.setString(12, student.getConfirmpassword());
			ps.setString(13, student.getSecurityquestion());
			ps.setString(14, student.getSecurityanswer());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

     public List<Student> getAllStudent(){
    	 List<Student> list=new ArrayList<Student>();
    	 Student s=null;
    	 try {
    		 String sql="select *from student";
    		 PreparedStatement ps=conn.prepareStatement(sql);
    		 
    		 ResultSet rs=ps.executeQuery();
    		 
    		 while(rs.next()) {
    			 s=new Student();
    			 s.setFirstname(rs.getString(1));
    			 s.setMiddlename(rs.getString(2));
    			 s.setLastname(rs.getString(3));
    			 s.setContactnumber(rs.getString(4));
    			 s.setCity(rs.getString(5));
    			 s.setEmailid(rs.getString(6));
    			 s.setGender(rs.getString(7));
    			 s.setCountry(rs.getString(8));
    			 s.setBloodgroup(rs.getString(9));
    			 s.setUserid(rs.getInt(10));
    			 s.setPassword(rs.getString(11));
    			 s.setConfirmpassword(rs.getString(12));
    			 s.setSecurityquestion(rs.getString(13));
    			 s.setSecurityanswer(rs.getString(14));
                 list.add(s);
    		 }
    		 
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
		return list;
    	 
     }
     public Student getStudentById(int userid) {
    	 
    	 Student s=null;
    	 try {
    		 String sql="select *from student where userid=?";
    		 PreparedStatement ps=conn.prepareStatement(sql);
    		 ps.setInt(1, userid);
    		 ResultSet rs=ps.executeQuery();
    		 
    		 while(rs.next()) {
    			 s=new Student();
    			 s.setFirstname(rs.getString(1));
    			 s.setMiddlename(rs.getString(2));
    			 s.setLastname(rs.getString(3));
    			 s.setContactnumber(rs.getString(4));
    			 s.setCity(rs.getString(5));
    			 s.setEmailid(rs.getString(6));
    			 s.setGender(rs.getString(7));
    			 s.setCountry(rs.getString(8));
    			 s.setBloodgroup(rs.getString(9));
    			 s.setUserid(rs.getInt(10));
    			 s.setPassword(rs.getString(11));
    			 s.setConfirmpassword(rs.getString(12));
    			 s.setSecurityquestion(rs.getString(13));
    			 s.setSecurityanswer(rs.getString(14));
    		 }
    		 
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
		return s;
    	 
     }
     public boolean updateStudent(Student student) {
    	    boolean f = false;
    	    
    	    try {
    	        String sql = "UPDATE student SET firstname=?, middlename=?, lastname=?, contactnumber=?, city=?, emailid=?, gender=?, country=?, bloodgroup=?, password=?, confirmpassword=?, securityquestion=?, securityanswer=? WHERE userid=?";
    	            
    	        PreparedStatement ps = conn.prepareStatement(sql);
    	        ps.setString(1, student.getFirstname());
    	        ps.setString(2, student.getMiddlename());
    	        ps.setString(3, student.getLastname());
    	        ps.setString(4, student.getContactnumber());
    	        ps.setString(5, student.getCity());
    	        ps.setString(6, student.getEmailid());
    	        ps.setString(7, student.getGender());
    	        ps.setString(8, student.getCountry());
    	        ps.setString(9, student.getBloodgroup());
    	        ps.setString(10, student.getPassword());
    	        ps.setString(11, student.getConfirmpassword());
    	        ps.setString(12, student.getSecurityquestion());
    	        ps.setString(13, student.getSecurityanswer());
    	        ps.setInt(14, student.getUserid());

    	        int i = ps.executeUpdate();
    	        if (i == 1) {
    	            f = true;
    	        }
    	    } catch (Exception e) {
    	        e.printStackTrace();
    	    }
    	    return f;
    	}
     public boolean deleteStudent(int userid) {
    	 boolean f=false;
    	 try {
    		 
    		 String sql="delete from student where userid=?";
    		 
    		 PreparedStatement ps =conn.prepareStatement(sql);
    		 ps.setInt(1, userid);
    		 int i = ps.executeUpdate();
 	        if (i == 1) {
 	            f = true;
 	        }
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	 return f;
    	 
     }
}

