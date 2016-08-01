<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo Tag forTokens</title>
</head>
<body>
	<c:set var="cursos" value="Java Básico; Java Intermediário; Java Avançado"></c:set>
	<table style="border: 1px; border-style: solid">
		<c:forTokens var="curso" items="${cursos}" delims=";">
			<tr>
				<td>
					<c:out value="${curso}"></c:out>
				</td>
			</tr>
		</c:forTokens>
	</table>
</body>
</html>