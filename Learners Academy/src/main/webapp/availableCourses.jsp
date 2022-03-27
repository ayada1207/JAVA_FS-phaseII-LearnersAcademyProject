<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class ="table-content">
  <div>	
  <h1 align="center">Registered Courses</h1>
  <table align="center" cellpadding="0" cellspacing="0" border=1 width=50% height=50%>
  <thead>
  <tr>
  <th>Course Name</th>
  <th>Instructor</th>
  </tr>
  </thead>
  
  </table>
  </div>
 <table cellpadding="0" cellspacing="0" align="center" border=1 width=50% height=50%>
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
     rs = st.executeQuery("SELECT * FROM NEWCOURSE");
    while(rs.next())
    {   
      %> 
      <tr>
      <td><%=rs.getString(1) %></td>
      <td><%=rs.getString(2) %></td>
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
 
 </div> <br><br>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                        <h2>Add New Course</h2></div>
                        <div class="card-body">
                            <form name="my-form" action="<%=request.getContextPath() %>/addCourse" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="courseName">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Teacher Name</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="teacherName">
                                    </div>
                                </div>
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                               
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>


</body>
</html>