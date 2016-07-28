<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:plugin code="TesteApplet.class" codebase="." type="applet">
		<jsp:params>
			<jsp:param value="Olá mundo" name="mensagem"/>
		</jsp:params>
		<jsp:fallback>
			Não foi possível carregar o Applet...
		</jsp:fallback>
	</jsp:plugin>
</body>
</html>