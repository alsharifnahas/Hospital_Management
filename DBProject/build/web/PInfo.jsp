<%-- 
    Document   : Logon
    Created on : Oct 10, 2018, 8:18:54 PM
    Author     : ANSA-HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                                                         
<%
RequestDispatcher requestDispatcher;
String LogonName=request.getParameter("LogonName"); 
session.putValue("LogonName",LogonName);
String LogonPassword=request.getParameter("LogonPassword"); 
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from Logon where LogonName='"+LogonName+"' and LogonPassword='" + LogonPassword + "'"); 
if(rs.next()) 
{ 
session.setAttribute("LogonName", LogonName);
String PatientID =rs.getString(2);
session.putValue("PatientID",PatientID);
String LastName =rs.getString(4);
session.putValue("LastName",LastName);
session.setAttribute("LastName",LastName);
request.setAttribute("reg", "class='alert alert-success'>  Welcome back! " +LastName+ " [ "+LogonName+" ]");
requestDispatcher = request.getRequestDispatcher("/PatientSignIn.jsp");
requestDispatcher.forward(request, response);

}
else{
    request.setAttribute("error", "class='alert alert-danger'>  Invalid Patient User Name or Password");
request.getRequestDispatcher("/PatientLogin.jsp").forward(request, response);
}   %>