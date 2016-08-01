<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<fieldset style="width: 200px">
		<legend>
			<fmt:message key="recurso.saudacao" />
		</legend>
		<%
			request.getSession().setAttribute("forward", "login");
		%>
		<form action="forward.jsp" method="post">
			<div style="font-weight: bold">
				<fmt:message key="recurso.nomeUsuario" />
			</div>
			<div>
				<input type="text" name="nomeUsuario" />
			</div>
			<div style="font-weight: bold">
				<fmt:message key="recurso.senha" />
			</div>
			<div>
				<input type="password" name="senha" />
			</div>
			<div>
				<input type="submit" value="Login" />
			</div>
			<jsp:useBean id="data" class="java.util.Date"></jsp:useBean>
			<fmt:formatNumber value="123" type="currency"></fmt:formatNumber>
			<fmt:formatNumber value="123" pattern=".000"></fmt:formatNumber>
			<br />
			<fmt:formatDate value="${data }" dateStyle="long" timeStyle="long"/>
			<br />
			<fmt:formatDate value="${data }" pattern="dd/MM/yyyy hh:mm:ss"/>
		</form>
	</fieldset>
</body>
</html>