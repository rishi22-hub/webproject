

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
    <tr>
    <th>EMP. ID</th>
    <th>FROM DATE</th>
    <th>TO DATE</th>
    <th>NO. OF DAYS</th>
    <th>REASON</th>
    <th>      </th>
  </tr>
<%
String search= request.getParameter("search");
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
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Rishi@2001");
statement=connection.createStatement();
String sql ="select * from leavemp";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("empid") %></td>
<td><%=resultSet.getString("dt1") %></td>
<td><%=resultSet.getString("dt2") %></td>
<td><%=resultSet.getString("no") %></td>
<td><%=resultSet.getString("reason") %></td>
<td><a href='#cancel'>APPROVE</a></td>
</tr>
<%    
}
connection.close();
} catch (Exception e){
e.printStackTrace();
}
%>
        </table>
    </body>
</html>
