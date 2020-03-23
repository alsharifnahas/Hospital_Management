
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hospital Web Application</title>
        <link rel="icon" href="D.jpg" type="image/jpg" sizes="60x60">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <!-- template skin -->
        <link id="t-colors" href="css/default.css" rel="stylesheet">
    </head>

    <body id="page-top" data-spy="scroll" data-target=".navbar-custom" style="background:url('b.jpg')">
        

        <div id="wrapper">

            
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hospital Web Application</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link rel="icon" href="images/log.png" type="image/png" sizes="16x16">
        <style>
            .navbar-brand {
                padding: 0px;
            }
            .navbar-brand>img {
                height: 100%;
                padding: 15px;
                width: auto;
            }
            /* EXAMPLE 3

            line height is 20px by default so add 30px top and bottom to equal the new .navbar-brand 80px height  */

            .example3 .navbar-brand {

                height: 80px;
            }
            .example3 .nav >li >a {
                padding-top: 30px;
                padding-bottom: 30px;
            }
            .example3 .navbar-toggle {
                padding: 10px;
                margin: 25px 15px 25px 0;
            }
            body {
                
                background-size:cover;

                /* Workaround for some mobile browsers */
                min-height:100%;
            }
            html{
                /* This image will be displayed fullscreen */
               
                height:100%;
                /* The Magic */
                background-size:cover;
            }
            label
            {
                font-size: 14px;
            }
            #btnValidate
    {
       background-color:lightblue;
      color: white; /* SET COLOR IN WHITE */
    }
    #view th {
    padding-top: 12px;
    padding-bottom: 12px;
    background-color: #ADD8E6;
    text-align: center;
    color: white;
}

    #btnValidate:hover
    {
      background-color: black;
      color: white; /* SET COLOR IN BLACK */
    }  
            #navbar3 li a:hover
            {
                background-color: whitesmoke;
                color:lightseagreen;
            }
            .panel-body {
            background-color:white;           
            }
        </style>
    </head>
    <body>
        <div class="example3">
            <nav class="navbar navbar-inverse navbar-static-top" style="background-color: whitesmoke;">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="h.png" alt="Hospital">
                        </a>
                    </div>
                    <div id="navbar3" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="index.html">Home</a></li>
                            <!--                            <li><a href="ViewDoctors.jsp">View Doctors</a></li>-->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">View <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="AllPatients.jsp">Patients</a></li>
                                    <li><a href="ViewAppointments.jsp">Appointments</a></li>
                                    <li><a href="DoctorProfile.jsp">Doctor Profile</a></li>
                                   <li><a href="AllLabs.jsp">Ordered Labs</a></li>
                                    <li><a href="DLabs.jsp">Labs Done</a></li>
                                </ul>
                                <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Add <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">                                    
                          <li><a href="AddLabs.jsp">Add Lab Results</a></li>
                                <li><a href="AddExam.jsp">Add Lab Exam</a></li> 
                                </ul>
                            <li><a href="index.html">Logout</a></li> 
                                
                    </div>
                    <!--/.nav-collapse -->
                </div>
                <!--/.container-fluid -->
            </nav>
        </div>
    </body>
</html>  </body></html> 
<center><h1><span class="bold">Doctor Profile</span></h1></center>
   <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>   
<%
 String DoctorID =(String)session.getAttribute("DoctorID");
request.setAttribute("DoctorID",DoctorID);
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("SELECT * FROM Doctor, Department, "
        + "[Login] where Doctor.DoctorID='"+DoctorID+"' and Doctor.DepartmentID=Department.DepartmentID and Doctor.DoctorID=Login.DoctorID"); 
while(rs.next()) 
{ 
String SSN =rs.getString(6);
String FirstName =rs.getString(3);
String LastName =rs.getString(4);
String DOB =rs.getString(5);
String Address =rs.getString(8);
String Phone =rs.getString(9);
String Gender =rs.getString(7);
String DepartmentID =rs.getString(2);
String DepartmentName =rs.getString(11);
String LoginName =rs.getString(13);
String LoginPassword =rs.getString(14);
request.setAttribute("SSN",SSN);
request.setAttribute("FirstName",FirstName);
request.setAttribute("LastName",LastName);
request.setAttribute("DOB",DOB);
request.setAttribute("Address",Address);
request.setAttribute("Phone",Phone);
request.setAttribute("Gender",Gender);
request.setAttribute("DepartmentID",DepartmentID);
request.setAttribute("DepartmentName",DepartmentName);
request.setAttribute("LoginName",LoginName);
request.setAttribute("LoginPassword",LoginPassword);
 request.setAttribute("DoctorID", DoctorID);
%>
<div>
    <div class="panel-body" style="margin-left:200px; height: 100%; width: 70%">
        <table border="1" id ="view" style="width:100%">
<col width="100"><col width="100"><col width="100"><col width="150">
<col width="400"><col width="150"><col width="80"><col width="50">
<col width="100"><col width="100"><col width="50"><col width="50">
<tr>
    <th>SSN</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>DOB</th>
    <th>Address</th>
    <th>Phone</th>
    <th>Gender</th>
    <th>Dept ID</th>
    <th>Dept Name</th> 
    <th>UserName</th>
    <th>Password</th>
     <th>Edit Profile</th> 
</tr>
<tr>
<td align="center"><%=request.getAttribute("SSN") %></td>
<td align="center"><%=request.getAttribute("FirstName") %></td>
<td align="center"><%=request.getAttribute("LastName") %></td>
<td align="center"><%=request.getAttribute("DOB") %></td>
<td align="center"><%=request.getAttribute("Address") %></td>
<td align="center"><%=request.getAttribute("Phone") %></td>
<td align="center"><%=request.getAttribute("Gender") %></td>
<td align="center"><%=request.getAttribute("DepartmentID") %></td>
<td align="center"><%=request.getAttribute("DepartmentName") %></td>
<td align="center"><%=request.getAttribute("LoginName") %></td>
<td align="center"><%=request.getAttribute("LoginPassword") %></td>
<td align="center">
<a href ="EditDProfile.jsp?DoctorID=<%=DoctorID%>">Edit</a>
</td>
</tr>
</table>
</div>
</div>
<% 
}
%>

 
