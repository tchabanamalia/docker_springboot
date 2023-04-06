<%-- 
    Document   : index
    Created on : 26 nov. 2022, 12:01:24
    Author     : malia
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<t:template_cust_auth titre="Login">
    <jsp:attribute name="formulaire">
        <div>                      
        <form class="user" method="POST" action="${pageContext.request.contextPath}/j_spring_security_check">
            <div class="form-group">
                <input type="text" name='username' class="form-control form-control-user" 
                       placeholder="Entrez l'adresse email..." required>
            </div>
            
            <div class="form-group">
                <input type="password" name='password' class="form-control form-control-user"
                       minlength="4" placeholder="Mot de passe" require>
            </div>
            <span>${error}</span>
            
            <div class="form-group">
            <div class="custom-control custom-checkbox small">
                <input type="checkbox" class="custom-control-input" id="customCheck">
                <label class="custom-control-label text-dark" for="customCheck">Se souvenir</label>
            </div>
            </div>
            
            <button class="btn btn-primary login text-lg fw-bold btn-user btn-block" type="submit">Login</button>
        </form>
        <br/>
            
        <div class="text-center">
            <a class="small" href="#">Forgot password ?</a>
        </div>
        
        <br/>
        
        <div class="text-center">
            <a class="small" href="${pageContext.request.contextPath}/register">Create Account</a>
        </div>
        
        
        
        </div>
    </jsp:attribute>
</t:template_cust_auth>
