<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo Tag setDataSource II</title>
</head>
<body>
	<sql:setDataSource var="conn" dataSource="jdbc:mysql://localhost:3306/tw_java_intermediario,com.mysql.jdbc.Driver,root,root"/>
	<sql:update dataSource="${conn }" var="cont">
		INSERT INTO usr_usuarios (usr_nome, usr_login, usr_senha) VALUES (?, ?, ?)
		<sql:param value="${param.nomeUsuario }"></sql:param>
		<sql:param value="${param.email }"></sql:param>
		<sql:param value="${param.senha }"></sql:param>
	</sql:update>
	<c:if test="${cont > 0}">
		<c:redirect url="exemploTagSetDatasource.jsp"></c:redirect>
	</c:if>
	<c:if test="${cont <= 0 }">
		<c:out value="Houve um erro ao cadastrar o usuário!"></c:out>
	</c:if>
</body>
</html>