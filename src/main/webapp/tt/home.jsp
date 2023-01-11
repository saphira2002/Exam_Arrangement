<%@page import="ds.db,ds.Action"%>
<%
    boolean dis = false;
    String x = " ";
    for(int i = 0;i < 10;++i)
    {
        out.println(db.y[i]);
        if(db.y[i] == 0)
            dis = true;
    }
    if(dis)
        x = "disabled";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="../showtt.jsp" method="post">
  <button type="submit">VIEW TIMETABLE</button>
</form>
<form action = "../assign.jsp" method = "post">
  <button <%= x %> >ALLOT SEATS</button>
</form>
<form action="update.jsp" method="post">
<button type="submit">UPDATE AND RESET</button>
</form>
<form action="goback.jsp" method="post">
<button type="submit">GO BACK</button>
</form>
</body>
</html>