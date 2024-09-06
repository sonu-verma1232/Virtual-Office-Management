<%-- 
    Document   : UpdateEmployee
    Created on : 25 Aug, 2024, 11:32:30 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="AdminHeader.jsp" %>

<center>
    <h2>Update Employee</h2>
    <form action="EmployeeDetail.jsp">
        <table width="600" border="2" height="150" cellpadding="10" style="color:black;background-color: lightblue;font-size: 16px;">
            <tr><td width="275">Employee Code or Contact or E Mail</td><td><input type="text" name="data"></td></tr>
            <tr><td><center><input type="submit" value="Search"></center></td><td><center><input type="reset" value="Reset"></center></td></tr>
            
    </table>
    </form>
</center>
    </body>
</html>
