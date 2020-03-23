package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class DoctorsOnly_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("            \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Hospital Web Application</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"icon\" href=\"images/log.png\" type=\"image/png\" sizes=\"16x16\">\n");
      out.write("        <style>\n");
      out.write("            .navbar-brand {\n");
      out.write("                padding: 0px;\n");
      out.write("            }\n");
      out.write("            .navbar-brand>img {\n");
      out.write("                height: 100%;\n");
      out.write("                padding: 15px;\n");
      out.write("                width: auto;\n");
      out.write("            }\n");
      out.write("            /* EXAMPLE 3\n");
      out.write("\n");
      out.write("            line height is 20px by default so add 30px top and bottom to equal the new .navbar-brand 80px height  */\n");
      out.write("\n");
      out.write("            .example3 .navbar-brand {\n");
      out.write("\n");
      out.write("                height: 80px;\n");
      out.write("            }\n");
      out.write("            .example3 .nav >li >a {\n");
      out.write("                padding-top: 30px;\n");
      out.write("                padding-bottom: 30px;\n");
      out.write("            }\n");
      out.write("            .example3 .navbar-toggle {\n");
      out.write("                padding: 10px;\n");
      out.write("                margin: 25px 15px 25px 0;\n");
      out.write("            }\n");
      out.write("            body {\n");
      out.write("                \n");
      out.write("                background-size:cover;\n");
      out.write("\n");
      out.write("                /* Workaround for some mobile browsers */\n");
      out.write("                min-height:100%;\n");
      out.write("            }\n");
      out.write("            html{\n");
      out.write("                /* This image will be displayed fullscreen */\n");
      out.write("               \n");
      out.write("                height:100%;\n");
      out.write("                /* The Magic */\n");
      out.write("                background-size:cover;\n");
      out.write("            }\n");
      out.write("            label\n");
      out.write("            {\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("            #btnValidate\n");
      out.write("    {\n");
      out.write("       background-color:lightblue;\n");
      out.write("      color: white; /* SET COLOR IN WHITE */\n");
      out.write("    }\n");
      out.write("    #view th {\n");
      out.write("    padding-top: 12px;\n");
      out.write("    padding-bottom: 12px;\n");
      out.write("    background-color: #ADD8E6;\n");
      out.write("    text-align: center;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("    #btnValidate:hover\n");
      out.write("    {\n");
      out.write("      background-color: black;\n");
      out.write("      color: white; /* SET COLOR IN BLACK */\n");
      out.write("    }  \n");
      out.write("            #navbar3 li a:hover\n");
      out.write("            {\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("                color:lightseagreen;\n");
      out.write("            }\n");
      out.write("            .panel-body {\n");
      out.write("            background-color:white;           \n");
      out.write("            }\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"example3\">\n");
      out.write("            <nav class=\"navbar navbar-inverse navbar-static-top\" style=\"background-color: whitesmoke;\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar3\">\n");
      out.write("                            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.html\"><img src=\"h.png\" alt=\"Hospital\">\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"navbar3\" class=\"navbar-collapse collapse\">\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li class=\"active\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                            <!--                            <li><a href=\"ViewDoctors.jsp\">View Doctors</a></li>-->\n");
      out.write("                            <li class=\"dropdown\">\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">View <span class=\"caret\"></span></a>\n");
      out.write("                              <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                     <li><a href=\"DoctorsOnly.jsp\">Doctors</a></li>\n");
      out.write("                                    <li><a href=\"AllDepartments.jsp\">Departments</a></li>\n");
      out.write("                                    <li><a href=\"viewDoctors.jsp\">Doctors and Departments</a></li>                                    \n");
      out.write("                                    </ul>\n");
      out.write("                            <li class=\"dropdown\">                               \n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                    <li><a href=\"DoctorName.jsp\">Doctor Name</a></li>\n");
      out.write("                                    <li><a href=\"DepartmentName.jsp\">Department Name</a></li>\n");
      out.write("                                    <li><a href=\"LabName.jsp\">Lab Name</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"dropdown\">\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">Sign Up <span class=\"caret\"></span></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                    <li><a href=\"PatientForm.jsp\">Patient Sign Up</a></li>\n");
      out.write("                                    <li><a href=\"DoctorForm.jsp\">Doctor Sign Up</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"dropdown\">\n");
      out.write("                                <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">Login <span class=\"caret\"></span></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                    <li><a href=\"PatientLogin.jsp\">Patient Login</a></li>\n");
      out.write("                                    <li><a href=\"DoctorLogin.jsp\">Doctor Login</a></li>\n");
      out.write("                                    <li><a href=\"AdminForm.jsp\">Admin Login</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <!--/.nav-collapse -->\n");
      out.write("                </div>\n");
      out.write("                <!--/.container-fluid -->\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>   </body></html> \n");
      out.write("<center><h1><span class=\"bold\">All Doctors</span></h1></center>\n");
      out.write("       \n");
      out.write("   \n");
      out.write("   \n");
      out.write(" ");

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:sqlserver://ANSA-HP:1433;databaseName=HospitalDB;user=an;password=saudiarabia;");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("SELECT FirstName ,LastName, Address, Phone, Gender FROM Doctor, Department Where doctor.DepartmentID=Department.DepartmentID order by LastName asc"); 
while(rs.next()) 
{ 
String FirstName =rs.getString(1);
String LastName =rs.getString(2);
String Address =rs.getString(3);
String Phone =rs.getString(4);
String Gender =rs.getString(5);
request.setAttribute("FirstName",FirstName);
request.setAttribute("LastName",LastName);
request.setAttribute("Address",Address);
request.setAttribute("Phone",Phone);
request.setAttribute("Gender",Gender);

      out.write("\n");
      out.write("\n");
      out.write("<div>\n");
      out.write("    <div class=\"panel-body\" style=\"margin-left:200px; height: 100%; width: 70%\">\n");
      out.write("        <table border=\"1\" id =\"view\" style=\"width:100%\">\n");
      out.write("<col width=\"70\"><col width=\"150\"><col width=\"300\"><col width=\"100\"><col width=\"60\">\n");
      out.write("<tr>\n");
      out.write("    <th>First Name</th>\n");
      out.write("    <th>Last Name</th> \n");
      out.write("    <th>Address</th>\n");
      out.write("    <th>Phone</th> \n");
      out.write("    <th>Gender</th>\n");
      out.write("  </tr>\n");
      out.write("<tr>\n");
      out.write("<td align=\"center\">");
      out.print(request.getAttribute("FirstName") );
      out.write("</td>\n");
      out.write("<td align=\"center\">");
      out.print(request.getAttribute("LastName") );
      out.write("</td>\n");
      out.write("<td align=\"center\">");
      out.print(request.getAttribute("Address") );
      out.write("</td>\n");
      out.write("<td align=\"center\">");
      out.print(request.getAttribute("Phone") );
      out.write("</td>\n");
      out.write("<td align=\"center\">");
      out.print(request.getAttribute("Gender") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</div>\n");
 
}

      out.write("\n");
      out.write("\n");
      out.write(" \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
