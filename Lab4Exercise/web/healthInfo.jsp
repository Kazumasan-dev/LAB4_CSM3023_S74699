<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 4:33:18 pm
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@include file="header.jsp" %>
<div class="card">
    <h2 class="form-title">BMI Categories Information</h2>
    <%
        // Store categories in an ArrayList using Java Scriptlet
        ArrayList<String[]> infoList = new ArrayList<>();
        infoList.add(new String[]{"Underweight", "Below 18.5"});
        infoList.add(new String[]{"Normal", "18.5 – 25.0"});
        infoList.add(new String[]{"Overweight", "Above 25.0"});
    %>
    <table border="0" width="100%" style="border-collapse: collapse;">
        <tr style="background-color: #6f42c1; color: white;">
            <th style="padding: 12px; text-align: left;">Category</th>
            <th style="padding: 12px; text-align: left;">BMI Range</th>
        </tr>
        <% for(String[] info : infoList) { %>
        <tr style="border-bottom: 1px solid #ddd;">
            <td style="padding: 12px;"><%= info[0] %></td>
            <td style="padding: 12px;"><%= info[1] %></td>
        </tr>
        <% } %>
    </table>
</div>
<%@include file="footer.jsp" %>