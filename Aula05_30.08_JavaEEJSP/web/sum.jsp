<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 19:15:27
    Author     : isabela
--%>

 <%            
    
     double n1 = 0, n2 = 0, result = 0;
     String error = null;
     if (request.getParameter("n1") == null || request.getParameter("n2") == null) {
         error = "Não foram informados os dois parâmetros necessários 'n1' e 'n2'";
     }
     else {
         try {            
            n1  = Double.parseDouble(request.getParameter("n1"));          
            }
     catch (Exception e) {               
         
            error = "O valor informado como parâmetro n1 (" 
                    + request.getParameter("n1") + ") não é um número válido";         
            }    
     
      try {            
            n2  = Double.parseDouble(request.getParameter("n2"));          
            }
      catch (Exception e) {               
         
             error = "O valor informado como parâmetro n2 (" 
                    + request.getParameter("n2") + ") não é um número válido";         
            }   
     
     try { 
            result = n1+n2;           
            }
     catch (Exception e) {               
         
            error = "Erro de cálculo. " + e.getMessage();
         
            }             
     }
     
     
  %>       
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Java EE - JSP</title>
        <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>        
        <h3>Soma</h3>
        <h4><a href="index.html">Voltar</a></h4>
        <hr/>     
      
        <%if(error != null) { %>
            <div style="color:red"><%=error%></div>            
        <% }             
            else { %>            
            <div><%=n1%> + <%=n2%> = <%=result%></div>           
        <% }  %>
        <br>
         <form action ="sum.jsp">    
            <input type="number" name="n1" value="<%=n1%>"/> + 
            <input type="number" name="n2" value="<%=n2%>"/>
            <input type="submit" value="="/>            
        </form>               
    </body>
</html>

