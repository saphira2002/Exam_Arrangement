<%@ page import="dab.database,java.sql.*"%>
<jsp:include page="headerafter.jsp"/>
<style>
body {
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
header p {letter-spacing: 0.05em;}
table, th, td,tr {
  border:1px solid black;
  height= 100px
  width= 100%

}

th,td{
padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;

}
form{
    width: 500px;
    min-height: 500px;
    height: auto;
    border-radius: 5px;
    margin: 100px auto;
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
<header>
<center>
<%
try{
    database d = new database();
    Statement st = d.conn.createStatement();
    String query = "select * from timetable where dept like '" + d.dep + "%' order by dept";
    ResultSet rs = st.executeQuery(query);
    %>
   <form>
   <h2>TIMETABLE</h2>
   <table>
       <tr>
                 <th>SUBJECT CODE</th><br>
                 <th>DEPARTMENT</th><br>
                 <th>DATE</th><br>
       </tr>
   <%
    int count = 0;
       while(rs.next())
       {
       %>
   <p>
   <tr>
       <td><%= (rs.getString(1)) + " "%></td>
       <td><%= (rs.getString(2)) + " "%></td>
       <td><%= (rs.getString(3).split(" ")[0]) + " "%></td>
    <%
    count++;
    }%>
    </table>
    </form>
    <%
   }
catch(Exception e)
{
    out.println(e);
}
%>
<jsp:include page= "footer.jsp"/>