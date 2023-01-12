<%@page import="ds.db,ds.Action,dab.database"%>
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

<form action="update.jsp" method="post">
<input type="hidden" name = "dep" value= <%=database.dep%> %> >
<button type="submit">UPDATE AND RESET</button>
</form>
</body>
</html>