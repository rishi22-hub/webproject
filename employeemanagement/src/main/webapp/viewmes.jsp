<%-- 
    Document   : viewmes
    Created on : 14 Jun, 2018, 2:10:00 PM
    Author     : Rewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 align="center">Messages By Admin</h2><hr><br><br><br>
        <%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
statement=connection.createStatement();
String sql ="select * from message";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
<tr>
    <td><%=resultSet.getString("mes") %></td><br>
</tr>
</table>
<%    
}
connection.close();
} catch (Exception e){
e.printStackTrace();
}
%>
    </body>
</html>
