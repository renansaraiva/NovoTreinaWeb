package br.com.treinaweb.jee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.treinaweb.jee.dao.utils.ConexaoUtils;
import br.com.treinaweb.jee.models.Disciplina;
import br.com.treinaweb.jee.models.Usuario;

public class DisciplinaDAO {

	public static Disciplina incluir (int idDisciplina, String codigoDisciplina, String nomeDisciplina, String tipoDisciplina, String modalidadeDisciplina, String codigoPreRequisito, float valorDisciplina, int periodoDisciplina, float descontoDisciplina)
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Connection conn = ConexaoUtils.criarConexao();

		Disciplina disciplina = null;
		PreparedStatement statement = conn
				.prepareStatement("INSERT INTO disciplinas" + "VALUES ?, ?, ?, ?, ?, ?, ?, ?");
		
		statement.setInt(1, idDisciplina);
		statement.setString(2, codigoDisciplina);
		statement.setString(3, nomeDisciplina);
		statement.setString(4, tipoDisciplina);
		statement.setString(5, modalidadeDisciplina);
		statement.setString(6, codigoPreRequisito);
		statement.setFloat(7, valorDisciplina);
		statement.setInt(8, periodoDisciplina);
		statement.setFloat(9, descontoDisciplina);
		
		ResultSet rs = statement.executeQuery();

//		private int idDisciplina;
//		private String codigoDisciplina;
//		private String nomeDisciplina;
//		private String tipoDisciplina;
//		private String modalidadeDisciplina;
//		private String codigoPreRequisito;
//		private float valorDisciplina;
//		private int periodoDisciplina;
//		private float descontoDisciplina;
		
		if (rs.next()) {
			disciplina = new Disciplina();
			disciplina.setIdDisciplina(rs.getInt("id"));
			disciplina.setCodigoDisciplina(rs.getString("codigo"));
			disciplina.setNomeDisciplina(rs.getString("nome"));
			disciplina.setTipoDisciplina(rs.getString("tipo"));
			
			
//			usuario = new Usuario();
//			usuario.setId(rs.getInt("usr_id"));
//			usuario.setNome(rs.getString("usr_nome"));
//			usuario.setNomeUsuario(rs.getString("usr_login"));
//			usuario.setSenha(rs.getString("usr_senha"));
		}

		ConexaoUtils.fecharConexao(conn);

		return usuario;
	}
}
