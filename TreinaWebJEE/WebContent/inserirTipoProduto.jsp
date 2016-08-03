<%@page import="br.com.treinaweb.jee.models.TipoProduto"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<fieldset style="width: 500px">
	<form>
		<legend>Inserção de novo tipo de produto</legend>
		<div>Nome do tipo de produto:</div>
		<div>
			<input type="text" name="nomeTipoProduto" />
		</div>
		<div>
			<input type="submit" name="incluir"
				value="Gravar novo tipo de produto" />
		</div>
	</form>
	</fieldset>
	<%
		if (request.getParameter("incluir") != null) {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
			EntityManager em = factory.createEntityManager();
			TipoProduto tipoProduto = new TipoProduto();
			tipoProduto.setNome(request.getParameter("nomeTipoProduto").toString());
			em.getTransaction().begin();
			em.persist(tipoProduto);
			em.getTransaction().commit();
			em.close();
			response.sendRedirect("listaTiposProduto.jsp");
		}
	%>
</body>
</html>