<%-- 
    Document   : ajoutFonctions
    Created on : 18 janv. 2023, 21:30:31
    Author     : malia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>create</title>
    </head>
    <body>
        <form method="POST" action="${pageContext.request.contextPath}/AjoutFonctions">
            <table border="0">
                <tr>
                    <td>Code</td>
                    <td>
                        <input type="text" hidden="true" name="id" value= "${fonction.fonction_id}" />
                        <input type="text" name="code" value= "${fonction.code}" />
                    </td>
                </tr>
                
                <tr>
                    <td>Libelle</td>
                    <td>
                        <input type="text" name="libelle" value= "${fonction.libelle}" />
                    </td>
                </tr>
                    
                <tr>
                    <td>Role</td>
                    <td>
                        <select name="role_id">
                            <c:forEach items="${roles}" var="role">
                                <option value="${role.role_id}"/>
                                    ${role.libelle}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td colspan ="2">
                        <input type="submit" value= "Submit" />
                        <a href="${pageContext.request.contextPath}/">Annuler</a>
                    </td>
                </tr>
            </table>
        </form>                               
    </body>
</html>
