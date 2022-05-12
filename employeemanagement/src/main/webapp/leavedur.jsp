<%-- 
    Document   : leavedur
    Created on : 13 Jun, 2018, 11:05:32 AM
    Author     : Rewa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="#chk">
        <input type="date" name="date1"><br>
        <input type="date" name="date2"><br>
        <input  type="submit" value="check">
        </form>
        <div id="chk">
        <%
            try{
           String date1=request.getParameter("date1");
           //Date date3=new SimpleDateFormat("dd/MM/yyyy").parse(date1);
           SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
           java.util.Date date3 = sdf1.parse(date1);
           java.sql.Date dts = new java.sql.Date(date3.getTime()); 
           String date2=request.getParameter("date2");
           //Date date4=new SimpleDateFormat("dd/MM/yyyy").parse(date2);
           SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
           java.util.Date date4 = sdf1.parse(date2);
           java.sql.Date dte = new java.sql.Date(date4.getTime()); 
            
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
String sql ="SELECT empid,dt1,dt2,no,reason FROM leavemp WHERE dt1 BETWEEN "+dts+" AND "+dte+"";
resultSet = statement.executeQuery(sql);
//String dt1=resultSet.getString("dt1");
while(resultSet.next()){
%>
<table>
<tr>
<td><%=resultSet.getString("empid") %></td>
<td><%=resultSet.getString("dt1") %></td>
<td><%=resultSet.getString("dt2") %></td>
<td><%=resultSet.getString("no") %></td>
<td><%=resultSet.getString("reason") %></td>
</tr>
</table>
<%    
connection.close();
}
}
catch(Exception e1){System.out.print(e1);}
}catch(Exception e){System.out.print(e);}           
        %>
        </div>
    </body>
</html>
