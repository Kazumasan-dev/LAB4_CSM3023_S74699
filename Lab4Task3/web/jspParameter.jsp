<%-- 
    Document   : jspParameter
    Created on : 21 Apr 2026, 11:58:51 am
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
        <title>Using JSP Standard Action</title>
    </head>
    <body>
        <h1>Using jsp:include and jsp:param to display information information on JSP Page</h1>
        <%
            String sCode = "CSE3023";
            String sSubject = "Web-based Application Development";
            String sCredit = "3(2+1)";
         %>

        <h2>Subject Info</h2>

        <jsp:include page="subjectInfo.jsp">
            <jsp:param name="code" value="<%= sCode %>" />
            <jsp:param name="subject" value="<%= sSubject %>" />
            <jsp:param name="credit" value="<%= sCredit %>" />
        </jsp:include>
        
    </body>
</html>
