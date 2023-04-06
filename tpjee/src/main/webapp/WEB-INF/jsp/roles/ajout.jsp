
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<t:template_cust_auth titre="Register">
    <jsp:attribute name="formulaire">
        
    <h3 style="text-align: center; ">Creation of  roles</h3>

    <form  method="POST" action="${pageContext.request.contextPath}/storeRole">
        
        <div class="form-group row">
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="code" id="exampleFirstName" placeholder=" Code">
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="name" id="exampleLastName" placeholder=" Role Name">
            </div>
            
        </div>
        
                <button type="submit" class="btn btn-danger btn-user btn-block">Register</button>       
        
    </form>
    </jsp:attribute>
</t:template_cust_auth>
