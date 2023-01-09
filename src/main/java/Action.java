import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;

public class Action extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

        if(req.getParameter("uname").equals("Hai") && req.getParameter("psw").equals("hoi"))
        {
            try {
                res.sendRedirect("tt/tt"+req.getParameter("dept").toLowerCase()+".jsp");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
