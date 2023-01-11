package dab;
import java.sql.*;
import oracle.jdbc.driver.*;
public class database {
    public static Connection conn = null;
    public static Statement st = null;
    public static ResultSet rs = null;
    public static String dep =  "";
    public database()
    {
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
            if(conn != null)
                System.out.println("awesome");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public static boolean Authenticate(String query,String password)
    {
        try {
            st = conn.createStatement();
            rs = st.executeQuery(query);
            while(rs.next()) {
                if (rs.getString(1).equals(password))
                    return true;
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return false;
    }

    public static void Student()
    {
        String[] dept={"ct5","ct7","it5","it7","ece5","ece7","pt5","pt7","mech5","mech7"};
        String[][] sCode={{"CS6109","CS6110","CS6111","CS6308","CS6304"},
                {"CS6008","CS6012","CS6020","CS6010","CS6023"},
                {"MA8551","EC8691","CS8591","IT8501","CS8494"},
                {"MA8765","MA1023","CS6001","IT8512","IT9532"},
                {"EC8501","EC8553","EC8552","EC8551","EC8075"},
                {"EC8509","EC8511","EC8555","EC8557","EC8560"},
                {"PR7501","PR7502","PR7503","PR7551","PR7003"},
                {"PR6592","PR6590","PR6544","PR6523","PR6511"},
                {"ME8595","ME8593","ME8501","ME8594","OAT552"},
                {"ME6969","ME8789","ME6523","ME8526","MA0877"}};
        try {
            PreparedStatement stat=null;
            PreparedStatement st1=null;
            String email;
//            for(int i =1;i < 50; i+=2   )
//            {
//                for(int j=0;j<10;j++)
//                {
//                    stat= conn.prepareStatement("insert into student values(?,?,?)");
//                    stat.setObject(1,dept[j]+Integer.toString(i+1));
//                    email=(i+1)+dept[j]+"@gmail.com";
//                    stat.setObject(3,email);
//                    stat.setObject(2,dept[j]);
//                    stat.executeUpdate();
//                }
//            }
//            System.out.println("jjjj");
            for(int i=0;i<10;i++){
                for(int j=0;j<5;j++){
                    st1= conn.prepareStatement("insert into courses values(?,?)");
                    st1.setObject(1,sCode[i][j]);
                    st1.setObject(2,dept[i]);
                    st1.executeUpdate();
                }
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }

}
