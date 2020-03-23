<%-- 
    Document   : InsertLab
    Created on : Nov 27, 2018, 9:12:57 AM
    Author     : ANSA-HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>     
<%
    RequestDispatcher requestDispatcher;
    String MeasurementID = request.getParameter("MeasurementID");
     String LabTestID = request.getParameter("LabTestID");
      String Value= request.getParameter("Value");
       String RangeOK = request.getParameter("RangeOK");
    String Comment = request.getParameter("Comment");
    try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
st.executeUpdate("insert into MeasuredResults(MeasurementID, LabTestID, Value, RangeOK,Comment) VALUES ('"+MeasurementID+"','"+LabTestID+"','"+Value+"','"+RangeOK+"','"+Comment+"')");  
    request.setAttribute("reg", "class='alert alert-success'> Lab Results Saved!");
            requestDispatcher = request.getRequestDispatcher("/AddLabs.jsp");
            requestDispatcher.forward(request, response);
        
    } catch (Exception e) {
        request.setAttribute("errorMsg", "class='alert alert-danger'> Lab ID not found!");
        request.getRequestDispatcher("/AddLabs.jsp").forward(request, response);
    }%>