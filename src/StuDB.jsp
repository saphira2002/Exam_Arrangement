<html>
<body>
<%@ page import="java.sql.*,java.util.*,oracle.jdbc.driver.*" %>
<%
        String[] dept={"ct","it","ece","pt","mech"};
        out.println("Oracle JDBC Con test");
    try(Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl","system","#Durgaunni24")) {
        if(conn != null){
            out.println("Connected!!\n");
        } else { out.println("Failed\n");} 
        try{
            Statement st = null;
            try{
                st =conn.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                String email;
                int i=1;
               // for(int i =0;i < 50; ++i)
                //{ 
                    for(int j=0;j<5;j++)
                    {
                    PreparedStatement stat= conn.prepareStatement("insert into student values(?,?,?)");
                    stat.setObject(1,(i*j)+1);
                    email=(i+1)+dept[j]+"@gmail.com";
                    stat.setObject(2,email);
                    stat.setObject(3,dept[j]);
                    stat.executeUpdate();
                    out.println("Inserted "+i*j+" ");
                    }
                //}
             }catch(Exception e){ out.println("Inner TRY  "+e);}
        }catch(Exception e){ out.println("Outer TRY "+e); }
    }catch(Exception e){ out.println("OuterOuter TRY "+e); }
%>
</body>
</html>