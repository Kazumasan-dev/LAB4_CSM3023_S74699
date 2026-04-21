<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 12:21:54 pm
    Author     : BLADEKAZUMA
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insurance quo</title>
    </head>
    <body>
        
        <div class="container">
            <h1>Insurance Quotation Result</h1>
            <div class="card">
                <h2 class="form-title">Transaction Summary</h2>
                
                <%
                    // Retrieve form data using getParameter
                    String icno = request.getParameter("icno");
                    String name = request.getParameter("name");
                    String coverage = request.getParameter("coverage");
                    String ncdStr = request.getParameter("ncd");
                    // DECLARE VARIABLE FOR PRICE AND NCD
                    double price = 0;
                    double ncd = 0;
                    
                    //Try and Catch Clause that catch 0 value
                    try {
                        price = Double.parseDouble(request.getParameter("price"));
                        ncd = Double.parseDouble(ncdStr);
                    } catch (Exception e) {
                        price = 0;
                        ncd = 0;
                    }

                    // Business Logic
                    double rate = 0;
                    String coverageDisplay = "";

                    if ("comprehensive".equals(coverage)) {
                        rate = 0.05; 
                        coverageDisplay = "Comprehensive";
                    } else {
                        rate = 0.03; 
                        coverageDisplay = "Third Party";
                    }

                     //Base insurance calculation
                    double insurance = price * rate;

                     //Apply NCD discount
                    double discount = insurance * ncd;
                    double afterNCD = insurance - discount;

                    // Add 8% SST
                    double sst = afterNCD * 0.08;
                    double finalAmount = afterNCD + sst;
                %>
                <!--Display output in html-->
                <div class="result-box">
                    <div class="result-group">
                        <label>IC No:</label>
                        <p><%= icno %></p>
                    </div>
                    <div class="result-group">
                        <label>Name:</label>
                        <p><%= name %></p>
                    </div>
                    <div class="result-group">
                        <label>Market Price (RM):</label>
                        <p><%= String.format("%.2f", price) %></p>
                    </div>
                    <div class="result-group">
                        <label>Coverage Type:</label>
                        <p><%= coverageDisplay %></p>
                    </div>
                    <div class="result-group">
                        <label>NCD:</label>
                        <p><%= (int)(ncd * 100) %>%</p>
                    </div>
                    
                    <hr>

                    <div class="result-group-flex">
                        <label>Base Insurance:</label>
                        <p>RM <%= String.format("%.2f", insurance) %></p>
                    </div>
                    <div class="result-group-flex">
                        <label>NCD Discount:</label>
                        <p>RM <%= String.format("%.2f", discount) %></p>
                    </div>
                    <div class="result-group-flex">
                        <label>After NCD:</label>
                        <p>RM <%= String.format("%.2f", afterNCD) %></p>
                    </div>
                    <div class="result-group-flex">
                        <label>SST (8%):</label>
                        <p>RM <%= String.format("%.2f", sst) %></p>
                    </div>
                    <div class="result-group-flex">
                        <label><strong>Final Insurance Amount:</strong></label>
                        <p><strong>RM <%= String.format("%.2f", finalAmount) %></strong></p>
                    </div>
                </div>

                <div class="button-group">
                    <button onclick="window.history.back()" class="btn-back">Back</button>
                </div>
            </div>
        </div>
        
    </body>
</html>
