<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edição de Categoria</title>
</head>
<body>
	<form action="categorias" method="post">
		<input type="hidden" name="id" value='${sessionScope["categoria"].id }' />
		<input type="hidden" name="acao" value="editar" />
		<label>Nome da Nova Categoria</label>
		<input type="text" name="nome" value='${sessionScope["categoria"].nome }'/>
		<input type="submit" value="Editar Categoria">
	</form>
</body>
</html>