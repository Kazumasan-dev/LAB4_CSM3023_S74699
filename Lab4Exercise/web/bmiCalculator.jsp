<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 4:31:50 pm
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %><!--include header -->

<div class="card">
    <!--Form title-->
    <h2 class="form-title">BMI Calculator</h2>
    <form action="processBMI.jsp" method="POST">
        <!--input textfield for weight-->
        <div class="form-group">
            <label>Weight (kg):</label>
            <input type="number" name="weight" step="0.1" placeholder="Enter weight in kg" required>
        </div>
        <!--input textfield for height-->
        <div class="form-group">
            <label>Height (m):</label>
            <input type="number" name="height" step="0.01" placeholder="Enter height in meters" required>
        </div>
        
        <div class="button-group">
            <!--submit button-->
            <button type="submit" class="btn btn-submit">Calculate BMI</button>
            <!--Clear button-->
            <button type="reset" class="btn btn-cancel">Clear</button>
        </div>
    </form>
</div>
<%@include file="footer.jsp" %><!--include footer-->
