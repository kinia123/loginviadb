<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
body {
    background-image:
       url('http://genop.dmggroup.pl/tapety/451160.jpg');
}

input {
background-color: #CC99FF;
border-color: #CC99FF;
}
</style>
<head>
<link rel="Shortcut icon" href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Kalkulator zdolności kredytowej</title>
</head>
<body>
<div align="right">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
Nie jesteś zalogowany! <a href="index.jsp">Zaloguj się!</a>
<%} else {
%>
Witaj <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Wyloguj!</a>
<%
    }
%>

</div>
<br/>
<center>
<div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
Kalkulator zdolności kredytowej
</div>
</center>

<br/>
<center>
<img src="http://g4.gazetaprawna.pl/p/_wspolne/pliki/1787000/1787452-zlotowki-pieniadze-kasa-657-323.jpg"/>
</center>
<br/>

<center>
<a href="log.jsp">
<input type="submit" value="LOGOWANIE" STYLE="width:270px; height:70px;"></input></a>
<a href="reg.jsp">
<input type="submit" value="REJESTRACJA" STYLE="width:270px; height:70px; margin-left: 40px;"></input></a>
<a href="form.jsp">
<input type="submit" value="WYPEŁNIJ FORMULARZ" STYLE="width:270px; height:70px; margin-left: 40px;"></input></a>
</center>
</body>
</html>