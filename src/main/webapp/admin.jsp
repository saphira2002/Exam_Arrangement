<jsp:include page = "headerafter.jsp"/>
<style>
header {
    margin: 2% auto 10% auto;
    text-align: center;
}
/* Login title form form */
header h2 {
    font-size: 250%;
    font-family: 'Playfair Display', serif;
    color: #3e403f;
}
/*  A welcome message or an explanation of the login form */
.one {
letter-spacing: 0.05em;
word-spacing: 10px;

}
body {
    margin-top: 300px;
    background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);
background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
background-attachment: fixed;
  background-repeat: no-repeat;

    font-family: 'Vibur', cursive;
/*   the main font */
    font-family: 'Abel', sans-serif;
opacity: .95;
/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
}

button {
    color: #252537;

    width: 250px;
    height: 50px;

    padding: 0 20px;
    background: #fff;
    border-radius: 5px;

    outline: none;
    border: none;

    cursor: pointer;
    text-align: center;
    transition: all 0.2s linear;

    margin: 1%;
    letter-spacing: 0.05em;
}
/* buttons hover */
button:hover {
    transform: translate(3px);
    box-shadow: none;
}

/* buttons hover Animation */
button:hover {
    animation: ani9 0.4s ease-in-out infinite alternate;
}


table, th, td,tr {
  border:1px solid black;
  height= 75px
  width= 75%

}

th,td{
padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;

}

form{
    width: 750px;
    min-height: 500px;
    height: auto;
    border-radius: 5px;
    margin: 2% auto;
    box-shadow: 0 9px 50px hsla(20, 67%, 75%, 0.31);
    padding: 2%;
    background-image: linear-gradient(-225deg, #E3FDF5 50%, #FFE6FA 50%);
}
/* form Container */
form .con {
    display: -webkit-flex;
    display: flex;

    -webkit-justify-content: space-around;
    justify-content: space-around;

    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
}
</style>
<body>
<p><center>
<%@page import="ds.db,ds.Action,dab.database"%>
<%
    boolean dis = false;
    String x = " ";
   %>
   <header>
   <center>
   <form>
<table>
    <tr>
              <th><h2>Department</th>
              <th><h2>Semester</th>
              <th><h2>Status</h2></th>

    </tr>
    <%
    int arr[] = {5,7};
    for(int i = 0;i < 10;++i)
    {
        if(db.y[i] == 1)
        {
        %>
        <tr>
            <td><%= db.depts[i] %></td>
            <td><%= arr[i%2]%></td>
            <td>FILLED</td>
        <tr>
        <%
        }
        if(db.y[i] == 0)
        {
            %>
                    <tr>
                        <td><%= db.depts[i]%></td>
                        <td>NOT FILLED</td>
                    <tr>
             <%
            dis = true;
         }
         if(db.g == 1)
            dis = true;
    }
    if(dis)
        x = "hidden";
    dis = false;
    String y = "hidden";
    if(db.g == 1)
    {    y = " ";
        x="hidden";}
%>

<form action = "assign.jsp" method = "post">
<button type= "submit" <%= x%>>
  <a href="assign.jsp">Assign</a>
</button>
</form>
<form action="showttadm.jsp" method="post">
  <button type="submit">VIEW TIMETABLE</button>
</form>
<form action = "view.jsp" method = "post">
  <button <%= y%> type="submit"> >VIEW SEATS</button>
</form>
<jsp:include page = "footer.jsp"/>