  <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                     
<%RequestDispatcher requestDispatcher; 
    String LogonName=request.getParameter("LogonName"); 
int SSN= Integer.parseInt(request.getParameter("SSN"));
session.putValue("SSN",SSN); 
String LogonPassword=request.getParameter("LogonPassword"); 
String FirstName=request.getParameter("FirstName"); 
String LastName=request.getParameter("LastName"); 
String Gender=request.getParameter("Gender"); 
String DOB=request.getParameter("DOB"); 
String Address=request.getParameter("Address"); 
String Phone=request.getParameter("Phone"); 
try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
st.executeUpdate("insert into dbo.Patient(SSN, FirstName, LastName, DOB, Address, Phone, Gender) VALUES ('"+SSN+"',"
        + "'"+FirstName+"','"+LastName+"','"+DOB+"','"+Address+"','"+Phone+"','"+Gender+"')");  
try{ 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stm= conn.createStatement(); 
ResultSet rs=stm.executeQuery("select * from Patient where SSN='"+SSN+"'");
if(rs.next()) 
{ 
String PatientID =rs.getString(1);
session.putValue("PatientID",PatientID);
session.setAttribute("PatientID",PatientID);
stm.executeUpdate("insert into dbo.Logon(PatientID, LogonName, LogonPassword) VALUES ('"+PatientID+"','"+LogonName+"','"+LogonPassword+"')"); 
request.setAttribute("reg", "class='alert alert-success'>You're Registered! Welcome! "+LastName+ " ["+LogonName+"]");
requestDispatcher = request.getRequestDispatcher("/PatientRegistration.jsp");
requestDispatcher.forward(request, response);
}
}
catch (Exception e) {
    request.setAttribute("errorMsg", "class='alert alert-danger'> User Name already exists!");
request.getRequestDispatcher("/PatientForm.jsp").forward(request, response);
} 
}
catch (Exception e) {
    request.setAttribute("errorMsg", "class='alert alert-danger'> SSN already exists! Please Login or click Forgot Password!");
request.getRequestDispatcher("/PatientForm.jsp").forward(request, response);
} 
                                       %>