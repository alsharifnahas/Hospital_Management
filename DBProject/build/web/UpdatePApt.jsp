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
    String AdmittanceTime=request.getParameter("AdmittanceTime"); 
session.putValue("AdmittanceTime",AdmittanceTime);
String DischargeTime=request.getParameter("DischargeTime"); 
session.putValue("DischargeTime",DischargeTime);
String DoctorID=request.getParameter("DoctorID"); 
String AppointmentID =request.getParameter("AppointmentID");
try{
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection co = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement state= co.createStatement(); 
ResultSet res=state.executeQuery("SELECT * FROM Appointment where AppointmentID='"+AppointmentID+"'"); 
if(res.next()) 
{      
String PatientID =res.getString(3);
request.setAttribute("PatientID",PatientID);
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
st.executeUpdate("UPDATE Appointment SET DoctorID = '"+DoctorID+"', PatientID='"+PatientID+"', AdmittanceTime='"+AdmittanceTime+"', DischargeTime='"+DischargeTime+"' where AppointmentID ='"+AppointmentID+"'" );  
request.setAttribute("reg", "class='alert alert-success'>  Your Appointment is Saved! ");
requestDispatcher = request.getRequestDispatcher("/DoctorAptEdit.jsp");
requestDispatcher.forward(request, response);
}
}
catch (Exception e) {
    request.setAttribute("errorMess", "class='alert alert-danger'> Appointment Not Saved! Please Retry!");
request.getRequestDispatcher("/DoctorAptEdit.jsp").forward(request, response);
}   %>

                