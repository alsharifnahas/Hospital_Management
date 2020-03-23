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
String PatientID =(String)session.getAttribute("PatientID");
request.setAttribute("PatientID",PatientID);
String DoctorID=request.getParameter("DoctorID"); 
 try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
     java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
     Statement st = con.createStatement();
     st.executeUpdate("insert into dbo.Appointment(DoctorID, PatientID, AdmittanceTime) VALUES ('" + DoctorID + "','" + PatientID + "','" + AdmittanceTime + "')");
     request.setAttribute("reg", "class='alert alert-success'>  Your Appointment is Saved! ");
     requestDispatcher = request.getRequestDispatcher("/AddAppointment.jsp");
     requestDispatcher.forward(request, response);

 }
catch (Exception e) {
    request.setAttribute("errorMess", "class='alert alert-danger'> Appointment Not Saved! Please Retry!");
request.getRequestDispatcher("/AddAppointment.jsp").forward(request, response);
}   %>

                