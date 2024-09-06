

package admin;

import DB.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddEmployee extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            String code = request.getParameter("code");
            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String gen = request.getParameter("gen");
            String post = request.getParameter("post");
            String addr = request.getParameter("addr");
            String city = request.getParameter("city");
            String cont = request.getParameter("cont");
            String mail = request.getParameter("mail");
            String idname = request.getParameter("idname");
            String idno = request.getParameter("idno");
            String pswd = request.getParameter("pswd");
            
            DBCon db = new DBCon();
            db.pstmt = db.con.prepareStatement("insert into emp_mstr values(?,?,?,?,?,?,?,?,?,?,?)");
            db.pstmt.setString(1, code);
            db.pstmt.setString(2,name);
            db.pstmt.setString(3,dob);
            db.pstmt.setString(4,gen);
            db.pstmt.setString(5,post);
            db.pstmt.setString(6,addr);
            db.pstmt.setString(7,city);
            db.pstmt.setString(8,cont);
            db.pstmt.setString(9,mail);
            db.pstmt.setString(10,idname);
            db.pstmt.setString(11,idno);
            
            int i1 = db.pstmt.executeUpdate();
            db.pstmt = db.con.prepareStatement("insert into emp_status(ecode,join_date,emp_status)values(?,curdate(),'working')");
            db.pstmt.setString(1,code);
            
            int i2 = db.pstmt.executeUpdate();
            db.pstmt = db.con.prepareStatement("insert into login(user,pswd,utype,ac_status)values(?,?,'Employee','1')");
            db.pstmt.setString(1, mail);
            db.pstmt.setString(2, pswd);
            
            int i3 = db.pstmt.executeUpdate();
            if(i1>0 && i2>0 && i3>0)
            {
                response.sendRedirect("AddEmployee.jsp?msg=Employee Added Successfully");
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    
}
