<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Curso de Java Intermedi�rio do TreinaWeb!</title>
</head>
<body>
	<!-- ABAIXO UMA DIRETIVA (INCLUDE) -->
	<%@ include file="menu.jsp"	 %>
	<!-- ABAIXO UMA DECLARA��O -->
	<%!
	// M�todo para pegar a data atual
	public String getDataAtual() {
		return new Date().toString();
	}
	%>
	
	<h1>Bem-vindo ao curso de Java Intermedi�rio do TreinaWeb!</h1>
	<%
		String mensagem = "";
		mensagem = "Estou testando o JSP.";
		out.println(mensagem);
	%>
	<!-- ABAIXO UMA EXPRESS�O -->
	<p>A data atual � <%= getDataAtual() %></p>
	
	<%
		String tabela = "";
		tabela = "<table>";
		for (int i = 0; i <=10; i++) {
			int resultado = 2 * i;
			tabela += "<tr>";
			tabela += "<td>";
			tabela += "2 x " + i + " = ";
			tabela += "</td>";
			tabela += "<td>";
			tabela += resultado;
			tabela += "</td>";
			tabela += "</tr>";
		}
		tabela += "</table>";
		out.println(tabela);
		
// 		int i = 0;
// 		while (i <= 10) {
// 			int resultado = 2 * i;
// 			tabela += "<tr>";
// 			tabela += "<td>";
// 			tabela += "2 x " + i + " = ";
// 			tabela += "</td>";
// 			tabela += "<td>";
// 			tabela += resultado;
// 			tabela += "</td>";
// 			tabela += "</tr>";
// 			i++;
// 		}
// 		tabela += "</table>";
// 		out.println(tabela);

// 		int i = 0;
// 		do {
// 			int resultado = 2 * i;
// 			tabela += "<tr>";
// 			tabela += "<td>";
// 			tabela += "2 x " + i + " = ";
// 			tabela += "</td>";
// 			tabela += "<td>";
// 			tabela += resultado;
// 			tabela += "</td>";
// 			tabela += "</tr>";
// 		} while (i != 11);
// 		tabela += "</table>";
// 		out.println(tabela);
	%>
	<br />
	<%
		Calendar data = Calendar.getInstance();
		int hora = data.get(Calendar.HOUR_OF_DAY);
		if (hora >= 6 && hora < 12) {
			out.println("Bom dia!!");
		} else if (hora >= 12 && hora < 18) {
			out.println("Boa tarde!!");
		} else if (hora >= 18 && hora < 24) {
			out.println("Boa noite!!");
		} else {
			out.println("Boa madrugada!!");
		}
		
// 		O 'MONTH' DO CALENDAR COME�A A CONTAR A PARTIR DO '0'
// 		POR ISSO COLOCAMOS O '+1'
		int mes = data.get(Calendar.MONTH) + 1;
		switch (mes) {
		case 1:
			out.println("� Janeiro!");
			break;
		case 2:
			out.println("� Fevereiro!");
			break;
		case 3:
			out.println("� Mar�o!");
			break;
		case 4:
			out.println("� Abril!");
			break;
		case 5:
			out.println("� Maio!");
			break;
		case 6:
			out.println("� Junho!");
			break;
		case 7:
			out.println("� Julho!");
			break;
		case 8:
			out.println("� Agosto!");
			break;
		case 9:
			out.println("� Setembro!");
			break;
		case 10:
			out.println("� Outubro!");
			break;
		case 11:
			out.println("� Novembro!");
			break;
		case 12:
			out.println("� Dezembro!");
			break;
		}
	%>
</body>
</html>