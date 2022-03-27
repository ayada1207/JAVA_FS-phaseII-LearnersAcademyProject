package com.learnersAcademy.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnersAcademy.dao.StudentDao;
import com.learnersAcademy.studentsBean.CourseBean;

@WebServlet("/addCourse")
public class AddCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private StudentDao studentDao = new StudentDao();
    public AddCourse() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("availableCourse.jsp");
		requestDispatcher.forward(request, response);  
     }  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseBean course = new CourseBean();
		
		String courseName = request.getParameter("courseName");
		String teacherName = request.getParameter("teacherName");
		
		course.setCourse(courseName);
		course.setTeacherName(teacherName);
		
		try {
			studentDao.registerCourse(course);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("registeredStudent.html");
		requestDispatcher.forward(request, response);
		}

}
