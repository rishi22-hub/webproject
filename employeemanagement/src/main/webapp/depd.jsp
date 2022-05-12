

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
        <style>
            table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

td, th {
    border: 1px solid #000000;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
            input[type=submit], select, textarea {
    width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=text], select, textarea {
    width: 50%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
        </style>
    </head>
    <body>
        <a href='display.jsp'>Back</a>
        <div align='center'>
  <table>
  <tr>
    <th>DEPARTMENT</th>
    <th>ID</th>
  </tr>
  <tr>
    <td>PRODUCTION</td>
    <td>PO10</td>
  </tr>
   <tr>
    <td>PURCHASE</td>
    <td>PR11</td>
  </tr>
   <tr>
    <td>IT</td>
    <td>IT12</td>
  </tr>
   <tr>
    <td>RESEARCH</td>
    <td>RS13</td>
  </tr>
   <tr>
    <td>FINANCE</td>
    <td>FN14</td>
  </tr>
   <tr>
    <td>MARKETING</td>
    <td>MR15</td>
  </tr>
  </table>
        </div><br><br>
         <form action="#look">
        <h2>ENTER DEPARTMENT ID:</h2>
        <input type="text" name="depa">
        <br><br>
        <input type="submit" value="SUBMIT">
        </form>

<div id="look">
<%
String depa=request.getParameter("depa");
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
String sql ="select * from dep where dept='"+depa+"'";
resultSet = statement.executeQuery(sql);
%>
<h3>Employee ID's:</h3>
<%
while(resultSet.next()){
%>
<%=resultSet.getString("empid") %><br>
<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</body>
</html>
