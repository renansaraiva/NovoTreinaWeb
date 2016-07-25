package br.com.treinaweb.jee.models;

public class Disciplina {

	private int idDisciplina;
	private String codigoDisciplina;
	private String nomeDisciplina;
	private String tipoDisciplina;
	private String modalidadeDisciplina;
	private String codigoPreRequisito;
	private float valorDisciplina;
	private int periodoDisciplina;
	private float descontoDisciplina;

	public int getIdDisciplina() {
		return idDisciplina;
	}

	public void setIdDisciplina(int idDisciplina) {
		this.idDisciplina = idDisciplina;
	}

	public String getCodigoDisciplina() {
		return codigoDisciplina;
	}

	public void setCodigoDisciplina(String codigoDisciplina) {
		this.codigoDisciplina = codigoDisciplina;
	}

	public String getNomeDisciplina() {
		return nomeDisciplina;
	}

	public void setNomeDisciplina(String nomeDisciplina) {
		this.nomeDisciplina = nomeDisciplina;
	}

	public String getTipoDisciplina() {
		return tipoDisciplina;
	}

	public void setTipoDisciplina(String tipoDisciplina) {
		this.tipoDisciplina = tipoDisciplina;
	}

	public String getModalidadeDisciplina() {
		return modalidadeDisciplina;
	}

	public void setModalidadeDisciplina(String modalidadeDisciplina) {
		this.modalidadeDisciplina = modalidadeDisciplina;
	}

	public String getCodigoPreRequisito() {
		return codigoPreRequisito;
	}

	public void setCodigoPreRequisito(String codigoPreRequisito) {
		this.codigoPreRequisito = codigoPreRequisito;
	}

	public float getValorDisciplina() {
		return valorDisciplina;
	}

	public void setValorDisciplina(float valorDisciplina) {
		this.valorDisciplina = valorDisciplina;
	}

	public int getPeriodoDisciplina() {
		return periodoDisciplina;
	}

	public void setPeriodoDisciplina(int periodoDisciplina) {
		this.periodoDisciplina = periodoDisciplina;
	}

	public float getDescontoDisciplina() {
		return descontoDisciplina;
	}

	public void setDescontoDisciplina(float descontoDisciplina) {
		this.descontoDisciplina = descontoDisciplina;
	}

}
