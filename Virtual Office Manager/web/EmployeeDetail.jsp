<%-- 
    Document   : EmployeeDetail
    Created on : 26 Aug, 2024, 10:29:32 AM
    Author     : DELL
--%>


<%@page import="DB.DBCon" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="AdminHeader.jsp" %>

<div>
    <%
        String data = request.getParameter("data");
        DBCon db = new DBCon();
        
        db.pstmt = db.con.prepareStatement("select * from emp_mstr where ecode=? or econt=? or email=?");
        db.pstmt.setString(1,data);
        db.pstmt.setString(2,data);
        db.pstmt.setString(3,data);
        db.rst = db.pstmt.executeQuery();
        
        if(db.rst.next()){
            out.println("<center>"
                    + "<h2 style='color: black;font-family: sans-serif;font-weight: 700;'>Employee Detail</h2>"
                    + "<div style='background:lightblue;width: 600px;height: 610px;'>"
                    + "<form action='UpdateDeleteEmp'>"
                    +"<table width=600 border=2 cellpadding=13>"
                    +"<tr><td width=250>Employee Code</td><td><input type=number name=code value='"+db.rst.getString(1)+"'></td></tr>"
                    +"<tr><td>Employee Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'></td></tr>"
                    +"<tr><td>Date Of Birth</td><td><input type=date name=dob value='"+db.rst.getString(3)+"'></td></tr>"
                    +"<tr><td>Gender</td><td><input type=radio name=gen value=Male>Male<input type=radio name=gen value=Female>Female</td></tr>"
                    +"<tr><td>Post</td><td><input type=text name=post value='"+db.rst.getString(5)+"'></td></tr>"
                    +"<tr><td>Address</td><td><input type=text name=addr value='"+db.rst.getString(6)+"'></td></tr>"
                    +"<tr><td>City</td><td><input type=text name=city value='"+db.rst.getString(7)+"'></td></tr>"
                    +"<tr><td>Contact</td><td><input type=number name=cont value='"+db.rst.getString(8)+"'></td></tr>"
                    +"<tr><td>E Mail</td><td><input type=email name=mail value='"+db.rst.getString(9)+"'></td></tr>"
                    +"<tr><td>ID Name</td><td><input type=text name=idname value='"+db.rst.getString(10)+"'></td></tr>"
                    +"<tr><td>ID Number</td><td><input type=number name=idno value='"+db.rst.getString(11)+"'></td></tr>"
                    +"<tr><th><input type=submit value=Update name=opr></th><th><input type=submit value=Delete name=opr></th></tr>"
            
                    +"</table>"
                    +" </form>"
                    + "</div>"
                    + "</center>");
        }
        else
        {
            out.println("<h1>Record does not found.</h1>");
        }
        
    %>
</div>
