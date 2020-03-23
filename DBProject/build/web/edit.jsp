
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
                         .table {
                            background-color:transparent;           
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
                                                <li><a href="Appointments.jsp">Appointments</a></li>
                                                <li><a href="PLabs.jsp">Labs</a></li>
                                                <li><a href="PatientProfile.jsp">Patient Profile</a></li>
                                            </ul>
                                        <li><a href="Appt.jsp">Add Appointment</a></li>                                         
                                        <li><a href="index.html">Logout</a></li> 
                                    </ul>
                                </div>
                                <!--/.nav-collapse -->
                            </div>
                            <!--/.container-fluid -->
                        </nav>
                    </div>
                </body>
            </html> 
            <!-- Section: intro -->
            <section id="intro" class="intro" style="margin-top: -100px;width: 100%">
                <div class="intro-content">
                    <div class="container" >
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="table" style="margin-top: 150px; background-color:transparent; height: 50%; margin-left: -100px; width: 400%">
<center><h1><span class="bold">Your Appointments</span></h1></center>
 <div class="body" style="margin-left:200px; height: 100%; width: 70%">
    <center><h4 <%=request.getAttribute("deleted") %></h4></center></div>
   <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>   
<%
    String PatientID =(String)session.getAttribute("PatientID");
request.setAttribute("PatientID",PatientID);
String AppointmentID =request.getParameter("AppointmentID");
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=sa;password=loulou;");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("SELECT * FROM Doctor, Appointment,Patient where AppointmentID='"+AppointmentID+"' and Appointment.PatientID='"+PatientID+"' and Appointment.DoctorID=Doctor.DoctorID and Patient.PatientID=Appointment.PatientID order by AdmittanceTime asc "); 
while(rs.next()) 
{ 
String FirstName =rs.getString(3);
String LastName =rs.getString(4);
String Address =rs.getString(8);
String Phone =rs.getString(9);
AppointmentID =rs.getString(10);
String AdmittanceTime =rs.getString(13);
request.setAttribute("FirstName",FirstName);
request.setAttribute("LastName",LastName);
request.setAttribute("Address",Address);
request.setAttribute("Phone",Phone);
request.setAttribute("AppointmentID",AppointmentID);
request.setAttribute("AdmittanceTime",AdmittanceTime);
%>
<div>
   <div class="panel-body" style=" height: 100%; width: 130%">
                                            <table border="1" id ="view" style="width:100%">
<col width="80"><col width="200"><col width="200"><col width="350"><col width="150"><col width="200">
<tr>
    <th>Appointment ID</th>
    <th>Doctor First Name</th>
    <th>Doctor Last Name</th>
    <th>Address</th>
    <th>Phone</th>
    <th>Admittance Time</th>  
</tr>
<tr>
<td align="center"><%=request.getAttribute("AppointmentID") %></td>
<td align="center"><%=request.getAttribute("FirstName") %></td>
<td align="center"><%=request.getAttribute("LastName") %></td>
<td align="center"><%=request.getAttribute("Address") %></td>
<td align="center"><%=request.getAttribute("Phone") %></td>
<td align="center"><%=request.getAttribute("AdmittanceTime") %></td>
</tr>
</table>
</div>
</div>
<% 
}
%>

 
                                </div>
                            </div>
                            <div class="col-lg-6">
                                   <div class="panel-body" background-color:transparent style="margin-top: 200px;margin-left: 100px; width: 100%">
                                       <center><h4 <%=request.getAttribute("errorMess") %></h4></center>
                                       <center><h4 <%=request.getAttribute("reg") %></h4></center>
                                        <center><h4>Update Appointment </h4></center><hr>
                                         <div class="col-lg-6">
                                        <div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                            <img src="p.jpg" style="width: 200px; height: 200px;margin-bottom: 9px;" class="img img-responsive" alt="" />
                                        </div>
                                    </div>
                                        <form action="UpdatePAppointment.jsp"  method="post" name="form" id="form" role="form" class="contactForm lead">
                                            <div class="row" style="margin-top: 0px;">                                    
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                                <div class="form-group">
                                                   <label>Department for Appointment</label>
                                                    <select name="DoctorID" id="med" class="form-control" required="">
                                                        <option selected="" value="" disabled="">Department for Appointment</option>                                                        
                                                       <option value="1"> Diagnostic Imaging</option>
                                                       <option value="2">Nephrology</option>
                                                       <option value="3">Discharge Lounge</option>
                                                       <option value="4">General Surgery</option>
                                                       <option value="5">Social Work</option>
                                                       <option value="6">General Services</option>
                                                       <option value="7">Coronary Care Unit</option>
                                                       <option value="8">Oncology</option>
                                                       <option value="9">Patient Services</option>
                                                       <option value="10">Elderly services</option>
                                                       </select>
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                                <div class="form-group">
                                                    <label>Admittance Time</label>
                                                    <input type="text" placeholder="Select Admittance Date" name="AdmittanceTime" id="dob" required="" class="datepicker form-control input-md">
                                                </div>
                                            </div>   
                                                     <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                                <div class="form-group">
                                                    <label>Appointment ID</label>
                                                    <input type="text" placeholder="Your Appointment ID" name="AppointmentID" id="name" class="form-control input-md" >
                                                </div>
                                            </div>  
                                        </div>
                                        <input type="submit" value="Submit" id="btnValidate" class="btn btn-skin btn-block btn-lg">
                                    </form>
                                    <hr>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </body></html> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
                                                        $(document).ready(function() {
                                                            $("#btnValidate").click(function() {
                                                                var name = $("#name").val();
                                                                var password = $("#password").val();
                                                                var confirm_password = $("#confirm_password").val();
                                                                var gender = $("#gender").val();
                                                                var dob = $("#dob").val();
                                                                var age = $("#age").val();
                                                                var status = $("#status").val();
                                                                var email = $("#txtEmail").val();
                                                                var phone = $("#phone").val();
                                                                var address = $("#address").val();
                                                                if (name === "" || password === "" || confirm_password === "" || gender === "" || dob === "" || age === "" || status === "" || email === "" || phone === "" || address === "")
                                                                {
                                                                    $("#name").css("border-color", "red");
                                                                    $("#password").css("border-color", "red");
                                                                    $("#confirm_password").css("border-color", "red");
                                                                    $("#gender").css("border-color", "red");
                                                                    $("#dob").css("border-color", "red");
                                                                    $("#age").css("border-color", "red");
                                                                    $("#status").css("border-color", "red");
                                                                    $("#txtEmail").css("border-color", "red");
                                                                    $("#phone").css("border-color", "red");
                                                                    $("#address").css("border-color", "red");
                                                                    alert("All Fields Are Mendatory.");
                                                                    return false;
                                                                }
                                                            });
                                                        });
</script>
<script>
    $(document).ready(function() {
        $("#form").submit(function(e) {
            var pass = $('#password').val();
            var cpass = $('#confirm_password').val();
            if (pass === cpass)
            {
                var phone = $('#phone').val().length;
                if (phone !== 10) {
                    alert("Phone number should be 10 digit only.");
                    e.preventDefault();
                    return false;
                }
                else
                {
                }
            }
            else
            {
                alert("Password does not match");
                e.preventDefault();
                return false;
            }
        });
    });
</script>
<script>
    function calculateAge() {
        var today = new Date();
        var dateString = document.getElementById('dob').value;
        //alert(dateString);
        var birthDate = new Date(dateString);
        var age = today.getFullYear() - birthDate.getFullYear();
        var m = today.getMonth() - birthDate.getMonth();
        if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }
        document.getElementById('age').value = age;
    }
</script>
<!--<script>
    $(document).ready(function(e) {
        $('#btnValidate').click(function() {
            var sEmail = $('#txtEmail').val();
            if ($.trim(sEmail).length === 0) {
                alert('Please enter valid email address');
                e.preventDefault();
            }
            if (validateEmail(sEmail)) {
                //alert('Email is valid');
            }
            else {
                alert('Invalid Email Address');
                e.preventDefault();
            }
        });
    });

    function validateEmail(sEmail) {
        var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (filter.test(sEmail)) {
            return true;
        }
        else {
            return false;
        }
    }
</script>-->
<script>
    $('#password, #confirm_password').on('keyup', function() {
        if ($('#password').val() === $('#confirm_password').val()) {
            $('#message').html('Matching').css('color', 'green');
        } else
            $('#message').html('Not Matching').css('color', 'red');
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
<script>
    $(function() {
        $('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
            startDate: '+0d',
            autoclose: true
        });
    });
</script>