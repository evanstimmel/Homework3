<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="HW3css.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    
                    <tr>
                     <td>Hours Worked: </td>
                    <td><input type="text" name="hoursWorked" value="" size="50"</td>
                </tr>
                
                <tr>
                     <td>Hourly Pay: </td>
                    <td><input type="text" name="hourlyPay" value="" size="50"</td>
                </tr>
                
                <tr>
                     <td>Pre-Tax Deduct: </td>
                     <td><input type="text" name="pretaxDeduct" value="" size="50" ></td>
                </tr>
                
                <tr>
                     <td>Post-Tax Deduct: </td>
                     <td><input type="text" name="posttaxDeduct" value="" size="50" required ></td>
                </tr>

                </tbody>
                
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
 </body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          