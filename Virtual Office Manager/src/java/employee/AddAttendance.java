

package employee;
import java.util.Calendar;
import DB.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

public class AddAttendance extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
           String opr = request.getParameter("opr");
           HttpSession session = request.getSession();
           String email=session.getAttribute("user").toString();
           String ecode="";
           DBCon db = new DBCon();
           db.pstmt=db.con.prepareStatement("select ecode from emp_mstr where email=?");
           db.pstmt.setString(1, email);
           db.rst=db.pstmt.executeQuery();
           if(db.rst.next())
           {
               ecode=db.rst.getString(1);
           }
           Calendar c = Calendar.getInstance();
           String time=c.get(Calendar.HOUR)+":"+c.get(Calendar.MINUTE)+":"+c.get(Calendar.SECOND);
           if(opr.equalsIgnoreCase("checkIN"))
           {
               db.pstmt = db.con.prepareStatement("insert into emp_attendance(ecode,atnd_date,time_in)values(?,curdate(),?)");
               db.pstmt.setString(1, ecode);
               db.pstmt.setString(2,time);
               
               int i=db.pstmt.executeUpdate();
               if(i>0)
               {
                   response.sendRedirect("EmployeeHome.jsp?msg=Check In Successfully");
               }
           }
           else if(opr.equalsIgnoreCase("Checkout"))
           {
               db.pstmt=db.con.prepareStatement("update emp_attendance set time_out=? where ecode=? and atnd_date=curdate()");
               db.pstmt.setString(1, time);
               db.pstmt.setString(2, ecode);
               int i=db.pstmt.executeUpdate();
               if(i>0)
               {
                   session.removeAttribute("user");
                   response.sendRedirect("index.html?msg=Check Out successfully");
               }
           }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
               
    }
}
