
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
                                     <li><a href="DoctorsOnly.jsp">Doctors</a></li>
                                    <li><a href="AllDepartments.jsp">Departments</a></li>
                                    <li><a href="viewDoctors.jsp">Doctors and Departments</a></li>                                    
                                    </ul>
                            <li class="dropdown">                               
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="DoctorName.jsp">Doctor Name</a></li>
                                    <li><a href="DepartmentName.jsp">Department Name</a></li>
                                    <li><a href="LabName.jsp">Lab Name</a></li>
                                    </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sign Up <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="PatientForm.jsp">Patient Sign Up</a></li>
                                    <li><a href="DoctorForm.jsp">Doctor Sign Up</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Login <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="PatientLogin.jsp">Patient Login</a></li>
                                    <li><a href="DoctorLogin.jsp">Doctor Login</a></li>
                                    <li><a href="AdminForm.jsp">Admin Login</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
                <!--/.container-fluid -->
            </nav>
        </div>
    </body>
</html>   </body></html> 
<center><h1><span class="bold">All Departments</span></h1></center>
   <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>   
 <%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("SELECT * FROM Department"); 
while(rs.next()) 
{ 
String DepartmentName =rs.getString(2);
request.setAttribute("DepartmentName",DepartmentName);

%>
<div>
    <div class="panel-body" style="margin-left:350px; height: 100%; width: 50%">
        <table border="1" id ="view" style="width:100%">
<col width="100">
<tr>
    <th>Department</th>
  </tr>
<tr>
<td align="center"><%=request.getAttribute("DepartmentName") %></td>
</tr>
</table>
</div>
</div>
<% 
}
%>

 
