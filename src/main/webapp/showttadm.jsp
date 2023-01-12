<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<%@ page import="dab.database,java.sql.*"%>
<%
try{
    database d = new database();
    Statement st = d.conn.createStatement();
    String query = "select * from timetable order by dept";
    ResultSet rs = st.executeQuery(query);
    int count = 0;
    %>
        <div align="center" class="container">
    <%
    while(rs.next())
    {
    if(count % 5 == 0)
    {
    %>
    <h3><% out.println(rs.getString(1)); %></h3>
    <%
    }
    %>
<p><% out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3).split(" ")[0]);%></p>
<%
count++;
}%>
</div>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>