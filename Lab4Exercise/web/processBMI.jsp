<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 4:32:22 pm
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
    
        // Retrieve values using request.getParameter()
        double weight = Double.parseDouble(request.getParameter("weight"));
        double height = Double.parseDouble(request.getParameter("height"));
        
        // Validation: Height must not be zero
        if (height <= 0) {
            out.println("<script>alert('Height cannot be zero!'); window.history.back();</script>");
        } else {
            // Calculate BMI: weight / (height * height)
            double bmi = weight / (height * height);
            
            // Determine BMI category
            String category = "";
            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi >= 18.5 && bmi <= 25) {
                category = "Normal";
            } else {
                category = "Overweight";
            }
            
            // Forward result using <jsp:forward> and <jsp:param>
%>
            <jsp:forward page="resultBMI.jsp">
                <jsp:param name="bmiVal" value='<%= String.format("%.2f", bmi) %>' />
                <jsp:param name="category" value="<%= category %>" />
            </jsp:forward>
<%
        }
    } catch (Exception e) {
        out.println("<script>alert('Please enter valid numeric values!'); window.history.back();</script>");
    }
%>
