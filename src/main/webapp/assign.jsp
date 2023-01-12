<%@page import= "ds.Assign_Seats"%>
<%
    Assign_Seats a = new Assign_Seats();
    a.Main_Algo();
    response.sendRedirect("admin.jsp");
%>