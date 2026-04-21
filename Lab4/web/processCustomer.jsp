<%-- 
    Document   : processCustomer
    Created on : 21 Apr 2026, 11:36:38 am
    Author     : MUHAMMAD AIMAN BIN ZAMRI
    Course     : CSM3023
    Matric No  : S74699
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="Stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        //variable for price
        final double price = 10.0;
        //variable that store value get from parameter
        String cust_no = request.getParameter("customerCode");//customer code
        String cust_type = request.getParameter("customerType");//customer Type
        //variable to store quantity
        int quantity = 0;
        //try and catch clause that catch exception if the quantity is 0
        try {
             //assign value from parameter to quantity variable
             quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (Exception e) {
            quantity = 0;
        }
        // declare varaible for 
        double total = 0;//total amount 
        String message = "";//message for status
        String type="";//type of customer
        
        //condition statement to calculate discount
        if (cust_type.equals("1") && quantity > 100) {//normal customer
            message = "You're entitled to 10% discount";
            total = quantity * price * 0.9;
            type= "Normal Customer";
        } else if (cust_type.equals("2") && quantity > 100) {//privilage customer
            message = "You're entitled to 25% discount";
            total = quantity * price * 0.75;
            type= "Privilege Customer";
        } else {//quantity less than 100
            message = "You're not entitled to any discount";
            total = quantity * price;
        }

        String custTypeDisplay = cust_type.equals("1") ?
        "Normal Customer" : "Privilege Customer";
     %>
        <!--Display result in html -->
        <h1>Customer Discount Result</h1>
        <div class="container">
            <div class="card">
                <h3 class="form-title">Transaction Summary</h3>
                
                <p>Customer code: <%= cust_no %></p>
                <p>Quantity: <%= quantity %></p>
                <p>Customer Type: <%= type %></p>
                <p>Status: <%= message %></p>
                <p>Total Amount: RM <%= total %></p>
                <button class="btn-back" onclick="history.back()">Back </button>
            </div>
        </div>
        
    </body>
</html>
