<%-- 
    Document   : recibe
    Created on : 08/09/2016, 08:23:25
    Author     : Nico
--%>

<%@page import="java.nio.charset.StandardCharsets"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recibe!</h1>
        <% 
            String item = request.getParameter("valor"); 

            byte[] bytes = item.getBytes(StandardCharsets.ISO_8859_1);
            item = new String(bytes, StandardCharsets.UTF_8);

        %>
        <%= item %>
    </body>
</html>
