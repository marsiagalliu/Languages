<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<a href="/languages">Dashboard</a>
<h1>Name: <c:out value="${language.name}"></c:out></h1>
<h3>Creator: <c:out value="${language.creator}"></c:out></h3>
<h3>Version: <c:out value="${language.version}"></c:out></h3>
<a href="/languages/edit/${language.id}">Edit</a>
<form:form action="/languages/${language.id}" method="delete">
    <input type="submit" value="Delete" class="btn btn-link" />
</form:form>
</body>
</html>