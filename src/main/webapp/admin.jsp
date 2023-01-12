<%@page import="ds.db,ds.Action,dab.database"%>
<%
    boolean dis = false;
    String x = " ";
    for(int i = 0;i < 10;++i)
    {
        if(db.y[i] == 1)
            out.println(db.depts[i]);
        if(db.y[i] == 0 || db.g == 1)
            dis = true;
    }
    if(dis)
        x = "hidden";
    dis = false;
    String y = "hidden";
    if(db.g == 1)
        y = " ";


%>

<form action = "assign.jsp" method = "post">
  <button <%= x %> >ALLOT SEATS</button>
</form>
<form action="showttadm.jsp" method="post">
  <button type="submit">VIEW TIMETABLE</button>
</form>
<form action = "view.jsp" method = "post">
  <button <%= y%> > >VIEW SEATS</button>
</form>