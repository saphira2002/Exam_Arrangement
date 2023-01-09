import oracle.jdbc.driver.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
public class db extends HttpServlet {
    public void doPost(HttpServletRequest req,HttpServletResponse res)
    {
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1","system","#Durgaunni24");
            if(conn != null)
                res.sendRedirect("../index.jsp");
            else
                res.sendRedirect("login.jsp");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
