<%-- 
    Document   : index
    Created on : Dec 1, 2022, 2:29:38 PM
    Author     : al-am
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <%-- This is JSP comment --%>

            <%! int age = 17; %> 
            <div>
                <h1>Hello World!</h1>
                <h2>  
                    <%
                        out.println("Your IP address is " + request.getRemoteAddr());
                    %>
                </h2>
                <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
            </div>
            <div>
                <% if (age>=18) {%>
                <p class="alert alert-success" role="alert"> Welcome at this game</p>
                <% } else { %>
                <p class="alert alert-danger" role="alert"> Come back later!</p>
                <% } %>
            </div>
            <div class="mt-4">
                <h2>Table de multiplication</h2>
                <%! int i;%>
                <% for(i = 0; i <= 10; i++){
                    out.println(5 + " * " + i + " = " + 5*i);%>
                <br>
                <%}%>
            </div>
        </div>
    </body>
</html>
