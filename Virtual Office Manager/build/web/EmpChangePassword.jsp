<%-- 
    Document   : EmpChangePassword
    Created on : 31 Aug, 2024, 3:00:46 PM
    Author     : DELL
--%>

<%@include file="EmployeeHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <center>
                <form action="EmpChangePassword" method='post'>
                    <table width="400" height="300" cellpadding="10" cellspacing="0" border="2px" style=" background-color:lightblue;color: black">
                    <tr><td width="200">Old Password</td><td><input type="password" name="opswd"></td></tr>
                    <tr><td>New Password</td><td><input type="password" name="npswd"></td></tr>
                    <tr><td>Confirm Password</td><td><input type="password" name="cpswd"></td></tr>
                    <tr><td><input type="submit" value="Submit"></td><td><input type="reset" value="Reset"></td></tr>
                </table>
                </form>
                <%
                    if(request.getParameter("error")!=null)
                    {
                        String msg=request.getParameter("error");
                        out.println("<h2 style=color:red>"+msg+"</h2>");
                    }
                %>
            </center>
        </div>
    </body>
</html>
