package dab;
import java.sql.*;
import oracle.jdbc.driver.*;
public class database {
    public static Connection conn = null;
    public static Statement st = null;
    public static ResultSet rs = null;
    public database()
    {
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1","system","#Durgaunni24");
            if(conn != null)
                System.out.println("awesome");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public static boolean Authenticate(String query)
    {
        try {
            st = conn.createStatement();
            //String que = "create table TeachLogin(x int)";
            //st.executeUpdate(que);
            rs = st.executeQuery(query);
            return true;
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return false;
    }

}
