<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo Tag setDatasource</title>
</head>
<body>
	<sql:setDataSource var="conn" dataSource="jdbc:mysql://localhost:3306/tw_java_intermediario,com.mysql.jdbc.Driver,root,root"/>
	<sql:query var="linhas" dataSource="${conn}">
		SELECT usr_id, usr_nome, usr_login FROM usr_usuarios
	</sql:query>
	<table style="border: 1px; border-style: solid; font-family:sans-serif;">
		<tr style="font-weight: bold;">
			<td>ID</td>
			<td>Nome</td>
			<td>Login</td>
		</tr>
		<c:forEach var="usuario" items="${linhas.rows}">
			<tr>
				<td>${usuario.usr_id}</td>
				<td>${usuario.usr_nome}</td>
				<td>${usuario.usr_login}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>