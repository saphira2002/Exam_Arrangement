<%@page import = "ds.db,dab.SendEmail"%>
<%
db.check();
SendEmail.sendingMail();
%>
<jsp:include page = "header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet"/>
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="style.css" />
    <title>Home</title>
</head>
<style>
    header {
    background-color: #e6f8ff;
    padding: 20px;
    text-align: center;
  }
.nav {
    overflow: hidden;
    background-color: rgb(9, 162, 193);
  }

.nav a{
    float: right;
    display: block;
    color: #021c27;
    text-align: center;
    padding: 14px 16px;
    text-decoration:none
}

.nav a:hover {
    background-color: #e6f8ff;
    color: rgb(0, 136, 174);
  }

  footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #e6f8ff;
    color: #021c27;
    text-align: center;
 }

 h1{
    margin-left: 10%;
 }

 p {
    display: block;
    margin-top: 10em;
    margin-left: 10%;
    margin-right: 25%;
    font-size:larger;
  }

  body{
    background-color: #e6f8ff;
    font-family:Poppins;
  }/
</style>
<body>
        <h1>Exam Seating Arrangement Automator</h1>

        <p>
            This is your one stop shop for all exam arrangement needs.<br><br>
Universities conduct exams on a regular basis and need to find enough classrooms,
allot seats, and notify students about their seating arrangements.
Every time these variables are gonna change and Exam Administrators will have to contact
each department get their exam schedule, identify number of students for each exam and allot required seats.
This application gets all the information from each department and does all the above mentioned jobs for you!
        </p>
</body>
<jsp:include page="footer.jsp"/>
</html>