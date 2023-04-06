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
        <h3 style="text-align: center; ">List of Roles
          <a href="${pageContext.request.contextPath}/createRole" class="btn btn-outline-primary float-end">Add Role</a>
        </h3>
          </h4>
        </div>
    <div>
        <table id="role">
            <thead class="thead-dark">
                <tr>
                <th class="table-secondary">Role ID</th>
                <th class="table-secondary">Code</th>
                <th class="table-secondary">Name</th>
                <th scope="col" class="bg-warning">Actions</th>
                </tr>
            </thead>
            <tbody>
              <c:forEach items='${roles}' var='role'>
                <tr>
                    <td>${role.getId()}</td>
                    <td>${role.getCode()}</td> 
                    <td>${role.getRolename()}</td>
                    <td>
                    <div class="d-flex dropdown mr-1">
                        <form action="${pageContext.request.contextPath}/roles/edit" method="GET">
                        <div class="form-group mb-3">
                            <input type="number" hidden="true" name="id" value="${role.getId()}">
                            <button type="submit" class="btn btn-outline-primary">Update</button>
                        </div>
                        </form>
                        <form action="${pageContext.request.contextPath}/roles/delete" method="POST">
                        <div class="form-group mb-3"">
                            <input type="number" hidden="true" name="id" value="${role.getId()}">
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
