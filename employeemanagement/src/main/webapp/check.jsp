

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
body {
    
    background-size: cover;
    background-repeat: no-repeat;
   font-family: Arial, sans-serif;
    font-weight: bold;
    font-size: 14px;
}

.wrap {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -86px;
    margin-left: -89px;
    text-align: center;
}

a {
    -webkit-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
    -moz-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
    -ms-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
    -o-transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
    transition: all 200ms cubic-bezier(0.390, 0.500, 0.150, 1.360);
    display: block;
    margin: 20px auto;
    max-width: 180px;
    text-decoration: none;
    border-radius: 4px;
    padding: 20px 30px;
}

a.button {
    color: rgba(30, 22, 54, 0.6);
    box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a.button:hover {
    color: rgba(255, 255, 255, 0.85);
    box-shadow: rgba(30, 22, 54, 0.7) 0 0px 0px 40px inset;
}

a.button2 {
    color: rgba(30, 22, 54, 0.6);
    box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

a.button2:hover {
    color: rgba(255, 255, 255, 0.85);
    box-shadow: rgba(30, 22, 54, 0.7) 0 80px 0px 2px inset;
}
</style>
    </head>
<%
String user=request.getParameter("uname");
String pass=request.getParameter("psw");

try{
    int flag=0; 
  
         String uname="rishi";
        String psw="12345";
        
        if(user.equals(uname) && pass.equals(psw))
        { 
            flag=1;
            out.println("Logged in: "+ uname );
            %>
            <hr>
            <h1 align="center">Welcome Admin</h1>
            <div align="center">
                <i class="fa fa-male" style="font-size:100px"></i></div>
    <div class="wrap">
        <a href="Reg.jsp" class="button">Add New Employee</a>
        <a href="display.jsp" class="button2">View Employee Details</a>
     
        <a href="message.jsp" class="button2">Post Any Message</a>
        <a href="adlogin.jsp" class="button">Logout</a>
    </div>
            <%
           
        }
       
        
    
    if(flag==0)
    {
%> 
<h1 align="center" style="color:red;">Incorrect! Please Try Again.</h1>
<jsp:include page="adlogin.jsp"></jsp:include>  
<%  
    
}
}
catch(Exception e1){
    System.out.print(e1);}
%>
</html>