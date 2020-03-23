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
String LogonName=request.getParameter("LogonName"); 
String SSN=request.getParameter("SSN"); 
session.putValue("LogonName",LogonName); 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection connecticut = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= connecticut.createStatement(); 
ResultSet rs=st.executeQuery("select * from Patient where SSN='"+SSN+"'");
if(rs.next()) 
{ 
String PatientID =rs.getString(1);
session.putValue("PatientID",PatientID);
session.setAttribute("PatientID", PatientID);
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection connect = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stmt= connect.createStatement(); 
ResultSet rsmt=stmt.executeQuery("select * from Logon where LogonName='"+LogonName+"' and PatientID='" + PatientID+ "'" ); 
if(rsmt.next()) 
{    
String LogonPassword =rsmt.getString(3);
session.putValue("LogonPassword",LogonPassword );
session.setAttribute("LogonPassword",LogonPassword );
request.setAttribute("pass", "class='alert alert-success'>  Your Password is: " +LogonPassword );
requestDispatcher = request.getRequestDispatcher("/ForgotPass.jsp");
requestDispatcher.forward(request, response);
}
else{
    request.setAttribute("pass", "class='alert alert-danger'>  Invalid Patient User Name or SSN");
request.getRequestDispatcher("/ForgotPass.jsp").forward(request, response);
} 
}
else{
    request.setAttribute("pass", "class='alert alert-danger'>  Invalid Patient User Name or SSN");
request.getRequestDispatcher("/ForgotPass.jsp").forward(request, response);
}   %>