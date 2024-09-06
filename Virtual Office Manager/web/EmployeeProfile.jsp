<%-- 
    Document   : EmployeeProfile
    Created on : 28 Aug, 2024, 3:37:25 PM
    Author     : DELL
--%>


<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<div>
     <%
      try{
         
        
            String user = session.getAttribute("user").toString();
            DBCon db = new DBCon();
            db.pstmt=db.con.prepareStatement("select * from emp_mstr where email=?");
            db.pstmt.setString(1, user);
            db.rst = db.pstmt.executeQuery();
            if(db.rst.next())
            {
                out.println("<center>"
                        + "<h1 style=color:black>Employee Details</h1><br>"
                        + "<table width=500 border=2  cellpadding=13 cellspacing=0 bgcolor=lightblue style=color:black>"
                        +"<tr><td width=220>Employee Code</td><td>"+db.rst.getString(1)+"</td></tr>"
            +"<tr><td width=220>Employee Name</td><td>"+db.rst.getString(2)+"</td></tr>"
            +"<tr><td>Date Of Birth</td><td>"+db.rst.getString(3)+"</td></tr>"
            +"<tr><td>Gender</td><td>"+db.rst.getString(4)+"</td></tr>"
            +"<tr><td>Post</td><td>"+db.rst.getString(5)+"</td></tr>"
            +"<tr><td>Address</td><td>"+db.rst.getString(6)+"</td></tr>"
            +"<tr><td>City</td><td>"+db.rst.getString(7)+"</td></tr>"
            +"<tr><td>Contact</td><td>"+db.rst.getString(8)+"</td></tr>"
            +"<tr><td>E Mail</td><td>"+db.rst.getString(9)+"</td></tr>"
            +"<tr><td>ID Name</td><td>"+db.rst.getString(10)+"</td></tr>"
            +"<tr><td>ID Number</td><td>"+db.rst.getString(11)+"</td></tr>"
            
            +"</table></center>");
            }
            else
        {
            out.println("<h1>Record does not found.</h1>");
        }

            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    %>
</div>
    </body>
</html>
