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
String PatientID =(String)session.getAttribute("PatientID");
request.setAttribute("PatientID",PatientID);
requestDispatcher = request.getRequestDispatcher("/PAppointment.jsp");
requestDispatcher.forward(request, response);
  %>