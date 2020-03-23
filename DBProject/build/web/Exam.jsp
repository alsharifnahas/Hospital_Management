<%-- 
    Document   : Exam
    Created on : Nov 27, 2018, 10:34:33 AM
    Author     : ANSA-HP
--%>
  <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                     
<%RequestDispatcher requestDispatcher; 
  String PatientID=request.getParameter("PatientID");
String LabTime=request.getParameter("LabTime"); 
String DoctorID=request.getParameter("DoctorID"); 
try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
session.putValue("PatientID",PatientID);
session.setAttribute("PatientID",PatientID);
session.putValue("DoctorID",DoctorID);
session.setAttribute("DoctorID",DoctorID);
st.executeUpdate("insert into dbo.LabTesting(LabTesting.PatientID, LabTesting.LabTime, LabTesting.OrderBy) VALUES ('"+PatientID+"'"
        + ",'"+LabTime+"','"+DoctorID+"')");  
request.setAttribute("reg", "class='alert alert-success'>New Lab Test Created!");
requestDispatcher = request.getRequestDispatcher("/AddExam.jsp");
requestDispatcher.forward(request, response);
}
catch (Exception e) {
    request.setAttribute("errorMess", "class='alert alert-danger'> User Name already exists!");
request.getRequestDispatcher("/AddExam.jsp").forward(request, response);
} 

                                       %>