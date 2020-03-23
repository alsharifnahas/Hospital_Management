


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="b.png" type="image/png" sizes="60x60">
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- template skin -->
        <link id="t-colors" href="css/default.css" rel="stylesheet">
        <title>Hospital Web Application</title>
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
        <link rel="icon" href="b.png" type="image/png" sizes="16x16">
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
                background:url('images/pp2.png') no-repeat center center;
                background-size:cover;

                /* Workaround for some mobile browsers */
                min-height:100%;
            }
            html{
                /* This image will be displayed fullscreen */
                background:url('images/bg1.jpg') no-repeat center center;
                /* Ensure the html element always takes up the full height of the browser window */
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
                                    <li><a href="viewDoctors.jsp">Doctors</a></li>
                                    <li><a href="AllDepartments.jsp">Appointments</a></li>
                                    <li><a href="AllLabs.jsp">Labs</a></li>
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
</html>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
                <!-- Section: intro -->
                <section id="intro" class="intro" style="margin-top: -100px;width: 100%">
                    <div class="intro-content">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                        <img src="img.png" class="img img-responsive" alt="" style="margin-top: 120px;" />
                                    </div>
                                </div><br><br><br><br>
                                <div class="col-lg-6">

                                    <div class="panel-body" style="margin-top: 80px; height: 100%; width: 100%">
                                         <center><h4 <%=request.getAttribute("reg") %></h4></center>
                                        <center><h3>Doctor Forgot Password Form</h3></center><hr>

                                    <div class="col-lg-6">
                                        <div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                                            <img src="doc.jpg" style="width: 190px;height: 190px;margin-bottom: 9px;" class="img img-responsive" alt="" />
                                        </div>
                                    </div>
                                    <form action="GetPass.jsp" method="post" role="form" class="contactForm lead">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                                <div class="form-group">
                                                    <label>Login Name</label>
                                                    <input required="" placeholder="UserName" type="text" title="Enter UserName" name="LoginName"  class="form-control input-md">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                                 <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                                <div class="form-group">
                                              <label>Doctor SSN</label>
                                                    <input required="" placeholder="Doctor SSN" type="password" id="ssn" maxlength="9" title="Enter Doctor SSN" pattern="\d{9}" title ="SSN is 9 digits ONLY" name="SSN"  class="form-control input-md">
                                                    <div class="validation"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                                                <div class="form-group">
                                                    <label>Department ID</label>
                                                     <select name="DepartmentID" id="med" class="form-control" required="">
                                                        <option selected="" value="" disabled="">Your Department </option>                                                        
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
                                        </div>
                                        <input type="submit" value="Get Password" id="btnValidate" class="btn btn-skin btn-block btn-lg">
                                    </form>
                                    <center><a href="DoctorLogin.jsp">Login Here</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="DoctorForm.jsp">Sign Up Here</a></center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
        <script>
        $(document).ready(function(e) {
            $('#btnValidate').click(function() {
              var ssn = $('#ssn').val().length;
                if (ssn !== 9) {
                    alert("Social Security number should be 9 numbers only.");
                    e.preventDefault();
                    return false;
                }
                else
                {
                }
      
            });
        });
    </script>
    <script>
    $(document).ready(function() {
        $("#form").submit(function(e) {
                var ssn = $('#ssn').val().length;
                if (ssn !== 9) {
                    alert("Social Security number should be 9 numbers only.");
                    e.preventDefault();
                    return false;
                }
                else
                {
                }
        });
    });
</script>
</html>
