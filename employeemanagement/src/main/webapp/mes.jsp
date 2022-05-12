

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
String mes=request.getParameter("mes");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Rishi@2001");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into message(mes)values('"+mes+"')");
out.println("MESSAGE POSTED SUCCESFULLY!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br>
        <a href="message.jsp">Back</a>
    </body>
</html>
