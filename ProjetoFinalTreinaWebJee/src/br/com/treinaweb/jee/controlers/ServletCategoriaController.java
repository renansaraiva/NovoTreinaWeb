package br.com.treinaweb.jee.controlers;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import br.com.treinaweb.jee.dao.CategoriaDAO;
import br.com.treinaweb.jee.models.Categoria;

/**
 * Servlet implementation class ServletCategoriaControler
 */
@WebServlet(
		name = "ServletCategoriaControler",
		urlPatterns = {"/categorias"}
		)
public class ServletCategoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCategoriaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("acao") != null && request.getParameter("acao").toString().equals("editar")) {
			int idCategoria = Integer.parseInt(request.getParameter("id"));
			Categoria categoriaASerEditada = CategoriaDAO.porId(idCategoria);
			request.getSession().setAttribute("categoria", categoriaASerEditada);
			response.sendRedirect("editarCategoria.jsp");
		} else {
			selecionarTodasCategorias(request, response);
		}
	}

	private void selecionarTodasCategorias(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		List<Categoria> categorias = CategoriaDAO.all();
		request.getSession().setAttribute("categorias", categorias);
		response.sendRedirect("listarCategorias.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("acao") != null && request.getParameter("acao").toString().equals("editar")) {
			doPut(request, response);
		} else {
			Categoria novaCategoria = new Categoria();
			try {
				BeanUtils.populate(novaCategoria, request.getParameterMap());
				CategoriaDAO.inserir(novaCategoria);
				doGet(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
				doGet(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Categoria categoriaASerEditada = new Categoria();
		try {
			BeanUtils.populate(categoriaASerEditada, request.getParameterMap());
			CategoriaDAO.atualizar(categoriaASerEditada);
			selecionarTodasCategorias(request, response);
		} catch (IllegalAccessException | InvocationTargetException e) {
			doGet(request, response);
		}
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
