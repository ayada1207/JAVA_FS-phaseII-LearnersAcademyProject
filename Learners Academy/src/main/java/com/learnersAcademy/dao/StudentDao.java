package com.learnersAcademy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.learnersAcademy.studentsBean.CourseBean;
import com.learnersAcademy.studentsBean.StudentBean;

public class StudentDao {

	public int registerStudent(StudentBean studentBean) throws SQLException, ClassNotFoundException {
		String insert_Student = "INSERT INTO STUDENTS_RECORDS" + "(firstName,lastName,fatherName,course,gender,regNumber,username,password) VALUES "+"(?,?,?,?,?,?,?,?)";
		int result =0;
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		try (
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Arpiit");
		PreparedStatement pmt = con.prepareStatement(insert_Student)){
			pmt.setString(1,studentBean.getFirstName());
			pmt.setString(2,studentBean.getLastName());
			pmt.setString(3,studentBean.getFatherName());
			pmt.setString(4,studentBean.getCourse());
			pmt.setString(5,studentBean.getGender());
			pmt.setString(6,studentBean.getRegNumber());
			pmt.setString(7,studentBean.getUsername());
			pmt.setString(8,studentBean.getPassword());
			
			result = pmt.executeUpdate();
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return result;
		
	}
	
	public int registerCourse(CourseBean course) throws ClassNotFoundException {
		String insert_Student = "INSERT INTO NEWCOURSE" + "(course,teacherName) VALUES "+"(?,?)";
		int result =0;
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		try (
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Arpiit");
		PreparedStatement pmt = con.prepareStatement(insert_Student)){
			pmt.setString(1,course.getCourse());
			pmt.setString(2,course.getTeacherName());
			
			result = pmt.executeUpdate();
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return result;
	}
	
}
