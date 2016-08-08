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
	<%
		TipoProduto tipoProduto = null;
		if (request.getParameter("idTipoProduto") != null) {
			int idTipoProduto = Integer.parseInt(request.getParameter("idTipoProduto"));
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
			EntityManager em = factory.createEntityManager();
			tipoProduto = em.find(TipoProduto.class, idTipoProduto);
			request.getSession().setAttribute("TipoProduto", tipoProduto);
		} else {
			tipoProduto = (TipoProduto) request.getSession().getAttribute("TipoProduto");
		}
	%>
	<fieldset style="width: 500px">
		<form>
			<legend>Edição de tipo de produto</legend>
			<div>Nome do tipo de produto:</div>
			<div>
				<input type="text" name="nomeTipoProduto"
					value="<%=tipoProduto.getNome()%>" />
			</div>
			<div>
				<input type="submit" name="editar" value="Editar tipo de produto" />
				<input type="submit" name="excluir" value="Excluir tipo de produto" />
			</div>
		</form>
	</fieldset>
	<%
		if (request.getParameter("editar") != null) {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
			EntityManager em = factory.createEntityManager();
			tipoProduto = em.merge(tipoProduto);
			tipoProduto.setNome(request.getParameter("nomeTipoProduto").toString());
			em.getTransaction().begin();
			em.persist(tipoProduto);
			em.getTransaction().commit();
			em.close();
			request.getSession().removeAttribute("TipoProduto");
			response.sendRedirect("listaTiposProduto.jsp");
		} else if (request.getParameter("excluir") != null) {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
			EntityManager em = factory.createEntityManager();
			tipoProduto = em.merge(tipoProduto);
			em.getTransaction().begin();
			em.remove(tipoProduto);
			em.getTransaction().commit();
			em.close();
			request.getSession().removeAttribute("TipoProduto");
			response.sendRedirect("listaTiposProduto.jsp");
		}
	%>
</body>
</html>