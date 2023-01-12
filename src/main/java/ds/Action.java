package ds;
import dab.database;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import dab.database.*;
import java.io.IOException;

public class Action extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
                String username = req.getParameter("uname");
                String password = req.getParameter("pwd");
                String dept = req.getParameter("dept");
                String query = "select password from TEACHLOGIN where username = '" + username + "'";
                System.out.println(query);
                database d = new database();
                database.dep = dept;
                System.out.println(d.conn);
                if(d.Authenticate(query,password))
                {
                    if(username.equals("Admin")) {
                        res.sendRedirect("admin.jsp");
                    }
                    else if(db.timetable(dept)) {
                        res.sendRedirect("tt/tt" + dept.toLowerCase() + ".html");
                    }
                    else
                        res.sendRedirect("tt/home.jsp");
                }
                else{
                    System.out.println("Not so great");
                }

    }
}
