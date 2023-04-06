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
        <h3 style="text-align: center; ">List of Users
          <a href="${pageContext.request.contextPath}/addUser" class="btn btn-outline-primary float-end">Add User</a>
        </h3>
          </h4>
        </div>
    <div>
        <table id="user">
            <thead class="thead-dark">
                <tr>
                <th class="table-secondary">User ID</th>
                <th class="table-secondary">Username</th>
                <th class="table-secondary">E-mail</th>
                <th class="table-secondary">First Name</th>
                <th class="table-secondary">Last Name</th>
                <th class="table-secondary">Phone Number</th>
                <th class="table-secondary">Activity</th>
                <th scope="col" class="bg-warning">Actions</th>
                </tr>
            </thead>
            <tbody>
              <c:forEach items='${listUsers}' var='user'>
                <tr>
                    <td>${user.getId()}</td>
                    <td>${user.getUsername()}</td>
                    <td>${user.getEmail()}</td>
                    <td>${user.getFirstName()}</td>
                    <td>${user.getLastName()}</td>
                    <td>${user.getTelephone()}</td>
                    <td>${user.getEnable()}</td>
                    <td>
                    <div class="d-flex dropdown mr-1">
                        <form action="${pageContext.request.contextPath}/show" method="GET">
                        <div class="form-group mb-3"">
                            <input type="number" hidden="true" name="user_id" value="${user.getId()}">
                            <button type="submit" class="btn btn-secondary btn-sm"><i class="fas fa-eye"></i></button>
                        </div>
                        </form>
                        <form action="${pageContext.request.contextPath}/edit" method="GET">
                        <div class="form-group mb-3">
                            <input type="number" hidden="true" name="user_id" value="${user.getId()}">
                            <button type="submit" class="btn btn-primary"><i class="fas fa-edit"></i></button>
                        </div>
                        </form>
                        <form action="${pageContext.request.contextPath}/delete" method="POST">
                        <div class="form-group mb-3"">
                            <input type="number" hidden="true" name="user_id" value="${user.getId()}">
                            <button type="submit" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></button>
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
