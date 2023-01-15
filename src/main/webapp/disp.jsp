<style>
body{
  margin: 15px;
  padding: 0;
}

.seat{
  background: url(seat.jpg);
  text-align: center;
}

.board{
   display: block;
    background: url(board.jpg);
}

.container{
  display: grid;
  grid-gap: 0px;
  grid-template-columns: repeat(6, 1fr);
}

.container div{
  height: 220px;
  background-size: cover;
background-repeat: no-repeat;
  background-attachment: scroll;
}



</style>

<%@ page import="dab.database,java.sql.*"%>
                     <%
                     database d = new database();
                     try{
                     Statement st;
                     try{

                     st =d.conn.createStatement();
                     String datew =  request.getParameter("dropdown");

                     ResultSet rs;
                     int numberOfRoomsReq=0;
                     rs=st.executeQuery("select count(distinct room) from seat_allot where x_date='"+datew+"'");
                     while(rs.next())
                     {
                     numberOfRoomsReq =rs.getInt(1);
                     }
                     int seatRoom;
                     int i=0;

                      for( i=0;i<numberOfRoomsReq;i++)
                      {
                      %>
                      <h1>Room No : <%=i+1%></h1>

                      <div class="container">
                      <%
                        for(int j=0;j<5;j++)
                        {
                         for(int k=0;k<6;k++)
                         {
                          rs= st.executeQuery("select sid from seat_allot where x_date='"+datew+"' and room='"+i+"' and roww='"+j+"' and coll='"+k+"'");
                            while(rs.next())
                             {
                             %>
                              <div class="seat"><%=rs.getString(1)%>
                              </div>
                              <%

                            }
                        }
                      }
                      %>
                      </div>
                      <br><br>
                      <%
                     }
                     }
                     catch(Exception e)
                     {
                          out.println(e);
                      }}
                    catch(Exception e)
                    {
                         out.println(e);
                     }
                     %>