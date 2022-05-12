

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Post Any Message</h1><hr><br><br>
        <form action="mes.jsp">
        <h2>
            ENTER MESSAGE:
        </h2>
            <input type="text" name="mes"><br><br>
        <input type="submit" value="POST">
        </form>
    </body>
</html>
