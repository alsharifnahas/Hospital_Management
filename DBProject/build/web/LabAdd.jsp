<%-- 
    Document   : Login
    Created on : Oct 10, 2018, 3:39:59 PM
    Author     : ANSA-HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>     
<%
    RequestDispatcher requestDispatcher; 
 String SSN=request.getParameter("SSN"); 
session.putValue("SSN",SSN);
String OrderBy=request.getParameter("OrderBy"); 
String DoneBy=request.getParameter("DoneBy");
String LabTime=request.getParameter("LabTime");
try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from Patient where SSN='"+SSN+"'"); 
if(rs.next()) 
{ 
 
String PatientID =rs.getString(1);
session.putValue("PatientID",PatientID);
session.setAttribute("PatientID",PatientID);
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection c = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stt= c.createStatement(); 
stt.executeUpdate("insert into LabTesting(PatientID, LabTime, OrderBy, DoneBy) VALUES ('"+PatientID+"','"+LabTime+"','"+OrderBy+"','"+DoneBy+"')");  
request.setAttribute("registered", "class='alert alert-success'> Lab Results Added Successfully!");
requestDispatcher = request.getRequestDispatcher("/AddLabs.jsp");
requestDispatcher.forward(request, response);
}
}
catch (Exception e) {
    request.setAttribute("errorMess", "class='alert alert-danger'> Invalid SSN!");
request.getRequestDispatcher("/AddLabs.jsp").forward(request, response);
} %>