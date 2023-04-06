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
        #role{
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #role td,#role th{
            border: 1px solid #ddd;
            padding: 8px;
        }
        #role tr:nth-child(even){
            background-color: #e8c1f7;
        }
        #role th{
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
        <h3 style="text-align: center; ">User ${user.getFirstName()} Roles
          <a href="${pageContext.request.contextPath}/back" class="btn btn-outline-primary float-end">Back</a>
        </h3>
          </h4>
        </div>
    <div>
        <input type="text" hidden="true" name="user_id" value="${role.getId()}"/><br>
        <table id="role">
            <thead class="thead-dark">
                <tr>
                <th class="table-secondary"> Role Name</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${user.getRoles()}</td>
                </tr>
            </tbody>
        </table>
    </div>
    </jsp:attribute>
</t:template_cust>
