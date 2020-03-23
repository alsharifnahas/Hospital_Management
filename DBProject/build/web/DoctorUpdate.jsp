  <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>                                     
<%RequestDispatcher requestDispatcher; 
String DoctorID=(String)session.getAttribute("DoctorID");
String LoginPassword=request.getParameter("LoginPassword"); 
String Address=request.getParameter("Address"); 
String Phone=request.getParameter("Phone"); 
try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
st.executeUpdate("UPDATE Doctor SET  Address='"+Address+"', Phone='"+Phone+"' where DoctorID ='"+DoctorID+"'" );  
try{ 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement stm= conn.createStatement(); 
stm.executeUpdate("UPDATE Login SET LoginPassword='"+LoginPassword+"' where DoctorID ='"+DoctorID+"'" );
request.setAttribute("reg", "class='alert alert-success'>Your Profile has been Updated!");
requestDispatcher = request.getRequestDispatcher("/EditDProfile.jsp");
requestDispatcher.forward(request, response);
}
catch (Exception e) {
    request.setAttribute("errorMsg", "class='alert alert-danger'> User Name already exists!");
request.getRequestDispatcher("/EditDProfile.jsp").forward(request, response);
} 
}
catch (Exception e) {
    request.setAttribute("errorMsg", "class='alert alert-danger'> SSN already exists! Please Login or click Forgot Password!");
request.getRequestDispatcher("/EditDProfile.jsp").forward(request, response);
} 
                                       %>