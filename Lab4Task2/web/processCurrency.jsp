<%-- 
    Document   : processCurrency
    Created on : 21 Apr 2026, 11:51:06 am
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
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            //declare variable for each with constant value
            final double USD = 0.25;
            final double EURO = 0.21;
            final double JPY = 40;
            final double SGD = 0.32;
            //method to calculate rate that accept currency and amount as parameter
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.0;
                //calculate currency base on option chosen on previous page
                if (currency.equals("1")) currencyChange = amount * USD;
                else if (currency.equals("2")) currencyChange = amount * EURO;
                else if (currency.equals("3")) currencyChange = amount * JPY;
                else currencyChange = amount * SGD;

                return currencyChange;
            }
        %>

        <% 
            //get currency type using get parameter method and assign to variable currency type
            String currencyType = request.getParameter("currencyType");
            //get amount using get parameter method and assign to variable amount
            int amount = Integer.parseInt(request.getParameter("amount"));
            //invoke method calculate rate  to calculate rate and assign its value to total variable
            double total = calculateRate(currencyType, amount);
            
            //declare variable currencyname
            String currencyName = "";
            //assign value to currencyName based on type of currency chosen
            if ("1".equals(currencyType)) currencyName = "USD";
            else if ("2".equals(currencyType)) currencyName = "EURO";
            else if ("3".equals(currencyType)) currencyName = "JPY";
            else currencyName = "SGD";
        %>
        <!--Display result in html -->
        <h1>JSP Application result</h1>
        <div class="card">
            <h3 class="form-title">Conversion Result</h3>
            <p>Amount In Ringgit Malaysia(RM)</p>
            <p>RM: <%= amount %><p>
            <p>Converted to <%= currencyName %>:</p>
            <p><%= String.format("%.2f", total) %></p>
            <button class="btn-back" onclick="history.back()">Back to converter </button>
            
        </div>
        
    </body>
</html>
