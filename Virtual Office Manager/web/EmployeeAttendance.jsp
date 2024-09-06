<%-- 
    Document   : EmployeeAttendance
    Created on : 31 Aug, 2024, 4:50:10 PM
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
        <div><center>
            <form action="AEmpAttendanceReport.jsp">
                <table width="400" height="180" bgcolor="lightblue" border="1">
                   <tr><td width="200">Enter Employee Code </td><td><input type="number" name="code"></td></tr>
                   <tr><th><input type="submit" value="Submit"></th><th><input type="reset" value="Reset"</th></tr>
                </table>
            </form></center>
        </div>
    </body>
</html>
