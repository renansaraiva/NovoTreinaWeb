<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${param.idade >= 18 }">
		<c:out value="O usuário é maior de idade!"></c:out>
	</c:if>
	<c:if test="${param.idade < 18 }">
		<c:out value="O usuário é menor de idade!"></c:out>
	</c:if>
</body>
</html>