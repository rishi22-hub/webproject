
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display</title>
    </head>
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
        .button {
    background-color: lightseagreen;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 4px 2px;
    cursor: pointer;
}
.button5 {font-size: 24px;}
        input[type=text], select, textarea {
    width: 100%;
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
input[type=submit], select, textarea {
    width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
    </style>
    <body>
            <br><br>
            <h2 align="center">SEARCH HERE BY</h2><br><br><br>
            <div align="center">
                <a class="button button5">Employee ID</a> OR <a href="depd.jsp" target="_self" class="button button5">Department ID</a></div>
        <br><br>
        <form action="#sear">
        <h2>ENTER EMPLOYEE ID:</h2>
        <input type="text" name="search"><br><br>
        <input type="submit" value="GET DETAILS">
        </form>
        <br><br><br>
<div id="sear">
<%
String search= request.getParameter("search");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "Rishi@2001";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
out.println("upper error +"+ e);
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Rishi@2001");
statement=connection.createStatement();
String sql ="select * from employee where empid="+search+"";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
  <tr>
    <th>EMP. ID</th>
    <th>FIRST NAME</th>
    <th>LAST NAME</th>
    <th>DEPARTMENT</th>
    <th>CONTACT</th>
  </tr>
<tr>
<td><%=resultSet.getString("empid") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("dept") %></td>
<td><%=resultSet.getString("contact") %></td>
</tr>
<%    
}
connection.close();
} catch (Exception e) {
	out.println("lower error + " + e);
e.printStackTrace();
}
%>
  </table>
</div>
    </body>
</html>
