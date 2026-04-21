<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 4:32:52 pm
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %><!--Include header-->
<div class="card">
    <h2 class="form-title">Your BMI Result</h2>
    <div class="result-box">
        <!--Display calculated BMI-->
        <div class="result-group-flex">
            <label>Calculated BMI:</label>
            <p><strong><%= request.getParameter("bmiVal") %></strong></p>
        </div>
        <!--Display weight category-->
        <div class="result-group-flex">
            <label>Health Category:</label>
            <p><strong><%= request.getParameter("category") %></strong></p>
        </div>
    </div>
    <!--New calculation buttonr-->
    <div class="button-group">
        <a href="bmiCalculator.jsp" class="btn btn-submit" style="text-decoration: none;">New Calculation</a>
    </div>
</div>
<%@include file="footer.jsp" %><!--Include footer-->