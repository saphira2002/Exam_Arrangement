<html>
<head>
<style> 
form {font-family: Candara;
      font-size: 120%;
      }
table{font-family: Candara;
      border-collapse: separate ;
      width: 80%;
    }
td,th{border: 1px solid #FBC0BF;
      text-align: left;
      padding: 8px;
      }
tr:nth-child(even){
      background-color: #FFF9F7;
      }
tr:nth-child(odd) {
      background-color: #FFDCDB;
      }
body {background-color:#FFFFFF;}
      input[type=text] {
      width: 60%;
      padding: 12px 20px;
      margin: 18px 0;
      box-sizing: border-box;
      }

input[type=submit], input[type=reset] {
      background-color: #DEA5A4 ;
      border: none;
      color: black;
      padding: 16px 32px;
      margin: 4px 2px;
      cursor: pointer;
}
</style>
</head>
<body>
<form action="JDBC_class.jsp" method="post" >
    <h1>Exam Seating Arrangement</h1>
    <h2>Time Table</h2>
    <h3>Computer Science Engineering</h3>
    <table>
        <tr>
          <th>Subject Code</th>
          <th>Subject Name</th>
          <th>Date</th>
        </tr>
        <tr>
          <td>CS6109</td>
          <td>Compiler Design</td>
          <td><input type="date" name="date1ct"></td>
        </tr>
        <tr>
          <td>CS6110</td>
          <td>Object Oriented Analysis and Design</td>
          <td><input type="date" name="date2ct"></td>
        </tr>
        <tr>
          <td>CS6111</td>
          <td>Computer Networks</td>
          <td><input type="date" name="date3ct"></td>
        </tr>
        <tr>
          <td>CS6308 </td>
          <td>Java Programming</td>
          <td><input type="date" name="date4ct"></td>
        </tr>
        <tr>
          <td>CS6304</td>
          <td>Software Engineering</td>
          <td><input type="date" name="date5ct"></td>
        </tr>
      </table><br>

      <h3>Information Technology</h3>
    <table>
        <tr>
          <th>Subject Code</th>
          <th>Subject Name</th>
          <th>Date</th>
        </tr>
        <tr>
          <td>MA8551</td>
          <td>Algebra and Number Theory</td>
          <td><input type="date" name="date1it"></td>
        </tr>
        <tr>
          <td>EC8691</td>
          <td>Microprocessors and Microcontrollers</td>
          <td><input type="date" name="date2it"></td>
        </tr>
        <tr>
          <td>CS8591</td>
          <td>Computer Networks</td>
          <td><input type="date" name="date3it"></td>
        </tr>
        <tr>
          <td>IT8501 </td>
          <td>Web Technology</td>
          <td><input type="date" name="date4it"></td>
        </tr>
        <tr>
          <td>CS8494</td>
          <td>Software Engineering</td>
          <td><input type="date" name="date5it"></td>
        </tr>
      </table><br>

      <h3>Electronics and Communication Engineering</h3>
    <table>
        <tr>
          <th>Subject Code</th>
          <th>Subject Name</th>
          <th>Date</th>
        </tr>
        <tr>
          <td>EC8501</td>
          <td>Digital Communication</td>
          <td><input type="date" name="date1ece"></td>
        </tr>
        <tr>
          <td>EC8553</td>
          <td>Discrete-Time Signal Processing</td>
          <td><input type="date" name="date2ece"></td>
        </tr>
        <tr>
          <td>EC8552</td>
          <td>Computer Architecture and Organization</td>
          <td><input type="date" name="date3ece"></td>
        </tr>
        <tr>
          <td>EC8551</td>
          <td>Communication Networks</td>
          <td><input type="date" name="date4ece"></td>
        </tr>
        <tr>
          <td>EC8075</td>
          <td>Nano Technology and Applications</td>
          <td><input type="date" name="date5ece"></td>
        </tr>
      </table><br>
      
      <h3>Production Engineering</h3>
    <table>
        <tr>
          <th>Subject Code</th>
          <th>Subject Name</th>
          <th>Date</th>
        </tr>
        <tr>
          <td>PR7501 </td>
          <td>Engineering Metrology</td>
          <td><input type="date" name="date1pt"></td>
        </tr>
        <tr>
          <td>PR7502 </td>
          <td> Fluid Power Systems</td>
          <td><input type="date" name="date2pt"></td>
        </tr>
        <tr>
          <td>PR7503 </td>
          <td>Machine Components Design</td>
          <td><input type="date" name="date3pt"></td>
        </tr>
        <tr>
          <td>PR7551 </td>
          <td>Statistical Quality Control and Reliability Engineering</td>
          <td><input type="date" name="date4pt"></td>
        </tr>
        <tr>
          <td>PR7003 </td>
          <td>Applied Probability and Statistics</td>
          <td><input type="date" name="date5pt"></td>
        </tr>
      </table><br>

      <h3>Mechanical Engineering</h3>
    <table>
        <tr>
          <th>Subject Code</th>
          <th>Subject Name</th>
          <th>Date</th>
        </tr>
        <tr>
          <td>ME8595</td>
          <td>Thermal Engineering II</td>
          <td><input type="date" name="date1mech"></td>
        </tr>
        <tr>
          <td>ME8593</td>
          <td>Design of Machine Elements</td>
          <td><input type="date" name="date2mech"></td>
        </tr>
        <tr>
          <td>ME8501</td>
          <td>Metrology and Measurements</td>
          <td><input type="date" name="date3mech"></td>
        </tr>
        <tr>
          <td>ME8594</td>
          <td>Dynamics of Machines</td>
          <td><input type="date" name="date4mech"></td>
        </tr>
        <tr>
          <td>OAT552</td>
          <td>Internal Combustion Engines</td>
          <td><input type="date" name="date5mech"></td>
        </tr>
      </table><br>

      <input type="submit" value="Submit">
      <input type="reset" value="Reset"><br>
</form>
</body>