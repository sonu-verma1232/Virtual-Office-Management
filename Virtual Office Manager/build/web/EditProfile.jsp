<%-- 
    Document   : EditProfile
    Created on : 30 Aug, 2024, 11:35:01 AM
    Author     : DELL
--%>
<%@page import="DB.DBCon" %>
<%@include file="EmployeeHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<center>
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
                out.println("<center><form action=UpdateEmployee>"
                          + "<h2 style='color:black;font-size:50px'>Edit Employee Details</h2><br>"
                          + "<table width=500 border=2  cellpadding=13 cellspacing=0 bgcolor=lightblue style=color:black>"
                          +"<tr><td width=220>Employee Code</td><td><input type=number name=ecode value='"+db.rst.getString(1)+"'></td></tr>"
                          +"<tr><td width=220>Employee Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'></td></tr>"
                          +"<tr><td>Date Of Birth</td><td><input type=date name=dob value='"+db.rst.getString(3)+"'></td></tr>"
                          +"<tr><td>Gender</td><td><input type=radio name=gen value=Male>Male<input type=radio name=gen value=Female>Female</td></tr>"
                          +"<tr><td>Post</td><td><input type=text name=post value='"+db.rst.getString(5)+"'></td></tr>"
                          +"<tr><td>Address</td><td><input type=text name=addr value='"+db.rst.getString(6)+"'></td></tr>"
                          +"<tr><td>City</td><td><input type=text name=city value='"+db.rst.getString(7)+"'></td></tr>"
                          +"<tr><td>Contact</td><td><input type=number name=cont value='"+db.rst.getString(8)+"'></td></tr>"
                          +"<tr><td>E Mail</td><td><input type=email name=mail value='"+db.rst.getString(9)+"'></td></tr>"
                          +"<tr><td>ID Name</td><td><input type=text name=idname value='"+db.rst.getString(10)+"'></td></tr>"
                          +"<tr><td>ID Number</td><td><input type=number name=idno value='"+db.rst.getString(11)+"'></td></tr>"
                          +"<tr><th><input type=submit value=Update name=opr></th><th><input type=reset value=Reset></th></tr>"
            
            
            +"</table></from></center>");
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    %>
    </div>
</center>

    </body>
</html>
