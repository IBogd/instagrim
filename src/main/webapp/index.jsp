<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Modified by Igors Bogdanovs
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>


<html>
    <head>
        <title>Instagram</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <header>
            <h1>InstaGrim ! </h1>
            <h2>Welcome to our new website which make me crazy</h2>
            <h2>index jsp page </h2>
        </header>
        <nav>
            <ul>
                   
                <li class="footer"><a href="/Instagrim">Home</a></li>
               
             <%--  <li><a href="/Instagrim/Upload">Upload a picture</a></li>  --%>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>

                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images send to page /Instagrim/Images</a></li>
                <li><a href="Logout">Logout</a></li>
                    <%}
                            
                            }else{
                                %>
                 <li><a href="Register">Register</a></li>  <!-- perehod na stranicu register.jsp -->
                <li><a href="Login">Login</a></li>         <!-- perehod na stranicu login.jsp -->
                <%
                                        
                            
                    }%>
            </ul>
        </nav>
        <footer>
            <%-- <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Igors B</li>
            </ul> --%>
        </footer>
    </body>
</html>
