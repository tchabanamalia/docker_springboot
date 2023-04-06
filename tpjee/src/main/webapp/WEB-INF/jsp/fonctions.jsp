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
        <style>
        #user{
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #user td,#user th{
            border: 1px solid #ddd;
            padding: 8px;
        }
        #user tr:nth-child(even){
            background-color: #e8c1f7;
        }
        #user th{
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #d6eaf8;
        }
    </style>
        <div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
        <h3 style="text-align: center; ">List of Features
          <a href="#" class="btn btn-outline-primary float-end">Add Feature</a>
        </h3>
          </h4>
        </div>
    <div>
        <table id="user">
            <thead class="thead-dark">
                <tr>
                <th class="table-secondary">Features ID</th>
                <th class="table-secondary">Code</th>
                <th class="table-secondary">libelle</th>
                <th class="table-secondary">Roles ID</th>
                <th scope="col" class="bg-warning">Actions</th>
                </tr>
            </thead>
            <tbody>
              <c:forEach items='${fonctions}' var='fonction'>
                <tr>
                    <td>${fonction.getId()}</td>
                    <td>${fonction.getCode()}</td>
                    <td>${fonction.getLibelle()}</td>
                    <td>${fonction.getRole()}</td>                    
                    <td>
                    <div class="d-flex dropdown mr-1">
                        <form action="#" method="GET">
                        <div class="form-group mb-3">
                            <input type="number" hidden="true" name="fonction_id" value="${fonction.getId()}">
                            <button type="submit" class="btn btn-outline-primary">Update</button>
                        </div>
                        </form>
                        <form action="#" method="">
                        <div class="form-group mb-3"">
                            <input type="number" hidden="true" name="fonction_id" value="${fonction.getId()}">
                            <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
                        </div>
                        </form>                   
                    </div>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
        </table>
    </div>
    </jsp:attribute>
</t:template_cust>
