<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Languages</title>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Creator</th>
        <th scope="col">Version</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="language" items="${languages}">
        <tr>
            <td> <a href="languages/${language.id}"><c:out value="${language.name}"></c:out> </a> </td>
            <td> <c:out value="${language.creator}"></c:out> </td>
            <td> <c:out value="${language.version}"></c:out> </td>
            <td> <a href="/languages/edit/${language.id}">edit</a>
                <form:form action="/languages/${language.id}" method="delete">
                    <input type="submit" value="Delete" class="btn btn-link" />
                </form:form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--@elvariable id="language" type="javax"--%>
<form:form action="/languages" method="post" modelAttribute="language">
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