<%-- 
    Document   : insuranceQuotation
    Created on : 21 Apr 2026, 12:13:01 pm
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
        <title>JSP Page</title>
    </head>
    <body>
          <!--Insurance quotation calculation form-->
          <div class="container">
            <h1>Insurance Quotation</h1>
            <div class="card">
                <!--form title-->
                <h2 class="form-title">Insurance Calculation</h2>
                
                
                <form action="processInsuranceQuo.jsp" method="POST">
                    <!--ic number field-->
                    <div class="form-group">
                        <label for="icno">IC No*</label>
                        <input type="text" id="icno" name="icno" placeholder="E.g. 888888-08-8888" required>
                    </div>
                     <!--name field-->
                    <div class="form-group">
                        <label for="name">Name*</label>
                        <input type="text" id="name" name="name" placeholder="Enter name" required>
                    </div>

                    <div class="form-group">
                        <label for="price">Market Price*</label>
                        <input type="number" id="price" name="price" step="0.01" placeholder="Enter market price" required>
                    </div>
                    <!--option for coverage type-->
                    <div class="form-group">
                        <label for="coverage">Coverage Type</label>
                        <select id="coverage" name="coverage">
                            <option value="comprehensive">Comprehensive</option>
                            <option value="thirdparty">Third Party</option>
                        </select>
                    </div>
                   <!--option for ncd-->
                    <div class="form-group">
                        <label for="ncd">No Claims Discount (NCD)</label>
                        <select id="ncd" name="ncd">
                            <option value="0">0%</option>
                            <option value="0.25">25%</option>
                            <option value="0.30">30%</option>
                            <option value="0.55">55%</option>
                        </select>
                    </div>
                    <!--submit and cancel button-->
                    <div class="button-group">
                        <button type="submit" class="btn btn-submit">Submit</button>
                        <button type="reset" class="btn btn-cancel">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
