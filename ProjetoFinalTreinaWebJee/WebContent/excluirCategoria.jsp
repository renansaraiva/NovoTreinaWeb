<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exclusão de Categoria</title>
</head>
<body>
	<form action="categorias" method="post">
		<input type="hidden" name="id" value='${sessionScope["categoria"].id }' />
		<input type="hidden" name="acao" value="excluir" />
		<input type="hidden" name="nome" value='${sessionScope["categoria"].nome }' />
		<p>Tem certeza de que deseja excluir <c:out value='${sessionScope["categoria"].nome }'></c:out>?</p>
		<input type="submit" value="Excluir Categoria">
	</form>
</body>
</html>