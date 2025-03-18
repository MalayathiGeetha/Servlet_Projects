<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet" 
          integrity="sha384-oQ9zYRVGqfOHbgJq4bQt2Wq3PjY4WWFxg+3zHA4RoSIhGgtAi1tWXMQuC9rHy4jW" 
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
        <div>
            <a href="https://www.xadmin.net" class="navbar-brand">User Management Application</a>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
            </ul>
        </div>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="${user != null ? 'update' : 'insert'}" method="post">

                <h2 class="text-center">
                    <c:if test="${user != null}">Edit User</c:if>
                    <c:if test="${user == null}">Add New User</c:if>
                </h2>

                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>User Name</label>
                    <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required>
                </fieldset>

                <fieldset class="form-group">
                    <label>User Email</label>
                    <input type="email" value="<c:out value='${user.email}' />" class="form-control" name="email" required>
                </fieldset>

                <fieldset class="form-group">
                    <label>User Country</label>
                    <input type="text" value="<c:out value='${user.country}' />" class="form-control" name="country" required>
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-OERcA2IYZKjYjv7p+pfkHh7Yzqf3T4I+4Tqv8pZBfRVmPp8H/6b7I6DkI1Qw5Zl5x" 
        crossorigin="anonymous"></script>

</body>
</html>