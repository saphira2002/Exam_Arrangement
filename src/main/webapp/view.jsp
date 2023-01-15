<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>CSS Grid Layout With Background Image</title>
  </head>
  <style>
  button {
      display: inline-block;
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

      margin: 7% auto;
      letter-spacing: 0.05em;
  }
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

  form{
      width: 450px;
      min-height: 200px;
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
  button {
      display: inline-block;
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

      margin: 7% auto;
      letter-spacing: 0.05em;
  }
  /* buttons hover */
  button:hover {
      transform: translatey(3px);
      box-shadow: none;
  }

  /* buttons hover Animation */
  button:hover {
      animation: ani9 0.4s ease-in-out infinite alternate;
  }

  .dropbtn {
    background-color: black;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
  }



  </style>
  <body>
    <%@ page import="dab.database,java.sql.*"%>
<%
         database d = new database();
             try{
                 Statement st;
                 try{
                     st =d.conn.createStatement();
                     String[] dates = new String[50];
                     int distinct_dates_count = 0;
                     ResultSet rs = st.executeQuery("select distinct(x_date) from timetable order by x_date");
                     String s;
                     String[] a,date_split,yr_split;
                     while(rs.next())
                     {
                         s = rs.getString(1);
                         a=s.split("-");
                         date_split=a[2].split(" ");
                         yr_split= a[0].split("0",2);
                         switch(a[1])
                         {
                             case "01": s = "JAN";
                                     break;
                             case "02": s = "FEB";
                                     break;
                             case "03": s = "MAR";
                                     break;
                             case "04": s = "APR";
                                     break;
                             case "05": s = "MAY";
                                     break;
                             case "06": s = "JUN";
                                     break;
                             case "07": s = "JUL";
                                     break;
                             case "08": s = "AUG";
                                     break;
                             case "09": s = "SEP";
                                     break;
                             case "10": s = "OCT";
                                     break;
                             case "11": s = "NOV";
                                     break;
                             case "12": s = "DEC";
                                     break;
                         }
                         dates[distinct_dates_count] = date_split[0]+"-"+s+"-"+yr_split[1];
                         distinct_dates_count++;
                     }
%>
                     <form action = "disp.jsp">
                     <select class="dropbtn" name="dropdown" id="dd">

                    <% for(int i=0;i<distinct_dates_count;i++)
                     {
                     %>
                     <option name="ss" value= <%=dates[i]%>><%=dates[i]%></option>
                     <%
                     }
                     %>
                     </select>
                     <input type="submit">SELECTED
                     </form>
                     <%
                     }
                     catch(Exception e)
                    {
                     out.println(e);
                    }
                    }
                    catch(Exception e)
                    {
                        out.println(e);
                    }

    %>