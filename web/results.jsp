<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="HW3css.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        double workedHours = Integer.parseInt(request.getParameter("hoursWorked"));
        double payHourly = Integer.parseInt(request.getParameter("hourlyPay"));
        double deductpreTax = Integer.parseInt(request.getParameter("pretaxDeduct"));
        double deductpostTax = Integer.parseInt(request.getParameter("posttaxDeduct"));
        double othours = 0; 
        double regularhours = 40;
        double otpayrate = 0; 
        double otpay;
        double grosspay;
        double pretPay;
        double taxamount;
        double taxrate;
        double posttPay;
        double netpay;
        double postDeduct;
        
       
        if (workedHours >40){
            othours = workedHours - regularhours;
            otpayrate = payHourly * 1.5;
            otpay = othours * otpayrate;
            grosspay = otpay + (regularhours * payHourly);
                    }
        else {
            grosspay = payHourly * workedHours;
            
        }
            
            if (grosspay < 500)
            {
                taxrate = .18;
            }
            else
            {
                taxrate = .22;
            }
            
            pretPay = grosspay - deductpreTax;
            taxamount = pretPay * taxrate;
            posttPay = pretPay - taxamount;
            netpay = posttPay - deductpostTax ;
            
       
        %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= workedHours  %></td>
                </tr>  
                
                 <tr>
                    <td>Hourly Rate:</td>
                    <td><%= payHourly %></td>
                </tr>
                
                 <tr>
                    <td># Hours Overtime:</td>
                    <td><%= othours %></td>
                </tr>
                
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otpayrate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grosspay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= deductpreTax %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretPay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxamount %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= deductpostTax %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netpay %></td>
                </tr>
                
            </tbody>
       
        </table>
        
    </body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          