<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: rhorew
  Date: 20/11/2019
  Time: 09:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<%
    if (request.getAttribute("TableauProduit") != null){
        ArrayList<String> tableauProduit = (ArrayList<String>) request.getAttribute("TableauProduit"); %>
    <form action="">
        <select name="nomproduitajouter" id="nomproduitajouter">
<%
        for (String nom: tableauProduit){
%>
            <option value="<% out.print(nom);%>"><% out.print(nom);%></option>
<% } %>
        </select>
    </form>
<%
    }
%>

<%@ include file="footer.jsp"%>
