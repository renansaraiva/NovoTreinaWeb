<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="usuario" class="br.com.treinaweb.jee.models.Usuario"
		scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="usuario"/>
	<jsp:forward page='<%= request.getSession().getAttribute("forward").toString()%>'></jsp:forward>
</body>
</html>