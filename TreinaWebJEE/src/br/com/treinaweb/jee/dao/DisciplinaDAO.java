package br.com.treinaweb.jee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.treinaweb.jee.dao.utils.ConexaoUtils;
import br.com.treinaweb.jee.models.Disciplina;
import br.com.treinaweb.jee.models.Usuario;

public class DisciplinaDAO {

	public static int incluir(String codigoDisciplina, String nomeDisciplina, String tipoDisciplina,
			String modalidadeDisciplina, String codigoPreRequisito, float valorDisciplina, int periodoDisciplina,
			float descontoDisciplina)
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Connection conn = ConexaoUtils.criarConexao();

		int disciplina;
		PreparedStatement statement = conn.prepareStatement(
				"INSERT INTO disc_disciplina(disc_codigo, disc_nome, disc_tipo, disc_modalidade, disc_cod_pre_req, disc_valor, disc_periodo, disc_desconto)"
						+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)");

		statement.setString(1, codigoDisciplina);
		statement.setString(2, nomeDisciplina);
		statement.setString(3, tipoDisciplina);
		statement.setString(4, modalidadeDisciplina);
		statement.setString(5, codigoPreRequisito);
		statement.setFloat(6, valorDisciplina);
		statement.setInt(7, periodoDisciplina);
		statement.setFloat(8, descontoDisciplina);
		disciplina = statement.executeUpdate();

		ConexaoUtils.fecharConexao(conn);

		return disciplina;
	}

	public static Disciplina consultar(String codigo)
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Connection conn = ConexaoUtils.criarConexao();

		Disciplina disciplina = null;
		PreparedStatement statement = conn.prepareStatement("SELECT * FROM disc_disciplina WHERE disc_codigo=?");
		statement.setString(1, codigo);
		ResultSet rs = statement.executeQuery();

		if (rs.next()) {
			disciplina = new Disciplina();
			disciplina.setCodigoDisciplina(rs.getString("disc_codigo"));
			disciplina.setNomeDisciplina(rs.getString("disc_nome"));
			disciplina.setTipoDisciplina(rs.getString("disc_tipo"));
			disciplina.setModalidadeDisciplina(rs.getString("disc_modalidade"));
			disciplina.setCodigoPreRequisito(rs.getString("disc_cod_pre_req"));
			disciplina.setValorDisciplina(rs.getFloat("disc_valor"));
			disciplina.setPeriodoDisciplina(rs.getInt("disc_periodo"));
			disciplina.setDescontoDisciplina(rs.getFloat("disc_desconto"));
		}

		ConexaoUtils.fecharConexao(conn);

		return disciplina;
	}
}
