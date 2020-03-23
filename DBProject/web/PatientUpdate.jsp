  <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                     
<%RequestDispatcher requestDispatcher; 
   String PatientID = (String) session.getAttribute("PatientID");
 request.setAttribute("PatientID", PatientID); 
String LogonPassword=request.getParameter("LogonPassword"); 
String Address=request.getParameter("Address"); 
String Phone=request.getParameter("Phone"); 
try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
st.executeUpdate("UPDATE Patient SET  Address='"+Address+"', Phone='"+Phone+"' where PatientID ='"+PatientID+"'" );  
try{ 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stm= conn.createStatement(); 
stm.executeUpdate("UPDATE Logon SET LogonPassword='"+LogonPassword+"' where PatientID ='"+PatientID+"'" );
request.setAttribute("reg", "class='alert alert-success'>Your Profile has been Updated!");
requestDispatcher = request.getRequestDispatcher("/PProfileEdit.jsp");
requestDispatcher.forward(request, response);
}
catch (Exception e) {
    request.setAttribute("errorMsg", "class='alert alert-danger'> User Name already exists!");
request.getRequestDispatcher("/PProfileEdit.jsp").forward(request, response);
} 
}
catch (Exception e) {
    request.setAttribute("errorMsg", "class='alert alert-danger'> SSN already exists! Please Login or click Forgot Password!");
request.getRequestDispatcher("/PProfileEdit.jsp").forward(request, response);
} 
                                       %>