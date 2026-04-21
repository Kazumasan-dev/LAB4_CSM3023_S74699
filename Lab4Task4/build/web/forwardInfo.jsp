<%-- 
    Document   : forwardInfo
    Created on : 21 Apr 2026, 12:08:52 pm
    Author     : BLADEKAZUMA
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="StyleSheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forward info</title>
    </head>
    <body>
        
        <%
            //retrieve passed parameter using getparameter method
            String name = request.getParameter("uname");
            String email = request.getParameter("email");
            String nationality = request.getParameter("nationality");
            String background = request.getParameter("background");
        %>
        <h1>Using jsp:forward to display user information</h1>
        <!--Display output in html-->
        <div class="card">
            <h2 class="form-title">Forwarded Info</h2>
            Name: <%= name %><br>
            Email: <%= email %><br>
            Nationality: <%= nationality %><br>
            Background: <%= background %>
           </div>
    </body>
   
</html>
