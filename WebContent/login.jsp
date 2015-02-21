<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Niepoprawne logowanie</title>
    </head>
    <body>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("org.hsqldb.jdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from PUBLIC.members where uname='" + userid + "' and pass='" + pwd + "'");
    String message = "";
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        message = "Niepoprawne hasło.spróbuj jeszcze raz";
        //response.sendRedirect("log.jsp");
        //tu trzeba zrobić jakiś sprytny myk, albo jakieś opóźnienie
    }
%>
<script type="text/javascript">
        alert('<%=message%>');
    </script>
 </body>
</html>