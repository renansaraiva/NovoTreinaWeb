<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo tag import</title>
</head>
<body>
	<c:import url="menu.jsp">
		<c:param name="nomeUsuario" value="José"></c:param>
	</c:import>
	<h2>Essa é a minha página de teste para a TAG IMPORT</h2>
</body>
</html>