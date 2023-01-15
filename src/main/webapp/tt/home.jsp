<jsp:include page = "../headerafter.jsp"/>
<%@page import="ds.db,ds.Action,dab.database"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>

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

/* buttons hover */
button:hover {
    transform: translatey(3px);
    box-shadow: none;
}

/* buttons hover Animation */
button:hover {
    animation: ani9 0.4s ease-in-out infinite alternate;
}

body {
    background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);
    background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
    background-attachment: fixed;
    background-repeat: no-repeat;
    margin-top:200px;


    font-family: 'Vibur', cursive;
/*   the main font */
    font-family: 'Abel', sans-serif;
opacity: .95;
/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
}

form{
    width: 450px;
    min-height: 100px;
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

</style>
<body>
<header>
<form action="../showtt.jsp" method="post">
  <button type="submit">VIEW TIMETABLE</button>
</form>

<form action="update.jsp" method="post">
<input type="hidden" name = "dep" value= <%=database.dep%> >
<button type="submit">UPDATE AND RESET</button>
</form>
</header>
</body>
<jsp:include page="../footer.jsp"/>
</html>