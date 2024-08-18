<%-- 
    Document   : index
    Created on : 18 ago 2024, 11:40:42
    Author     : cysto
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">  
        <title>JSP Page</title>        
    </head>
    <body>
        <div class="container"> 
            <h1>Hello World from JSP!</h1>
            <%! String hola = "Prueba de JSP"; %>
            <p><%=hola%></p>
            <% List<String> nombres = new ArrayList<String>(); 
               nombres.add("Tomas"); 
               nombres.add("Rosa");
               nombres.add("Sofía");
            %>
            <p>Cantidad de Registros <%=nombres.size()%></p>
            <p>
                <b>Lista de Nombres</b>
                <ul>
                    <% 
                        Iterator items = nombres.iterator(); 
                        while(items.hasNext()){
                    %>
                        <li><%=items.next()%></li>
                    <% } %>
                </ul>
            </p>
        </div>
    </body>
</html>
