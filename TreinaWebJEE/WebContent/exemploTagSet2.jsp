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
	<c:out value="Antes do remove"></c:out>
	<c:set var="teste" value="${param.teste }"></c:set>
	<c:out value="${teste }"></c:out>
	<c:out value="Depois do remove"></c:out>
	<c:remove var="teste"/>
	<c:out value="${teste }"></c:out>
</body>
</html>