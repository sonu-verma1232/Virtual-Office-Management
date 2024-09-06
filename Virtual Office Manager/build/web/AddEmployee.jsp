<%-- 
    Document   : AddEmployee
    Created on : 24 Aug, 2024, 3:38:31 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="AdminHeader.jsp" %>

<center>
    <h2 style="color: black;font-family: sans-serif;font-weight: 700;">Employee Registration Page</h2>
    <div style="background-color: lightblue;width: 600px;height: 657px;">
        
        <form action="AddEmployee">
            <table width="600" border="2" cellpadding="13">
            <tr><td width="250">Employee Code</td><td><input type="number" name="code"></td></tr>
            <tr><td>Employee Name</td><td><input type="text" name="name"></td></tr>
            <tr><td>Date Of Birth</td><td><input type="date" name="dob"></td></tr>
            <tr><td>Gender</td><td><input type="radio" name="gen" value="Male">Male<input type="radio" name="gen" value="Female">Female</td></tr>
            <tr><td>Post</td><td><input type="text" name="post"></td></tr>
            <tr><td>Address</td><td><input type="text" name="addr"></td></tr>
            <tr><td>City</td><td><input type="text" name="city"></td></tr>
            <tr><td>Contact</td><td><input type="number" name="cont" ></td></tr>
            <tr><td>E Mail</td><td><input type="email" name="mail"></td></tr>
            <tr><td>ID Name</td><td><input type="text" name="idname"></td></tr>
            <tr><td>ID Number</td><td><input type="number" name="idno"></td></tr>
            <tr><td>Password</td><td><input type="password" name="pswd"></td></tr>
            <tr><th><input type="submit" value="Submit"></th><th><input type="reset" value="Reset"></th></tr>
            
        </table>
        </form>
    </div>
    
</center>
</body>
</html>
