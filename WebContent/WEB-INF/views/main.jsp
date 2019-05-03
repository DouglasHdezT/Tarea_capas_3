<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<meta charset="ISO-8859-1">
<title>TareaLabo3</title>
</head>
<body>
	<h1>${message}</h1>
	
	
	<h2>Formulario de inscripción</h2>
		
	<form:form action="${pageContext.request.contextPath}/actionForm" method="post" modelAttribute="student">
		
		<Label>Nombre: </Label>			<form:input type="text" name="name" path="name"/><br><br>
		<Label>Apellido: </Label>		<form:input type="text" name="lname" path="lastName"/><br><br>
		<Label>F.Nacimiento: </Label>	<form:input type="text" name="bdate" path = "cDate"/><br><br>
		<Label>Carrera: </Label>		<form:input type="text" name="career" path = "career"/><br><br>
		<Label>Experiencia: </Label>	<form:input type="text" name="exp" path = "experience"/><br><br>
		<input type="submit" value = "Enviar">
	
	</form:form>
	
</body>
</html>