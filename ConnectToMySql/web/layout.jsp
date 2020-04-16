<%-- 
    Document   : layout
    Created on : 15 abr 2020, 10:53:20
    Author     : PCHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
            String resul = request.getParameter("resul");
    %>
    <body>
        <h1>Hello  <%=resul%></h1>
    </body>
</html>
