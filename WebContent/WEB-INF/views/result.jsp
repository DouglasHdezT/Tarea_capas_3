<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>

	<h1><c:out value="Resultado de formulario utilizando JSTL"/></h1>
	
	<h2>Nombre:</h2>
	<c:choose>
		<c:when test="${empty student.name}">
			<p>El valor esta vacio.</p>
		</c:when>
		<c:otherwise>
			<p>${student.name}</p>
		</c:otherwise>
	</c:choose>
	
	<h2>Apellido:</h2>
	<c:choose>
		<c:when test="${empty student.lastName}">
			<p>El valor esta vacio.</p>
		</c:when>
		<c:otherwise>
			<p>${student.lastName}</p>
		</c:otherwise>
	</c:choose>
	
	<h2>Fecha de nacimiento:</h2>
	<c:choose>
		<c:when test="${empty student.cDate}">
			<p>El valor esta vacio.</p>
		</c:when>
		<c:otherwise>
			<p>${student.cDate}</p>
		</c:otherwise>
	</c:choose>
	
	<h2>Carrera:</h2>
	<c:choose>
		<c:when test="${empty student.career}">
			<p>El valor esta vacio.</p>
		</c:when>
		<c:otherwise>
			<p>${student.career}</p>
		</c:otherwise>
	</c:choose>
	
	<h2>Experiencia:</h2>
	<c:choose>
		<c:when test="${empty student.experience}">
			<p>El valor esta vacio.</p>
		</c:when>
		<c:otherwise>
			<p>${student.experience}</p>
		</c:otherwise>
	</c:choose>
	
	<h1><c:out value="Lista de estudiantes al azar"></c:out></h1>
	
	<table>
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>FNacimiento</th>
				<th>Carrera</th>
				<th>Experiencia</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var = "std" items = "${students}">
				<tr>
					<td>${std.name}</td>
					<td>${std.lastName}</td>
					<td>${std.cDate}</td>
					<td>${std.career}</td>
					<td>${std.experience}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>