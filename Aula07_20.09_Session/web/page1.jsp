<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 19:51:05
    Author     : isabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Página 1</h2>
        
        <%if(sessionName==null) {%>
        <div style="color:red"> Você não tem permissão para acessar esta página </div>
        <%}else{%>                  
        <div> Conteúdo restrito página 1 </div>
        <%}%>

        
    </body>
</html>
