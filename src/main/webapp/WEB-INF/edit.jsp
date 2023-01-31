<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ page isErrorPage="true" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <title></title>
</head>
<body>
<a href="/languages">Dashboard</a>
<form:form action="/languages/${language.id}" method="delete">
    <input type="button" class="btn btn-link">Delete</input>
</form:form>
<%--@elvariable id="language" type="java"--%>
<form:form action="/languages/${language.id}" method="put" modelAttribute="language">
    <p>
        <form:label path="name">Name</form:label>
        <form:errors path="name" class="text-danger"/>
        <form:input path="name"/>
    </p>
    <p>
        <form:label path="creator">Creator</form:label>
        <form:errors path="creator" class="text-danger"/>
        <form:input path="creator"/>
    </p>
    <p>
        <form:label path="version">Version</form:label>
        <form:errors path="version" class="text-danger"/>
        <form:input path="version"/>
    </p>
    <input type="submit" value="Submit"/>
</form:form>


</body>
</html>