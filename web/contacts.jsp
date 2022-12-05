<%-- 
    Document   : contacts
    Created on : Dec 1, 2022, 4:05:09 PM
    Author     : al-am
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@page import="dao.Contact"%>
<%@page import="dao.Manager"%>

<% ArrayList <Contact> membres = Manager.getAllContacts();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div id="topUser" class="container mt-4">
            <h1 id="tet">Tous les utilisateurs</h1>
            <br>
            <table class="table shadow-lg p-3 mb-5 bg-body rounded mt-3"">
                <thead class="table-dark">
                    <tr>
                        <th>Nom</td>
                        <th>Prénom</td>
                        <th>Phone</td>
                        <th>Ville</td>
                    </tr>
                </thead>
                <tbody>
                    <!-- Une boucle normale sur une liste java -->
                    <%! int i; %>
                    <%for (i=0; i<membres.size(); i++){%>
                    <tr>
                        <td><%= membres.get(i).getNom()%></td>
                        <td><%= membres.get(i).getPrenom()%></td>
                        <td><%= membres.get(i).getPhone()%></td>
                        <td><%= membres.get(i).getVille()%></td>
                    </tr>    
                    <%}%>

                    <!-- Une boucle for each java -->
                    <% for (Contact c : membres){%>
                    <tr>
                        <td><%= c.getNom()%></td>
                        <td><%= c.getPrenom()%></td>
                        <td><%= c.getPhone()%></td>
                        <td><%= c.getVille()%></td>
                    </tr>    
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>