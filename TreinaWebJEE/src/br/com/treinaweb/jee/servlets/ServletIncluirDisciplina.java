package br.com.treinaweb.jee.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.treinaweb.jee.dao.DisciplinaDAO;
import br.com.treinaweb.jee.dao.UsuarioDAO;
import br.com.treinaweb.jee.models.Disciplina;
import br.com.treinaweb.jee.models.Usuario;

/**
 * Servlet implementation class ServletIncluirDisciplina
 */
@WebServlet(name = "ServletIncluirDisciplina", urlPatterns = { "/incluirDisciplina" })
public class ServletIncluirDisciplina extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext contexto;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletIncluirDisciplina() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		if (acao.equals("Incluir")) {
			String codigoDisciplina = request.getParameter("codigoDisciplina").toUpperCase();
			String nomeDisciplina = request.getParameter("nomeDisciplina").toUpperCase();
			String tipoDisciplina = request.getParameter("tipoDisciplina").toUpperCase();
			String modalidadeDisciplina = request.getParameter("modalidade".toUpperCase());
			String codigoPreRequisito = request.getParameter("codPreRequisito".toUpperCase());
			float valorDisciplina = Float.parseFloat(request.getParameter("valor").replace(",", ".").toUpperCase());
			int periodoDisciplina = Integer.parseInt(request.getParameter("temPeriodo").toUpperCase());
			float descontoDisciplina = Float.parseFloat(request.getParameter("desconto").replace(",", ".").toUpperCase());
			try {
				int disciplina = DisciplinaDAO.incluir(codigoDisciplina, nomeDisciplina, tipoDisciplina, modalidadeDisciplina, codigoPreRequisito, valorDisciplina, periodoDisciplina, descontoDisciplina);
				if (disciplina == 1) {
					response.sendRedirect("index.jsp");
				} else {
					response.sendRedirect("loginIncorreto.jsp");
				}
			} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
				response.sendRedirect("loginIncorreto.jsp");
			}
		} else if(acao.equals("Consultar")) {
			String codigoDisciplina = request.getParameter("codigoDisciplina").toUpperCase();
			try {
				Disciplina disciplina = DisciplinaDAO.consultar(codigoDisciplina);
				if (disciplina != null) {
					response.getWriter().write("<html>");
					response.getWriter().write("	<body>");
					response.getWriter().write("		<table border='1' style='font-family: Arial;' align='center'>");
					response.getWriter().write("			<tr>");
					response.getWriter().write("				<td colspan=8 align='center' style='font-weight: bold'>Disciplina</td>");
					response.getWriter().write("			</tr>");
					response.getWriter().write("			<tr style='font-weight: bold' align='center'>");
					response.getWriter().write("				<td>Código</td>");
					response.getWriter().write("				<td>Disciplina</td>");
					response.getWriter().write("				<td>Tipo</td>");
					response.getWriter().write("				<td>Modalidade</td>");
					response.getWriter().write("				<td>Pré Requisito</td>");
					response.getWriter().write("				<td>Valor</td>");
					response.getWriter().write("				<td>Período</td>");
					response.getWriter().write("				<td>Desconto</td>");
					response.getWriter().write("			</tr>");
					response.getWriter().write("			<tr>");
					response.getWriter().write("				<td>" + disciplina.getCodigoDisciplina() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getNomeDisciplina() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getTipoDisciplina() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getModalidadeDisciplina() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getCodigoPreRequisito() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getValorDisciplina() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getPeriodoDisciplina() + "</td>");
					response.getWriter().write("				<td>" + disciplina.getDescontoDisciplina() + "</td>");
					response.getWriter().write("			</tr>");
					response.getWriter().write("		</table>");
					response.getWriter().write("		<div style='font-family: Arial;' align='center'>");
					response.getWriter().write("			<a href='index.jsp'>Home</a> | ");
					response.getWriter().write("			<a href='IncluirDisciplina.jsp'>Disciplina</a>");
					response.getWriter().write("		</div>");
					response.getWriter().write("	</body>");
					response.getWriter().write("</html>");
				} else {
					response.sendRedirect("loginIncorreto.jsp");
				}
			} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
				response.sendRedirect("loginIncorreto.jsp");
			}
		}
	}

}
