
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<t:template_cust_auth titre="Register">
    <jsp:attribute name="formulaire">
        
    <h3 style="text-align: center; ">Creation of a user account</h3>

    <form  method="POST" action="${pageContext.request.contextPath}/store">
        
        <div class="form-group row">
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="firstName" id="exampleFirstName" placeholder=" First Name" required>
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="lastName" id="exampleLastName" placeholder=" Last Name" required>
            </div>
            
        </div>
        
        <div class="form-group row">
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="username" id="exampleUsename" placeholder=" Username" required>
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="telephone" id="exampleTelephone" placeholder=" Phone Number" required>
            </div>
            
        </div>
        
        <div class="form-group">
            <input type="email" class="form-control form-control-user" name="email" id="exampleInputEmail" placeholder="E-mail adress" required>
        </div>
           
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="password" class="form-control form-control-user" name="password" id="exampleInputPassword" placeholder="Password" minlength="5" required>
            </div>
            
            <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" name="password" id="exampleRepeatPassword" placeholder="Confirm Password" minlength="5" required>
            </div>
        </div>
        
        <button type="submit" class="btn btn-danger btn-user btn-block">Register</button>       
        
    </form>
    </jsp:attribute>
</t:template_cust_auth>
