<%-- 
    Document   : index
    Created on : 26 nov. 2022, 12:01:24
    Author     : malia
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<t:template_cust titre="Ma première page">
    <jsp:attribute name="container_fluid">
<!-- Page Heading -->
    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Welcome !</div>
                <div class="card-body">                  
                    You are logged in as admin, all features of the app are open to you !! <br>
                    Your username is : ${user.name} <br>
                    Your email address is : ${user.email}
                </div>
            </div>
        </div>
    </div>
    </div>

    </jsp:attribute>
</t:template_cust>
