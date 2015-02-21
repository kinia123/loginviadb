<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String adress = request.getParameter("adress");
    String phone = request.getParameter("phone");
    Class.forName("org.hsqldb.jdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into PUBLIC.members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='log.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("log.jsp");
    }
%>