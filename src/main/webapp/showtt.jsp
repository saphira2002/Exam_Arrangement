<%@ page import="dab.database,java.sql.*"%>
<%
try{
    database d = new database();
    Statement st = d.conn.createStatement();
    String query = "select * from timetable where dept like '" + d.dep + "%' order by dept";
    ResultSet rs = st.executeQuery(query);
    while(rs.next())
    {
%>
<p><% out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3).split(" ")[0]);%></p>
<%
}
}
catch(Exception e)
{
    out.println(e);
}
%>