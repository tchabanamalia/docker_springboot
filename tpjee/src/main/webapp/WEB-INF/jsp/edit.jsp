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
        <t:template_cust_auth titre="Register">
        <jsp:attribute name="formulaire">
        
    <h3 style="text-align: center; ">Editing User ${user.getFirstName()}</h3>
        
    <form  method="POST" action="${pageContext.request.contextPath}/update">
        
        <div class="form-group row">
            <input type="text" hidden="true" name="user_id" value="${user.getId()}"/><br>

            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="firstName" value= "${user.getFirstName()}"   id="exampleFirstName" placeholder=" First Name">
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="lastName" value= "${user.getLastName()}" disabled id="exampleLastName" placeholder=" Last Name">
            </div>
            
        </div>
        
        <div class="form-group row">
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="username" value= "${user.getUsername()}" disabled id="exampleUsename" placeholder=" Username">
            </div>
            
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="telephone" value= "${user.getTelephone()}"  disabled id="exampleTelephone" placeholder=" Phone Number">
            </div>
            
        </div>
        
           
        <div class="form-group row">
            <div class="col-sm-6">
                <input type="email" class="form-control form-control-user" name="email" value= "${user.getEmail()}" disabled id="exampleInputEmail" placeholder="E-mail adress">
            </div>
            
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="password" class="form-control form-control-user" name="password" value= "${user.getPassword()}" disabled id="exampleInputPassword" placeholder="Password">
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
                    <c:if test="${user.getRoles().contains(role) == true}">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" checked="true" type="checkbox" name="roles" id="inlineCheckbox1" value="${role.getId()}">
                            <label class="form-check-label" for="inlineCheckbox1">${role.getRolename()}</label>
                        </div>
                    </c:if>
                    <c:if test="${user.getRoles().contains(role) != true}">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" name="roles" id="inlineCheckbox1" value="${role.getId()}">
                            <label class="form-check-label" for="inlineCheckbox1">${role.getRolename()}</label>
                        </div>
                    </c:if>
                </c:forEach>           
            </div>                      
        </div>
          
        <div class="form-group row">
        <div class="col-sm-6">
            <button type="submit" class="btn btn-danger btn-user btn-block">Update</button>
        </div>
        <div class="col-sm-6">
            <a href="${pageContext.request.contextPath}/users" class="btn btn-primary btn-user btn-block">Cancel</a>
        </div>
        </div>
        
    </form>
    </jsp:attribute>
    </t:template_cust_auth>
    </jsp:attribute>
</t:template_cust>
