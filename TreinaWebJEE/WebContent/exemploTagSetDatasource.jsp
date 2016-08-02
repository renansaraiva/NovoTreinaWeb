<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo Tag setDatasource</title>
</head>
<body>
	<sql:setDataSource var="conn" dataSource="jdbc:mysql://localhost:3306/tw_java_intermediario,com.jdbc.mysql.Driver,root,root"/>
</body>
</html>