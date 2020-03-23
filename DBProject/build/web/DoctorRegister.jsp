                                      <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                     
<%RequestDispatcher requestDispatcher; 
    String LoginName=request.getParameter("LoginName"); 
int SSN= Integer.parseInt(request.getParameter("SSN"));
session.putValue("SSN",SSN); 
String LoginPassword=request.getParameter("LoginPassword"); 
String FirstName=request.getParameter("FirstName"); 
String LastName=request.getParameter("LastName"); 
String Gender=request.getParameter("Gender"); 
String DOB=request.getParameter("DOB"); 
String Address=request.getParameter("Address"); 
String Phone=request.getParameter("Phone"); 
String DepartmentID=request.getParameter("DepartmentID"); 
session.putValue("DepartmentID",DepartmentID); 
try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
st.executeUpdate("insert into dbo.Doctor(DepartmentID, SSN, FirstName, LastName, DOB, Address, Phone, Gender) VALUES ('"+DepartmentID+"','"+SSN+"','"+FirstName+"','"+LastName+"','"+DOB+"','"+Address+"','"+Phone+"','"+Gender+"')");  
try{ 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stm= conn.createStatement(); 
ResultSet rs=stm.executeQuery("select * from Doctor where SSN='"+SSN+"'");
if(rs.next()){ 
String DoctorID =rs.getString(1);
session.putValue("DoctorID",DoctorID); 
stm.executeUpdate("insert into dbo.Login(DoctorID, LoginName, LoginPassword) VALUES ('"+DoctorID+"','"+LoginName+"','"+LoginPassword+"')"); 
request.setAttribute("reg", "class='alert alert-success'>  You're Registered! Welcome Dr. "+LastName+ " ["+LoginName+"]");
requestDispatcher = request.getRequestDispatcher("/DoctorRegistration.jsp");
requestDispatcher.forward(request, response);

}}
catch (Exception e) {
    request.setAttribute("errorMess", "class='alert alert-danger'> User Name already exists!, pick a different one!");
request.getRequestDispatcher("/DoctorForm.jsp").forward(request, response);
}  
}
catch (Exception e) {
    request.setAttribute("errorMess", "class='alert alert-danger'> SSN already exists! Please Login or click Forgot Password!");
request.getRequestDispatcher("/DoctorForm.jsp").forward(request, response);
}   %>

                                       %>