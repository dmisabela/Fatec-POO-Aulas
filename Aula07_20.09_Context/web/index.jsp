<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 19:19:12
    Author     : isabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 

String context = request.getParameter("context");
String name = request.getParameter("name");
if(context!=null && name!=null) {
    
    
        if(context.equals("request")) {
            request.setAttribute("name", name);
        }
        else if(context.equals("session")) {
            session.setAttribute("name", name);
            session.setAttribute("counter", 1);
        }
         else if(context.equals("application")) {
            application.setAttribute("name", name);
        }        
}
        if(application.getAttribute("counter") == null) {
            application.setAttribute("counter",1);
        }
                
        int counter = (int)application.getAttribute("counter");
        application.setAttribute("counter", counter+1);
        
        int sessionCounter = 0;
        
        if(session.getAttribute("counter") != null) {
        sessionCounter =  (int)session.getAttribute("counter");
        session.setAttribute("counter", sessionCounter+1);
        }
       
        
        String requestName = (String)request.getAttribute("name");
        String sessionName = (String)session.getAttribute("name");
        String applicationName = (String)application.getAttribute("name");
        
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atributos de contexto</title>
    </head>
    <body>
        <a href="index.jsp"><h1>Atributos de contexto</h1></a>
        
        <form>
            Contexto:
            <select name="context">
                <option value=""></option>
                <option value="request">Requisição</option>
                <option value="session">Sessão</option>
                <option value="application">Aplicação</option>
            </select>        
            <label>Nome:</label>
            <input type="text" name="name"/>
            <input type="submit" value="Enviar"/>
        </form>
        
        <% if (requestName!=null) { %>
        
        </hr>
        <h2>Requisição</h2>
        <h4> Nome: <%= requestName %> </h4>       
        <% } %> 
        
         <% if (sessionName!=null) { %>
        
        </hr>
        <h2>Sessão</h2>
        <h4> Nome: <%= sessionName %> </h4>   
        <div> Requisições da sessão: <%= sessionCounter %> </div> 
        <% } %> 
                
         <% if (applicationName!=null) { %>
        
        </hr>
        <h2>Aplicação</h2>
        <h4> Nome: <%= applicationName %> </h4>  
        <div> Requisições: <%= counter %> </div>       
        <% } %> 
        
        
    </body>
</html>
