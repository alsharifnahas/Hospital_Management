<%-- 
    Document   : GetPass
    Created on : Oct 12, 2018, 4:17:13 PM
    Author     : ANSA-HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                                                         
<%
RequestDispatcher requestDispatcher;
String LoginName=request.getParameter("LoginName"); 
String SSN=request.getParameter("SSN"); 
String DepartmentID=request.getParameter("DepartmentID");
session.putValue("LoginName",LoginName); 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection connecticut = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= connecticut.createStatement(); 
ResultSet rs=st.executeQuery("select * from Doctor where SSN='"+SSN+"' and DepartmentID='"+DepartmentID+"'");
if(rs.next()) 
{ 
String DoctorID =rs.getString(1);
session.putValue("DoctorID",DoctorID);
session.setAttribute("DoctorID", DoctorID);
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection connect = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stmt= connect.createStatement(); 
ResultSet rsmt=stmt.executeQuery("select * from Login where LoginName='"+LoginName+"' and DoctorID='" + DoctorID+ "'" ); 
if(rsmt.next()) 
{    
String LoginPassword =rsmt.getString(3);
session.putValue("LoginPassword ",LoginPassword );
session.setAttribute("LoginPassword",LoginPassword );
request.setAttribute("reg", "class='alert alert-success'>  Your Password is: " +LoginPassword );
requestDispatcher = request.getRequestDispatcher("/ForgotPassword.jsp");
requestDispatcher.forward(request, response);
}
else{
    request.setAttribute("reg", "class='alert alert-danger'>  Invalid User Name");
request.getRequestDispatcher("/ForgotPassword.jsp").forward(request, response);
} 
}
else{
    request.setAttribute("reg", "class='alert alert-danger'>  Invalid Department ID or Password");
request.getRequestDispatcher("/ForgotPassword.jsp").forward(request, response);
}
   %>