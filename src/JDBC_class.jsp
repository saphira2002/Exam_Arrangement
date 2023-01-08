<html>
<head> Reply page </head>
<body>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.*,oracle.jdbc.driver.*" %>
    <p> date: </p>
        <% 
        String[] num={"1","2","3","4","5"};
        String[] dept={"ct","it","ece","pt","mech"};
        String[][] sCode={{"CS6109","CS6110","CS6111","CS6308","CS6304"},
                          {"MA8551","EC8691","CS8591","IT8501","CS8494"},
                          {"EC8501","EC8553","EC8552","EC8551","EC8075"},
                          {"PR7501","PR7502","PR7503","PR7551","PR7003"},
                          {"ME8595","ME8593","ME8501","ME8594","OAT552"}};
        %>
<%
    out.println("Oracle JDBC Con test");
    try(Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl","system","#Durgaunni24")) {
        if(conn != null){
            out.println("Connected!!\n");
        } else { out.println("Failed\n");} 
        try{
            Statement st = null;
            try{
                st =conn.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                int i=0,j=0;
                for(i=0;i<5;i++)
                {
                    for(j=0;j<5;j++)
                    {
                        String d = request.getParameter("date"+num[j]+dept[i]);
                    PreparedStatement stat= conn.prepareStatement("insert into timetable values(?,?,?)");
                    stat.setObject(3,java.sql.Date.valueOf(d));
                    stat.setObject(1,sCode[i][j]);
                    stat.setObject(2,dept[i]);
                    stat.executeUpdate();
                    out.println("Inserted "+i+j+" ");
                    }
                }
                out.println("Inserted ");
                ResultSet rs = st.executeQuery("select* from timetable");
                String Subcode,dte,dname;
                while(rs.next())
                {
                    Subcode=rs.getString(1);
                    dname=rs.getString(2);
                    dte=rs.getString(3);
                    out.println("SC: "+Subcode+" Dname: "+dname+"  Date: "+dte);
                }
            }catch(Exception e){ out.println("Inner TRY  "+e);}
        }catch(Exception e){ out.println("Outer TRY "+e); }
    }catch(Exception e){ out.println("OuterOuter TRY "+e); }
            out.println("Awesome");
%>
</body>
</html>