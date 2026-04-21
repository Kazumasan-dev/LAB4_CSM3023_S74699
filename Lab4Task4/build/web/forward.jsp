<%-- 
    Document   : forward
    Created on : 21 Apr 2026, 12:06:18 pm
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
        <title>Using JSP Standard Action (Forward)</title>
    </head>
    <body>
        <h1>Using jsp:forward to display user information</h1>
        <!--Pass parameter to forwardinfo.jsp-->
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="uname" value="Muhammad Aiman Bin Zamri" />
            <jsp:param name="email" value="s74699@ocean.umt.edu.my" />
            <jsp:param name="nationality" value="Malaysia" />
            <jsp:param name="background" value="Student" />
        </jsp:forward>
    </body>
</html>
