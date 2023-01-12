<%@page import="dab.database,java.sql.*,ds.db"%>
<%
database d = new database();
Statement st = d.conn.createStatement();
String f = request.getParameter("dep");
String query = "delete from timetable where dept like '" + f  + "%'";
st.executeQuery(query);
db.g = 0;
db.update(f);
response.sendRedirect("../login.jsp");
%>