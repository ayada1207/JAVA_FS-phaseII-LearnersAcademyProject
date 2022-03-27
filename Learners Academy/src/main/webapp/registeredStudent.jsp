<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Student in Academy </title>
</head>
<body>
 <div class ="table-content">
  <div>	
  <h1 align="center">Registered Student in Academy</h1>
  <table align="center" cellpadding="0" cellspacing="0" border=1 width=70% height=50%>
  <thead>
  <tr>
  <th>First Name</th>
  <th>Last Name</th>
  <th>Father Name</th>
  <th>Course</th>
  <th>Gender</th>
  <th>Reg. Number</th>
  <th>UserId</th>
  </tr>
  </thead>
  
  </table>
  </div>
 <table cellpadding="0" cellspacing="0" align="center" border=1 width=70% height=50%>
 <tbody>
 
 <%@page import="java.sql.*"%>
<%
String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";  
String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
String USER = "SYSTEM";
String pass = "Arpiit";
Connection dbConn = null;
Statement st = null;
ResultSet rs = null;
try
{     
     //Registro il driver del database
    Class.forName(JDBC_DRIVER);
    // Connessione al db tramite il driver
    dbConn = DriverManager.getConnection(DB_URL, USER, pass);
    if(!dbConn.isClosed())
    {
       
    }
     st = dbConn.createStatement();
     rs = st.executeQuery("SELECT * FROM STUDENTS_RECORDS");

    String code="";
    String name="";
    String continent="";


    while(rs.next())
    {   
      %> 
      <tr>
      <td><%=rs.getString(1) %></td>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
      <td><%=rs.getString(6) %></td>
      <td><%=rs.getString(7) %></td>
      </tr>
      </tbody>
      <%}}
catch (SQLException e) 
{
    // TODO Auto-generated catch block
    e.printStackTrace();
}
%>
 </table>
 
 </div>
</body>
</html>