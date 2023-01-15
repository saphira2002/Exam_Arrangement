<jsp:include page="header.jsp"/>
<html>
    <head>
        <link rel="stylesheet" href="style1.css">
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    </head>
    <style>
            .header {
    background-color: #e6f8ff;
    padding: 20px;
    text-align: center;
    position: fixed;
    right:0;
    top: 0;
    width: 100%;
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

  .footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #e6f8ff;
    color: #021c27;
    text-align: center;
 }

 .h1{
    margin-left: 10%;
 }

 .p {
    display: block;
    margin-top: 10em;
    margin-left: 10%;
    margin-right: 25%;
    font-size:larger;
  }

  .body{
    margin-top:300px;
    background-color: #e6f8ff;
    font-family:Poppins;
  }

    </style>
    <body class="body">
        <h1 class="h1">Exam Seating Arrangement Automator</h1>
        <p class="p">
            If you're from Exam Administrative department struggling to prepare halls for students, this is your one stop shop for all exam arrangement needs.<br><br>
Universities conduct exams on a regular basis and need to find enough classrooms,
allot seats, and notify students about their seating arrangements.
Every time these variables are gonna change and Exam Administrators will have to contact 
each department get their exam schedule, identify number of students for each exam and allot required seats.
This application gets all the information from each department and does all the above mentioned jobs for you!
        <br><br><br><br>
            A little about how to use this application:  
        <br><br><br>
            We've given a login ID for all departments and one for exam admin. You can login using your username and password.<br><br>
            If you're a department representative, you've to insert your course's exam schedule in the given form and submit.
            Then you can view the timetable, update and reset it or, after seats have been assigned, you can view your student's exam room numbers.<br><br>
            If you're from exam admins, you can see all the department schedules that has been entered till now, and when all departments are done giving the schedule,
            the allot seats button will be enabled that'll get you seat numbers of students and their IDs in respective rooms.
            <br><br>Hope this helps!!
        </p>
    </body>
<jsp:include page="footer.jsp"/>
</html>