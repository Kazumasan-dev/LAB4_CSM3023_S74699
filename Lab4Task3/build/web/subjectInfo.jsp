<%-- 
    Document   : subjectInfo.jsp
    Created on : 21 Apr 2026, 12:02:31 pm
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
        <title>Subject Information</title>
    </head>
    <body>
        
        
        <div class="card">
            <h3 class="form-title">Calling SubjectInfo.jsp Page</h3>
            <p>Code: <%= request.getParameter("code") %></p>
            <p>Subject: <%= request.getParameter("subject") %></p>
            <p>Credit: <%= request.getParameter("credit") %></p>
            
        </div>
        
        
    </body>
</html>
