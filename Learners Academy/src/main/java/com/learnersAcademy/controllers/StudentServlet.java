package com.learnersAcademy.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnersAcademy.dao.StudentDao;
import com.learnersAcademy.studentsBean.StudentBean;

/**
 * Servlet implementation class EmployeeServlet
 */

@WebServlet("/studentRegistration")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private StudentDao studentDao = new StudentDao();
    public StudentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminHome.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String fatherName = request.getParameter("fatherName");
	String course = request.getParameter("course");
	String gender = request.getParameter("gender");
	String regNumber = request.getParameter("regNumber");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	StudentBean studentBean = new StudentBean();
	studentBean.setFirstName(firstName);
	studentBean.setLastName(lastName);
	studentBean.setFatherName(fatherName);
	studentBean.setCourse(course);
	studentBean.setGender(gender);
	studentBean.setRegNumber(regNumber);
	studentBean.setUsername(username);
	studentBean.setPassword(password);
	
	try {
		studentDao.registerStudent(studentBean);
	} catch (ClassNotFoundException | SQLException e) {
		
		e.printStackTrace();
	}
	RequestDispatcher requestDispatcher = request.getRequestDispatcher("registeredStudent.html");
	requestDispatcher.forward(request, response);
	}

}
