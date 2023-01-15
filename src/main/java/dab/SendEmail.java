package dab;
import java.sql.*;
import dab.email;
import oracle.jdbc.driver.*;
public class SendEmail{
    public static Connection conn = null;
    public static Statement st = null;
    public static ResultSet rs = null;
    public static void sendingMail(){
        String mail,msg;
        email e=new email();
/*        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
            if(conn != null)
                System.out.println("awesome");
            else{System.out.println("uh hoo");}
            rs=st.executeQuery("select email,room,roww,coll,x_date from student s,seat_allot t where s.sid = t.sid");
            while(rs.next())
            {
                mail=rs.getString(1);
                msg="Room no: "+rs.getString(2)+"  Seat in Row: "+rs.getString(3)+" and Col: "+rs.getString(4)+" will be your seat for exam on date: " + rs.getString(5);
                e.awesome(mail,msg);
            }
        }
        catch(Exception f)
        {
            System.out.println(f);
        }*/

        //dont comment the following
        mail="shreez1607@gmail.com, tell2magarika.m@gmail.com,srijithunni11@gmail.com";
        msg="Room no 2 Seat in Row: 1 and Col: 3 will be your seat for exam on date: 07-JAN-23";
        e.awesome(mail,msg);
        

    }
}