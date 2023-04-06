<%-- 
    Document   : addUser
    Created on : 19 janv. 2023, 20:38:11
    Author     : malia
--%>

<%-- 
    Document   : edit
    Created on : 19 janv. 2023, 15:47:22
    Author     : malia
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<t:template_cust titre="Ma première page">
    <jsp:attribute name="container_fluid">
        
    <h3 style="text-align: center; ">Creation of a user account</h3>
        
    <form class="user" method="POST" action="${pageContext.request.contextPath}/storeUser">
        
        <div class="form-group row">
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="firstName" value= ""  id="exampleFirstName" placeholder=" First Name" required="true">
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="lastName" value= "" id="exampleLastName" placeholder=" Last Name" required="true">
            </div>
            
        </div>
        
        <div class="form-group row">
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="username" value= "" id="exampleUsename" placeholder=" Username" required="true">
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="telephone" value= ""  id="exampleTelephone" placeholder=" Phone Number" required="true">
            </div>
            
        </div>
        
           
        <div class="form-group row">
            <div class="col-sm-6">
                <input type="email" class="form-control form-control-user" name="email" value= "" id="exampleInputEmail" placeholder="E-mail adress" required="true">
            </div>
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="password" class="form-control form-control-user" name="password" value= "" id="exampleInputPassword" placeholder="Password" required="true">
            </div>                      
        </div>
                       
        <div class="form-group row">
            <div class="col-sm-6">
                <select required name="enable" id="" class="form-control">
                    <option value=" "> -- enable --    </option>
                    <option value="1">authorized</option>
                    <option value="0">not authorized</option>
                </select>
            </div>
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <p>Choose role : </p>
                <c:forEach items='${roles}' var='role'>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="roles" id="inlineCheckbox1" value="${role.getId()}">
                            <label class="form-check-label" for="inlineCheckbox1">${role.getRolename()}</label>
                        </div>
                </c:forEach>           
            </div>                      
        </div>
          
                <button type="submit" class="btn btn-danger btn-user btn-block">Register</button>       
        
    </form>
    
    
    </jsp:attribute>
</t:template_cust>
