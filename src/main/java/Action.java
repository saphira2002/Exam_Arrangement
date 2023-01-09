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
                String query = "select * from TEACHLOGIN";
                System.out.println(query);
                database d = new database();
                System.out.println(d.conn);
                if(d.Authenticate(query))
                {
                    System.out.println("AWESOME");
                }
                else{
                    System.out.println("Not so great");
                }

    }
}
