<%-- 
    Document   : edit
    Created on : 29 déc. 2022, 22:16:20
    Author     : malia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body style="background: blue">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <form method="POST" action ="${pageContext.request.contextPath}/roles/update">
            <div class="container bg-white" style="padding: 10rem 0rem 10rem 0rem; width: 40rem; margin-top: 5rem; border-radius: 30px">
                <center><h1 style="padding-bottom: 1em">${empty role ? "Ajout d'un role :" : "Modification d'un role : "}</h1><h1>N° ${role.getId()}</h1></center>
                <center>
                    <table border="0">
                        <td class="input-group mb-3">
                          <input type="text" hidden="true" name="id" value="${role.getId()}"/>
                          <span class="input-group-text" id="basic-addon3">Nom du role</span>
                          <input type="text" name="username" class="form-control" id="basic-url" aria-describedby="basic-addon3" value= "${role.getRolename()}">
                        </td>
                        <tr>
                            <td colspan ="2">
                                <input type="submit" class="btn btn-warning" value= "Enregistrer" />
                                <a href="${pageContext.request.contextPath}/" style="margin-left: 16em" class="btn btn-danger">Annuler</a>
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>