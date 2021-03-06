<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de Categorias</title>
</head>
<body>
	<h2>Listagem de Categorias</h2>
	<br />
	<a href="criarCategoria.jsp">Criar nova categoria...</a>
	<br />
	<table>
	<thead>
		<tr>
			<td>
				Id da Categoria
			</td>
			<td>
				Nome da Categoria
			</td>
			<td>
			</td>
		</tr>
	</thead>
		<c:forEach var="categoria" items='${sessionScope["categorias"]}'>
			<tr>
				<td>${categoria.id }</td>
				<td>${categoria.nome }</td>
				<td>
					<c:url value="categorias" var="linkEditar">
						<c:param name="acao" value="editar"></c:param>
						<c:param name="id" value="${categoria.id }"></c:param>
					</c:url>
					<a href="${linkEditar }">Editar</a> | 
					<c:url value="categorias" var="linkExcluir">
						<c:param name="acao" value="excluir"></c:param>
						<c:param name="id" value="${categoria.id }"></c:param>
					</c:url>
					<a href="${linkExcluir }">Excluir</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>