<%-- 
    Document   : AChangePassword
    Created on : 27 Aug, 2024, 3:49:16 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div>
            <center>
                <form action="AChangePassword" method='post'>
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
