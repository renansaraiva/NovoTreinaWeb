<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="br.com.treinaweb.jee.models.TipoProduto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="inserirTipoProduto.jsp">Criar novo tipo de produto</a>
	<%
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("TwPersistenceUnit");
		EntityManager em = factory.createEntityManager();
		Query q = em.createQuery("SELECT tp FROM TipoProduto tp");
		List<TipoProduto> tiposProduto = q.getResultList();
		out.print("<table>");
		out.print("	<thead>");
		out.print("		<tr>");
		out.print("			<td>");
		out.print("				Id");
		out.print("			</td>");
		out.print("			<td>");
		out.print("				Tipo de Produto");
		out.print("			</td>");
		out.print("		</tr>");
		out.print("	</thead>");
		out.print("	<tbody>");
		for (TipoProduto tp : tiposProduto) {
			out.print("		<tr>");
			out.print("			<td>");
			out.print("				" + tp.getId());
			out.print("			</td>");
			out.print("			<td>");
			out.print("				" + tp.getNome());
			out.print("			</td>");
			out.print("		</tr>");
		}
		out.print("	</tbody>");
		out.print("</table>");
	%>
</body>
</html>