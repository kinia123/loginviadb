<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("log.jsp");
%>