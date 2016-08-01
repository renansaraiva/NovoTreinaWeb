<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="mesesAno"
		value="Janeiro, Fevereiro, Março, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro"></c:set>
		<table style="border: 1px; border-style: solid;">
			<c:forEach var="mes" items="${mesesAno }">
				<tr style="border: 1px; border-style: solid;">
					<td>
						<c:out value="${mes }"></c:out>
					</td>
				</tr>
			</c:forEach>
		</table>
		<br />
		<c:forEach var="numero" begin="0" end="10" step="1">
			<c:out value="${numero }"></c:out>
		</c:forEach>
</body>
</html>