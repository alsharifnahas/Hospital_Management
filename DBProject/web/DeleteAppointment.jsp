
<!DOCTYPE html>

   <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>   
<%
    RequestDispatcher requestDispatcher; 
    String DoctorID =(String)session.getAttribute("DoctorID");
     String PatientID =(String)session.getAttribute("PatientID");
    String AppointmentID =request.getParameter("AppointmentID");
    try {
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
ResultSet rs = null;
Statement st = null;
st = con.createStatement();
if(AppointmentID != null){
    // Use PreparedStatements here instead of Statment
 st.executeUpdate("delete from Appointment where AppointmentID="+ AppointmentID);
session.setAttribute("DoctorID", DoctorID);
session.setAttribute("PatientID", PatientID);
if(DoctorID != null){
request.setAttribute("deleted", "class='alert alert-success'>Appointment Deleted Successfully! ");
requestDispatcher = request.getRequestDispatcher("/ViewAppointments.jsp");
requestDispatcher.forward(request, response);
}
else if(PatientID != null){
  request.setAttribute("deleted", "class='alert alert-success'>Appointment Deleted Successfully! ");
requestDispatcher = request.getRequestDispatcher("/Appointments.jsp");
requestDispatcher.forward(request, response);  
}
}
    }catch (SQLException e) {
System.out.println(e.getMessage());
}
%>